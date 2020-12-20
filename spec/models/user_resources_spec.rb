=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::UserResources

# Please update as you see appropriate
describe 'UserResources' do
  before do
    # run before each test
    @instance = AuthressSdk::UserResources.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserResources' do
    it 'should create an instance of UserResources' do
      expect(@instance).to be_instance_of(AuthressSdk::UserResources)
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
