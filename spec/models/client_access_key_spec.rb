=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::ClientAccessKey

# Please update as you see appropriate
describe 'ClientAccessKey' do
  before do
    # run before each test
    @instance = AuthressSdk::ClientAccessKey.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClientAccessKey' do
    it 'should create an instance of ClientAccessKey' do
      expect(@instance).to be_instance_of(AuthressSdk::ClientAccessKey)
    end
  end
  describe 'test attribute "key_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "client_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "generation_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "access_key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
