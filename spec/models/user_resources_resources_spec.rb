=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::UserResourcesResources

# Please update as you see appropriate
describe 'UserResourcesResources' do
  before do
    # run before each test
    @instance = AuthressSdk::UserResourcesResources.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserResourcesResources' do
    it 'should create an instance of UserResourcesResources' do
      expect(@instance).to be_instance_of(AuthressSdk::UserResourcesResources)
    end
  end
  describe 'test attribute "resource_uri"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
