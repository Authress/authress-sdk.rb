=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::PermissionCollection

# Please update as you see appropriate
describe 'PermissionCollection' do
  before do
    # run before each test
    @instance = AuthressSdk::PermissionCollection.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PermissionCollection' do
    it 'should create an instance of PermissionCollection' do
      expect(@instance).to be_instance_of(AuthressSdk::PermissionCollection)
    end
  end
  describe 'test attribute "account"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "user_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "permissions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
