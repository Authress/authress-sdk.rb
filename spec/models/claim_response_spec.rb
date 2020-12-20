=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::ClaimResponse

# Please update as you see appropriate
describe 'ClaimResponse' do
  before do
    # run before each test
    @instance = AuthressSdk::ClaimResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClaimResponse' do
    it 'should create an instance of ClaimResponse' do
      expect(@instance).to be_instance_of(AuthressSdk::ClaimResponse)
    end
  end
end
