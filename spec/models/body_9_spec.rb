=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::Body9

# Please update as you see appropriate
describe 'Body9' do
  before do
    # run before each test
    @instance = AuthressSdk::Body9.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Body9' do
    it 'should create an instance of Body9' do
      expect(@instance).to be_instance_of(AuthressSdk::Body9)
    end
  end
  describe 'test attribute "jwt"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "preferred_audience"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
