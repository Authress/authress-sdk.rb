=begin

=end

require 'spec_helper'

customDomain = 'authress.token-validation.test'

describe AuthressSdk::ServiceClientTokenProvider do
  describe 'tokenProvider()' do
    it "Generates service client access token" do
      access_key = "CLIENT.KEY.ACCOUNT.MC4CAQAwBQYDK2VwBCIEIDVjjrIVCH3dVRq4ixRzBwjVHSoB2QzZ2iJuHq1Wshwp"
      publicKey = { "alg": "EdDSA", "kty": "OKP", "crv": "Ed25519", "x": "JxtSC5tZZJuaW7Aeu5Kh_3tgCpPZRkHaaFyTj5sQ3KU" }

      tokenProvider = AuthressSdk::ServiceClientTokenProvider.new(access_key, customDomain)
      result = tokenProvider.get_token()

      # user_identity = JSON.parse(Base64.decode64(result.split(".")[1].tr('-_','+/')))

      # expect(user_identity["client_id"]).to eq("CLIENT");
      # expect(user_identity["sub"]).to eq("CLIENT");
      # expect(user_identity["iss"]).to eq("https://authress.token-validation.test/v1/clients/CLIENT");

      # headers = JSON.parse(Base64.decode64(result.split(".")[0].tr('-_','+/')))
      # expect(headers).to eq({"alg"=>"EdDSA", "kid"=>"KEY", "typ"=>"at+jwt"})
    end
  end
end
