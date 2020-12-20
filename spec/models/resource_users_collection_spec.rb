=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::ResourceUsersCollection

# Please update as you see appropriate
describe 'ResourceUsersCollection' do
  before do
    # run before each test
    @instance = AuthressSdk::ResourceUsersCollection.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResourceUsersCollection' do
    it 'should create an instance of ResourceUsersCollection' do
      expect(@instance).to be_instance_of(AuthressSdk::ResourceUsersCollection)
    end
  end
  describe 'test attribute "users"' do
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
