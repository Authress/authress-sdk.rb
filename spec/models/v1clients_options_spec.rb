=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::V1clientsOptions

# Please update as you see appropriate
describe 'V1clientsOptions' do
  before do
    # run before each test
    @instance = AuthressSdk::V1clientsOptions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V1clientsOptions' do
    it 'should create an instance of V1clientsOptions' do
      expect(@instance).to be_instance_of(AuthressSdk::V1clientsOptions)
    end
  end
  describe 'test attribute "grant_user_permissions_access"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "grant_metadata_access"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
