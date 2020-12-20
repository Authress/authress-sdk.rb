=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::Client

# Please update as you see appropriate
describe 'Client' do
  before do
    # run before each test
    @instance = AuthressSdk::Client.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Client' do
    it 'should create an instance of Client' do
      expect(@instance).to be_instance_of(AuthressSdk::Client)
    end
  end
  describe 'test attribute "client_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "created_time"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "options"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
