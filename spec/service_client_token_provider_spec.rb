=begin

=end

require 'spec_helper'

describe AuthressSdk::ServiceClientTokenProvider do
  describe 'tokenProvider()' do
    it "Generates service client access token" do
      access_token = 'test-access-token'
      tokenProvider = AuthressSdk::ServiceClientTokenProvider.new(access_token)
      result = tokenProvider.get_token()
      expect(result).to eq(access_token);
    end
  end
end
