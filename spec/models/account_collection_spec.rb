=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::AccountCollection

# Please update as you see appropriate
describe 'AccountCollection' do
  before do
    # run before each test
    @instance = AuthressSdk::AccountCollection.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountCollection' do
    it 'should create an instance of AccountCollection' do
      expect(@instance).to be_instance_of(AuthressSdk::AccountCollection)
    end
  end
  describe 'test attribute "accounts"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
