=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::Link

# Please update as you see appropriate
describe 'Link' do
  before do
    # run before each test
    @instance = AuthressSdk::Link.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Link' do
    it 'should create an instance of Link' do
      expect(@instance).to be_instance_of(AuthressSdk::Link)
    end
  end
  describe 'test attribute "href"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "rel"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
