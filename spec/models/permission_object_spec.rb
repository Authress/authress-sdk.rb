=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::PermissionObject

# Please update as you see appropriate
describe 'PermissionObject' do
  before do
    # run before each test
    @instance = AuthressSdk::PermissionObject.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PermissionObject' do
    it 'should create an instance of PermissionObject' do
      expect(@instance).to be_instance_of(AuthressSdk::PermissionObject)
    end
  end
  describe 'test attribute "action"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "allow"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "grant"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "delegate"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
