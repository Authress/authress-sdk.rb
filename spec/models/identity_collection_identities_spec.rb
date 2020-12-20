=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::IdentityCollectionIdentities

# Please update as you see appropriate
describe 'IdentityCollectionIdentities' do
  before do
    # run before each test
    @instance = AuthressSdk::IdentityCollectionIdentities.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IdentityCollectionIdentities' do
    it 'should create an instance of IdentityCollectionIdentities' do
      expect(@instance).to be_instance_of(AuthressSdk::IdentityCollectionIdentities)
    end
  end
  describe 'test attribute "issuer"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "audience"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
