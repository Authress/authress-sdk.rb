=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::V1recordsLinks

# Please update as you see appropriate
describe 'V1recordsLinks' do
  before do
    # run before each test
    @instance = AuthressSdk::V1recordsLinks.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V1recordsLinks' do
    it 'should create an instance of V1recordsLinks' do
      expect(@instance).to be_instance_of(AuthressSdk::V1recordsLinks)
    end
  end
  describe 'test attribute "_self"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
