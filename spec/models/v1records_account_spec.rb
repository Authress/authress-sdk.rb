=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::V1recordsAccount

# Please update as you see appropriate
describe 'V1recordsAccount' do
  before do
    # run before each test
    @instance = AuthressSdk::V1recordsAccount.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V1recordsAccount' do
    it 'should create an instance of V1recordsAccount' do
      expect(@instance).to be_instance_of(AuthressSdk::V1recordsAccount)
    end
  end
  describe 'test attribute "account_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
