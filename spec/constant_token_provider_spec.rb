=begin

=end

require 'spec_helper'

describe AuthressSdk::ConstantTokenProvider do
  describe 'tokenProvider()' do
    it "Generates service client access token" do
      access_token = 'test-token'
      tokenProvider = AuthressSdk::ConstantTokenProvider.new(access_token)
      result = tokenProvider.get_token()
      expect(result).to eq(access_token);
    end
  end
end
