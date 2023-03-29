=begin

=end

module AuthressSdk
  class LoginApi
    attr_accessor :application_id
    attr_accessor :authress_client

    def initialize(application_id)
      @application_id = application_id
      @authress_client = AuthressClient.default
    end

    # Authenticate the user 
    # @param authenticationRequest
    # @return string, the redirect url to redirect the user to
    def authenticate(authenticationRequest)
      code_verifier = SecureRandom.urlsafe_base64(32)
      code_challenge = Base64.urlsafe_encode64(OpenSSL::Digest::SHA256.digest(code_verifier)).gsub(/=+$/, '')

      body = {
        'redirectUrl' => authenticationRequest[:redirect_url],
        'codeChallengeMethod' => 'S256',
        'codeChallenge' => code_challenge,
        'connectionId' => authenticationRequest[:connection_id],
        'tenantLookupIdentifier': authenticationRequest[:tenant_lookup_identifier],
        'applicationId' => @application_id,
        # 'responseLocation' => 'cookie',
        # 'flowType' => 'code'
      }

      header_params = {}
      header_params['Origin'] = @authress_client.base_url
      post_body = @authress_client.object_to_http_body(body) 
      data, status_code, headers = @authress_client.call_api(:POST, '/api/authentication',
        :header_params => header_params,
        :body => post_body)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: LoginApi#authenticate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return headers[:location], code_verifier
    end
  end
end
