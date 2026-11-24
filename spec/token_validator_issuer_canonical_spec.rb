require "jwt"
require "ed25519"
require "base64"
require "spec_helper"

customDomain = 'authress.token-validation.test'
clientId = 'client_abc'

describe AuthressSdk::TokenVerifier do
  describe "verify_token() issuer canonical form" do
    signing_key = Ed25519::SigningKey.generate
    public_jwk = {
      "alg": "EdDSA", "kty": "OKP", "crv": "Ed25519",
      "x": Base64.urlsafe_encode64(signing_key.verify_key.to_bytes, padding: false)
    }

    def verify_outcome(signing_key, public_jwk, customDomain, issuer_path, sub, userinfo = '')
      issuer = "https://#{userinfo}#{customDomain}#{issuer_path}"
      token = JWT.encode({ 'iss' => issuer, 'sub' => sub, 'exp' => Time.now.to_i + 3600 }, signing_key, 'EdDSA', { kid: 'kid-case' })

      verifier = AuthressSdk::TokenVerifier.new()
      allow(verifier).to receive(:get_key_uncached) { JWT::JWK.new(public_jwk) }
      begin
        verifier.verify_token("https://#{customDomain}", token)
        return :accepted, verifier
      rescue StandardError
        return :rejected, verifier
      end
    end

    [
      ['service client token with its own sub', "/v1/clients/#{clientId}", clientId, :accepted],
      ['service client token claiming another sub', "/v1/clients/#{clientId}", 'user_alice', :rejected],
      ['issuer with no path', '', 'user_alice', :accepted],
      ['issuer with an arbitrary non-client path', '/tenant/custom', 'user_alice', :accepted],
      ['service client with trailing slash and its own sub', "/v1/clients/#{clientId}/", clientId, :accepted],
      ['service client with trailing slash claiming another sub', "/v1/clients/#{clientId}/", 'user_alice', :rejected],
      ['trailing dot segment hides the client id', "/v1/clients/#{clientId}/.", 'user_alice', :rejected],
      ['dot segment inside the path', "/v1/./clients/#{clientId}", clientId, :rejected],
      ['parent segment redirects the client id after the sub match', "/v1/clients/user_alice/../#{clientId}", 'user_alice', :rejected],
      ['parent segment moves the path out of the clients prefix', "/v1/x/../clients/#{clientId}", 'user_alice', :rejected],
      ['percent-encoded dot segment', "/v1/clients/#{clientId}/%2e", 'user_alice', :rejected],
      ['backslash treated as a path separator', "/v1/clients/#{clientId}\\.", 'user_alice', :rejected],
      ['query appended to the issuer swallows the jwks path', '/v1/clients/user_alice?', 'user_alice', :rejected],
      ['fragment appended to the issuer swallows the jwks path', "/v1/clients/#{clientId}#", clientId, :rejected],
      ['issuer with a deep non-client path', '/a/b/c/d', 'user_alice', :accepted],
      ['issuer with a version-like dotted segment', '/v1.0/tenants/acme', 'user_alice', :accepted],
      ['issuer with deep path and trailing slash', '/a/b/c/', 'user_alice', :accepted],
      ['client path nested below another prefix is not a service client issuer', "/tenant/v1/clients/#{clientId}", 'user_alice', :accepted],
      ['client path with extra segment is not a service client issuer', "/v1/clients/#{clientId}/extra", 'user_alice', :accepted],
      ['empty segment in a non-client path', '/tenant//custom', 'user_alice', :rejected],
      ['double trailing slash', "/v1/clients/#{clientId}//", 'user_alice', :rejected],
      ['trailing newline', "/v1/clients/#{clientId}\n", 'user_alice', :rejected],
      ['percent-encoded slash in a segment', '/tenant/a%2Fb', 'user_alice', :rejected],
      ['percent-encoded backslash in a segment', '/tenant/a%5cb', 'user_alice', :rejected],
      ['parent segment in a non-client path', '/a/b/../c', 'user_alice', :rejected]
    ].each do |label, issuer_path, sub, expected|
      it label do
        outcome, verifier = verify_outcome(signing_key, public_jwk, customDomain, issuer_path, sub)
        expect(outcome).to eq(expected)
        expect(verifier).not_to have_received(:get_key_uncached) if expected == :rejected
      end
    end

    it 'rejects an issuer with userinfo without fetching keys' do
      outcome, verifier = verify_outcome(signing_key, public_jwk, customDomain, "/v1/clients/#{clientId}", clientId, 'user@')
      expect(outcome).to eq(:rejected)
      expect(verifier).not_to have_received(:get_key_uncached)
    end

    it 'requests the jwks from the client path for a trailing slash issuer with its own sub' do
      outcome, verifier = verify_outcome(signing_key, public_jwk, customDomain, "/v1/clients/#{clientId}/", clientId)
      expect(outcome).to eq(:accepted)
      expect(verifier).to have_received(:get_key_uncached).with("https://#{customDomain}/v1/clients/#{clientId}/.well-known/openid-configuration/jwks", 'kid-case')
    end
  end
end
