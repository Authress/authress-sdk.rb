=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::Body1

# Please update as you see appropriate
describe 'Body1' do
  before do
    # run before each test
    @instance = AuthressSdk::Body1.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Body1' do
    it 'should create an instance of Body1' do
      expect(@instance).to be_instance_of(AuthressSdk::Body1)
    end
  end
  describe 'test attribute "statements"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "expires"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
