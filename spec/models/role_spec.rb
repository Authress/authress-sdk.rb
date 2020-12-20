=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::Role

# Please update as you see appropriate
describe 'Role' do
  before do
    # run before each test
    @instance = AuthressSdk::Role.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Role' do
    it 'should create an instance of Role' do
      expect(@instance).to be_instance_of(AuthressSdk::Role)
    end
  end
  describe 'test attribute "role_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "permissions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
