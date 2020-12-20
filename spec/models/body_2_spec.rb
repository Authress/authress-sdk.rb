=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::Body2

# Please update as you see appropriate
describe 'Body2' do
  before do
    # run before each test
    @instance = AuthressSdk::Body2.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Body2' do
    it 'should create an instance of Body2' do
      expect(@instance).to be_instance_of(AuthressSdk::Body2)
    end
  end
  describe 'test attribute "permissions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
