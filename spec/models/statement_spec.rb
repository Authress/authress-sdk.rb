=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::Statement

# Please update as you see appropriate
describe 'Statement' do
  before do
    # run before each test
    @instance = AuthressSdk::Statement.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Statement' do
    it 'should create an instance of Statement' do
      expect(@instance).to be_instance_of(AuthressSdk::Statement)
    end
  end
  describe 'test attribute "roles"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "resources"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
