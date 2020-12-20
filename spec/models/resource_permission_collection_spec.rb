=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::ResourcePermissionCollection

# Please update as you see appropriate
describe 'ResourcePermissionCollection' do
  before do
    # run before each test
    @instance = AuthressSdk::ResourcePermissionCollection.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResourcePermissionCollection' do
    it 'should create an instance of ResourcePermissionCollection' do
      expect(@instance).to be_instance_of(AuthressSdk::ResourcePermissionCollection)
    end
  end
  describe 'test attribute "resources"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "links"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
