=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::ClaimRequest

# Please update as you see appropriate
describe 'ClaimRequest' do
  before do
    # run before each test
    @instance = AuthressSdk::ClaimRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClaimRequest' do
    it 'should create an instance of ClaimRequest' do
      expect(@instance).to be_instance_of(AuthressSdk::ClaimRequest)
    end
  end
  describe 'test attribute "collection_resource"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "resource_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
