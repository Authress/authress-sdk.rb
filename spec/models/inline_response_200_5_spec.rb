=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::InlineResponse2005

# Please update as you see appropriate
describe 'InlineResponse2005' do
  before do
    # run before each test
    @instance = AuthressSdk::InlineResponse2005.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse2005' do
    it 'should create an instance of InlineResponse2005' do
      expect(@instance).to be_instance_of(AuthressSdk::InlineResponse2005)
    end
  end
  describe 'test attribute "permissions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
