=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::IdentityCollection

# Please update as you see appropriate
describe 'IdentityCollection' do
  before do
    # run before each test
    @instance = AuthressSdk::IdentityCollection.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IdentityCollection' do
    it 'should create an instance of IdentityCollection' do
      expect(@instance).to be_instance_of(AuthressSdk::IdentityCollection)
    end
  end
  describe 'test attribute "identities"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
