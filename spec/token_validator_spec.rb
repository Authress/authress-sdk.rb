require "jwt"
require "spec_helper"

customDomain = 'authress.token-validation.test'

describe AuthressSdk::TokenVerifier do
  describe "verify_token()" do
    it "Verifies a service client access key used token" do
      access_key = "CLIENT.KEY.ACCOUNT.MC4CAQAwBQYDK2VwBCIEIDVjjrIVCH3dVRq4ixRzBwjVHSoB2QzZ2iJuHq1Wshwp"
      publicKey = { "alg": "EdDSA", "kty": "OKP", "crv": "Ed25519", "x": "JxtSC5tZZJuaW7Aeu5Kh_3tgCpPZRkHaaFyTj5sQ3KU" }

      token_verifier_instance = AuthressSdk::TokenVerifier.new()

      allow(token_verifier_instance).to receive(:get_key_uncached) { jwks = JWT::JWK.new(publicKey) }

      identity = token_verifier_instance.verify_token("https://#{customDomain}", access_key)

      expect(token_verifier_instance).to have_received(:get_key_uncached).with("https://#{customDomain}/v1/clients/CLIENT/.well-known/openid-configuration/jwks", "KEY")
      expect(identity["iss"]).to eq("https://#{customDomain}/v1/clients/CLIENT")
      expect(identity["sub"]).to eq("CLIENT")
      expect(identity["client_id"]).to eq("CLIENT")
    end

    # Skip test because we don't know how to mock the datetime, so this hits a time expiry
    xit "Verifies a valid token" do
      access_key = "eyJhbGciOiJFZERTQSIsImtpZCI6IktFWSIsInR5cCI6ImF0K2p3dCJ9.eyJhdWQiOiJBQ0NPVU5ULmFjY291bnRzLmF1dGhyZXNzLmlvIiwiaXNzIjoiaHR0cHM6Ly9hdXRocmVzcy50b2tlbi12YWxpZGF0aW9uLnRlc3QvdjEvY2xpZW50cy9DTElFTlQiLCJzdWIiOiJDTElFTlQiLCJjbGllbnRfaWQiOiJDTElFTlQiLCJpYXQiOjE3MTQ1ODA4NDQsImV4cCI6MTcxNDY2NzI0NCwic2NvcGUiOiJvcGVuaWQifQ.Rm8VvEO9dKn9RTEVkF_qH7NernVKnKwYu9GAnxUBjiweXubWchIAW8HymD-RAdXjzPYU9Pvq5p0f_1Pi4n2bBw"
      publicKey = { "alg": "EdDSA", "kty": "OKP", "crv": "Ed25519", "x": "JxtSC5tZZJuaW7Aeu5Kh_3tgCpPZRkHaaFyTj5sQ3KU" }

      token_verifier_instance = AuthressSdk::TokenVerifier.new()

      allow(token_verifier_instance).to receive(:get_key_uncached) { jwks = JWT::JWK.new(publicKey) }

      # Eventually this will fail and we will need to use the mock to set the global clock for the test back to 2024-05-01
      identity = token_verifier_instance.verify_token("https://#{customDomain}", access_key)

      expect(token_verifier_instance).to have_received(:get_key_uncached).with("https://#{customDomain}/v1/clients/CLIENT/.well-known/openid-configuration/jwks", "KEY")
      expect(identity["iss"]).to eq("https://#{customDomain}/v1/clients/CLIENT")
      expect(identity["sub"]).to eq("CLIENT")
      expect(identity["client_id"]).to eq("CLIENT")
    end
  end
end
