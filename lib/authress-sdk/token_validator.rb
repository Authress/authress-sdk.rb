require 'base64'
require 'uri'
require 'json'
require 'jwt'

module AuthressSdk
  class TokenVerifier
   
    attr_accessor :key_map

    def initialize()
      @key_map = {}
    end
    
    def verify_token(authressCustomDomain, token)
      sanitized_domain = authressCustomDomain.gsub(/https?:\/\//, '')
      completeIssuerUrl = "https://#{sanitized_domain}"
      if token.nil?
        raise TokenVerificationError.new("Unauthorized: No token specified")
      end

      begin
        authenticationToken = token
        unverifiedPayload = JWT.decode(authenticationToken, nil, false)
      rescue JWT::DecodeError
        begin
          serviceClient = AuthressSdk::ServiceClientTokenProvider.new(token, completeIssuerUrl)
          authenticationToken = serviceClient.get_token()
          unverifiedPayload = JWT.decode(authenticationToken, nil, false)
        rescue Exception => e
          raise TokenVerificationError.new("Unauthorized: Invalid Token format: #{e}")
        end
      end

      if unverifiedPayload.nil?
        raise TokenVerificationError.new("Unauthorized: Invalid Token or Token not found")
      end

      kid = unverifiedPayload[1]["kid"]
      if kid.nil?
        raise TokenVerificationError.new("Unauthorized: No KID found in token")
      end

      issuer = unverifiedPayload[0]["iss"]
      if issuer.nil?
        raise TokenVerificationError.new("Unauthorized: No Issuer in token")
      end

      canonicalIssuer = get_canonical_issuer(issuer)
      if canonicalIssuer.nil?
        raise TokenVerificationError.new("Unauthorized: Issuer is not in canonical form")
      end

      if (URI(issuer).host != URI(completeIssuerUrl).host)
        raise TokenVerificationError.new("Unauthorized: Issuer does not match")
      end

      # Handle service client checking
      clientIdMatcher = /\A\/v\d\/clients\/([^\/]+)\/?\z/.match(canonicalIssuer[:path])
      if clientIdMatcher && clientIdMatcher[1] != unverifiedPayload[0]['sub']
        raise TokenVerificationError.new("Unauthorized: Service ID does not match token sub claim")
      end

      jwkObject = get_public_key("#{canonicalIssuer[:url]}/.well-known/openid-configuration/jwks", kid)
      jwk = jwkObject.verify_key()

      begin
        # https://github.com/jwt/ruby-jwt?tab=readme-ov-file
        decodedResult = JWT.decode(authenticationToken, jwk, true, { algorithm: 'EdDSA' })
        return decodedResult[0]
      rescue Exception => e
        raise TokenVerificationError.new("Unauthorized: Token is invalid - #{e}")
      end
    end

    # The service client check and the JWKS fetch must read the same issuer value. Any issuer that a runtime could normalise differently is rejected.
    def get_canonical_issuer(issuer)
      issuerMatch = issuer =~ /[?#\\]/ ? nil : /\A([a-z][a-z0-9+.-]*:\/\/[^\/@]+)(\/.*)?\z/i.match(issuer)
      return nil if issuerMatch.nil?

      path = (issuerMatch[2] || '').delete_suffix('/')
      segments = path.empty? ? [] : path[1..].split('/', -1)
      return nil if segments.any? { |segment| segment.empty? || segment == '.' || segment == '..' || segment =~ /%(2e|2f|5c)/i }

      { url: "#{issuerMatch[1]}#{path}", path: path }
    end

    def get_public_key(jwkKeyListUrl, kid)
      hashKey = "#{jwkKeyListUrl}|#{kid}"

      if @key_map[hashKey].nil?
        @key_map[hashKey] = get_key_uncached(jwkKeyListUrl, kid)
      end

      begin
        key = @key_map[hashKey]
        return key
      rescue
        @key_map[hashKey] = get_key_uncached(jwkKeyListUrl, kid)
        return @key_map[hashKey]
      end
    end

    def get_key_uncached(jwkKeyListUrl, kid)
      response = Typhoeus::Request.new(jwkKeyListUrl.to_s, { :method => :get, :ssl_verifypeer => true, :ssl_verifyhost => 2, :verbose => false }).run
      unless response.success?
        raise TokenVerificationError.new("Unauthorized: Failed to fetch jwks from: #{jwkKeyListUrl}")
      end

      jwks = JWT::JWK::Set.new(JSON.parse(response.body))

      key = jwks.find{|key| key[:kid] == kid }
      if key
        return key
      end

      raise TokenVerificationError.new("Unauthorized: KID was not found in the list of valid JWKs: #{kid}")
    end

    class TokenVerificationError < StandardError
      attr_reader :error_reason
      def initialize(msg)
        @error_reason = msg
        super(msg)
      end
    end

  end
end