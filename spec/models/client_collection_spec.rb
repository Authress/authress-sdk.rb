=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::ClientCollection

# Please update as you see appropriate
describe 'ClientCollection' do
  before do
    # run before each test
    @instance = AuthressSdk::ClientCollection.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClientCollection' do
    it 'should create an instance of ClientCollection' do
      expect(@instance).to be_instance_of(AuthressSdk::ClientCollection)
    end
  end
  describe 'test attribute "clients"' do
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
