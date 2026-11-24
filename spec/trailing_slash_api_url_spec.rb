require 'spec_helper'

customDomain = 'authress.token-validation.test'
access_key = "CLIENT.KEY.ACCOUNT.MC4CAQAwBQYDK2VwBCIEIDVjjrIVCH3dVRq4ixRzBwjVHSoB2QzZ2iJuHq1Wshwp"

def issuer_of(token)
  JSON.parse(Base64.decode64(token.split(".")[1].tr('-_', '+/')))["iss"]
end

describe "trailing slashes on the api url" do
  ["https://#{customDomain}/", "https://#{customDomain}//", "#{customDomain}//"].each do |api_url|
    it "service client token issuer has no empty path segments for #{api_url}" do
      token = AuthressSdk::ServiceClientTokenProvider.new(access_key, api_url).get_token()
      expect(issuer_of(token)).to eq("https://#{customDomain}/v1/clients/CLIENT")
    end

    it "client custom_domain_url has no trailing slash for #{api_url}" do
      client = AuthressSdk::AuthressClient.new
      client.base_url = api_url
      expect(client.custom_domain_url).to eq("https://#{customDomain}")
    end

    it "verifier accepts an access key with the api url #{api_url}" do
      verifier = AuthressSdk::TokenVerifier.new()
      publicKey = { "alg": "EdDSA", "kty": "OKP", "crv": "Ed25519", "x": "JxtSC5tZZJuaW7Aeu5Kh_3tgCpPZRkHaaFyTj5sQ3KU" }
      allow(verifier).to receive(:get_key_uncached) { JWT::JWK.new(publicKey) }

      identity = verifier.verify_token(api_url, access_key)

      expect(identity["iss"]).to eq("https://#{customDomain}/v1/clients/CLIENT")
    end
  end

  it "service client token provider falls back to the account api domain when no domain is given" do
    token = AuthressSdk::ServiceClientTokenProvider.new(access_key).get_token()
    expect(issuer_of(token)).to eq("https://ACCOUNT.api.authress.io/v1/clients/CLIENT")
  end
end
