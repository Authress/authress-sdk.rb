require 'time'
require 'json'
require 'logger'
require 'uri'

module AuthressSdk
  class ServiceClientTokenProvider    
    def initialize(client_access_key, custom_domain_url = nil)
      @custom_domain_url = custom_domain_url
      @client_access_key = client_access_key
      @cachedKeyData = nil
    end

    def sanitizeUrl(url)
      if url.nil?
        return nil
      end

      if (url.match(/^http/))
        return url
      end
    
      if (url.match(/^localhost/))
        return "http://#{url}"
      end
    
      return "https://#{url}"
    end

    def get_issuer(unsanitizedAuthressCustomDomain, decodedAccessKey)
      authressCustomDomain = sanitizeUrl(@custom_domain_url).gsub(/\/+$/, '')
      return "#{authressCustomDomain}/v1/clients/#{decodedAccessKey.clientId}"
    end

    def get_token()
      if @cachedKeyData && @cachedKeyData.token && Time.now().to_i() + 3600 < @cachedKeyData.expiresAtInSeconds
        return @cachedKeyData.token
      end

      accountId = @client_access_key.split('.')[2];
      decodedAccessKeyHash = {
        clientId: @client_access_key.split('.')[0],
        keyId: @client_access_key.split('.')[1],
        audience: "#{accountId}.accounts.authress.io",
        privateKey: @client_access_key.split('.')[3]
      }
      decodedAccessKey = Struct.new(*decodedAccessKeyHash.keys).new(*decodedAccessKeyHash.values)

      now = Time.now().to_i()
      jwt = {
        aud: decodedAccessKey.audience,
        iss: get_issuer(@custom_domain_url || "#{accountId}.api.authress.io", decodedAccessKey),
        sub: decodedAccessKey.clientId,
        client_id: decodedAccessKey.clientId,
        iat: now,
        # valid for 24 hours
        exp: now + 60 * 60 * 24,
        scope: 'openid'
      }

      if decodedAccessKey.privateKey.nil?
        raise Exception("Invalid Service Client Access Key")
      end

      priv_pem = <<~EOF
      -----BEGIN PRIVATE KEY-----
      #{decodedAccessKey.privateKey}
      -----END PRIVATE KEY-----
      EOF

      privateKey = OpenSSL::PKey.read(priv_pem)
      result = Base64.encode64(privateKey.raw_private_key).tr('+/', '-_').delete('=')
      private_key = RbNaCl::Signatures::Ed25519::SigningKey.new(Base64.decode64(result))
      
      token = JWT.encode(jwt, private_key, 'ED25519', { typ: 'at+jwt', alg: 'EdDSA', kid: decodedAccessKey.keyId })
      @cachedKeyData = { token: token, expires: jwt['exp'] }
      return token
    end
  end
end

module JWTExtensions
  # Fixed because https://github.com/jwt/ruby-jwt/issues/334 is still broken
  def encode_header
    # https://github.com/jwt/ruby-jwt/blob/main/lib/jwt/encode.rb#L17
    @headers["alg"] = @headers["alg"].downcase == "ed25519" ? "EdDSA" : @headers["alg"]
    super
  end
end

module JWT
  class Encode
    prepend JWTExtensions
  end
end
