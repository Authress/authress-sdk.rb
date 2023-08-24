# frozen_string_literal: true

require 'json'
require 'oauth2'
require 'omniauth-oauth2'
require_relative './token_validator'
require_relative './authress_client.rb'

include OAuth2

module OmniAuth
  module Authress
    VERSION = '1.1.0'
  end

  module Strategies
    class Authress < OmniAuth::Strategies::OAuth2
      attr_accessor :authress_client
      attr_accessor :token_response

      def initialize(*args)
        super
        @authress_client = AuthressSdk::AuthressClient.default
      end

      option :name, 'authress'
      option :pkce, true
      option :application_id, nil

      # Setup client URLs used during authentication and then call the default
      def client
        options.client_id = options.application_id
        options.client_options.headers = {
          'User-Agent' => "Authress SDK; Ruby; #{Gem.loaded_specs["authress-sdk"].version.to_s};"
        }
        options.client_options.auth_scheme = :request_body
        options.client_options.site = @authress_client.custom_domain_url
        options.client_options.authorize_url = @authress_client.custom_domain_url
        options.client_options.token_url = @authress_client.custom_domain_url + '/api/authentication/-/tokens'
        # https://github.com/omniauth/omniauth-oauth2/blob/master/lib/omniauth/strategies/oauth2.rb#L47
        super
      end

      # Use the "sub" key of the userinfo returned
      # as the uid (globally unique string identifier).
      uid { user_info['sub'] }

      # Build the API credentials hash with returned auth data.
      credentials do
        if @token_response == nil
          return nil
        end

        hash = {
          'token' => @token_response['access_token'],
          'id_token' => @token_response['id_token'],
          'token_type' => @token_response['token_type'] || 'Bearer',
          'expires' => true,
          'expires_at' => @token_response['expires_at']
        }

        # Retrieve and remove authorization params from the session
        session_authorize_params = session['authorize_params'] || {}
        session.delete('authorize_params')

        hash
      end

      # Store all raw information for use in the session.
      extra do
        {
          raw_info: user_info
        }
      end

      # Build a hash of information about the user
      # with keys taken from the Auth Hash Schema.
      info do
        {
          name: user_info['name'] || user_info['sub'],
          nickname: user_info['nickname'],
          email: user_info['email'],
          image: user_info['picture']
        }
      end

      # Define the parameters used for the /authorize endpoint
      def authorize_params
        params = super
        %w[responseLocation flowType].each do |key|
          params[key] = request.params[key] if request.params.key?(key)
        end

        # Generate nonce
        params[:nonce] = SecureRandom.hex
        # Generate leeway if none exists
        params[:leeway] = 60 unless params[:leeway]

        params[:responseLocation] = 'query'
        params[:flowType] = 'code'

        # Store authorize params in the session for token verification
        session['authorize_params'] = params.to_hash

        params
      end

      # Declarative override for the request phase of authentication
      def request_phase
        if no_application_id?
          # Do we have a application_id for this Application?
          fail!(:missing_application_id)
        elsif no_domain?
          # Do we have a domain for this Application?
          fail!(:missing_domain)
        else
          # All checks pass, run the Oauth2 request_phase method.
          super
        end
      end

      # https://github.com/omniauth/omniauth/blob/master/lib/omniauth/strategy.rb#L416
      def callback_phase
        begin
          error = request.params["error_reason"] || request.params["error"]
          if !options.provider_ignores_state && (request.params["state"].to_s.empty? || request.params["state"] != session.delete("omniauth.state"))
            fail!(:csrf_detected, CallbackError.new(:csrf_detected, "CSRF detected"))
          elsif error
            fail!(error, CallbackError.new(request.params["error"], request.params["error_description"] || request.params["error_reason"], request.params["error_uri"]))
          else
            params = {
              'grant_type' => 'authorization_code',
              'code' => request.params["code"],
              'client_id' => options.application_id,
              'redirect_uri' => callback_url
            # https://github.com/omniauth/omniauth-oauth2/blob/master/lib/omniauth/strategies/oauth2.rb#L80
            }.merge(token_params.to_hash(:symbolize_keys => true))

            params_dup = params.dup
            params.each_key do |key|
              params_dup[key.to_s] = params_dup.delete(key) if key.is_a?(Symbol)
            end

            @token_response = complete_token_request(params_dup)      
      
            env['omniauth.auth'] = auth_hash
            call_app!
          end
        rescue AuthressSdk::TokenValidationError => e
          fail!(:token_validation_error, e)
        rescue ::OAuth2::Error, CallbackError => e
          fail!(:invalid_credentials, e)
        rescue ::Timeout::Error, ::Errno::ETIMEDOUT => e
          fail!(:timeout, e)
        rescue ::SocketError => e
          fail!(:failed_to_connect, e)
        end
      end

      def complete_token_request(params, &block)
        request_opts = {
          raise_errors: options[:raise_errors]
        }
        request_opts[:body] = params.to_json
        request_opts[:headers] = options.client_options.headers
        response = client.request(:post, options.client_options.token_url, request_opts, &block)
        @access_token = OAuth2::AccessToken.from_hash(client, JSON.parse(response.body)).tap do |access_token|
          access_token.response = response if access_token.respond_to?(:response=)
        end
        return JSON.parse(response.body)
      end

      # Parse the raw user info.
      def user_info
        if @token_response && @token_response['id_token']
          jwt_payload = @token_response['id_token'] && @token_response['id_token'].to_s && @token_response['id_token'].to_s.split('.')[1]
          if jwt_payload
            jwt_payload += '=' * (4 - jwt_payload.length.modulo(4))
            user_identity = JSON.parse(Base64.decode64(jwt_payload.tr('-_','+/')))
            return user_identity
          end
        end

        return nil
      end

      # Check if the options include a application_id
      def no_application_id?
        ['', nil].include?(options.application_id)
      end

      # Check if the options include a domain
      def no_domain?
        ['', nil].include?(@authress_client.custom_domain_url)
      end
    end
  end
end

OmniAuth.config.add_camelization 'authress', 'Authress'