=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::ResourcePermission

# Please update as you see appropriate
describe 'ResourcePermission' do
  before do
    # run before each test
    @instance = AuthressSdk::ResourcePermission.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResourcePermission' do
    it 'should create an instance of ResourcePermission' do
      expect(@instance).to be_instance_of(AuthressSdk::ResourcePermission)
    end
  end
  describe 'test attribute "permissions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
