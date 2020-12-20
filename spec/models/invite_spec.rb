=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::Invite

# Please update as you see appropriate
describe 'Invite' do
  before do
    # run before each test
    @instance = AuthressSdk::Invite.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Invite' do
    it 'should create an instance of Invite' do
      expect(@instance).to be_instance_of(AuthressSdk::Invite)
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
