=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::ResourcePermissionCollectionResources

# Please update as you see appropriate
describe 'ResourcePermissionCollectionResources' do
  before do
    # run before each test
    @instance = AuthressSdk::ResourcePermissionCollectionResources.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResourcePermissionCollectionResources' do
    it 'should create an instance of ResourcePermissionCollectionResources' do
      expect(@instance).to be_instance_of(AuthressSdk::ResourcePermissionCollectionResources)
    end
  end
  describe 'test attribute "permissions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
