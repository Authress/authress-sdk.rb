=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::UserTokenLinksSelf

# Please update as you see appropriate
describe 'UserTokenLinksSelf' do
  before do
    # run before each test
    @instance = AuthressSdk::UserTokenLinksSelf.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserTokenLinksSelf' do
    it 'should create an instance of UserTokenLinksSelf' do
      expect(@instance).to be_instance_of(AuthressSdk::UserTokenLinksSelf)
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
