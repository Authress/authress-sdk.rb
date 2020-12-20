=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::Body5

# Please update as you see appropriate
describe 'Body5' do
  before do
    # run before each test
    @instance = AuthressSdk::Body5.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Body5' do
    it 'should create an instance of Body5' do
      expect(@instance).to be_instance_of(AuthressSdk::Body5)
    end
  end
  describe 'test attribute "email"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "statements"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
