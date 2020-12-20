=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::UserTokenLinks

# Please update as you see appropriate
describe 'UserTokenLinks' do
  before do
    # run before each test
    @instance = AuthressSdk::UserTokenLinks.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserTokenLinks' do
    it 'should create an instance of UserTokenLinks' do
      expect(@instance).to be_instance_of(AuthressSdk::UserTokenLinks)
    end
  end
  describe 'test attribute "_self"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
