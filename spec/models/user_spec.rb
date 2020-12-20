=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::User

# Please update as you see appropriate
describe 'User' do
  before do
    # run before each test
    @instance = AuthressSdk::User.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of User' do
    it 'should create an instance of User' do
      expect(@instance).to be_instance_of(AuthressSdk::User)
    end
  end
  describe 'test attribute "user_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
