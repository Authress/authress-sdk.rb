=begin

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AuthressSdk::V1resourcesresourceUriPermissions

# Please update as you see appropriate
describe 'V1resourcesresourceUriPermissions' do
  before do
    # run before each test
    @instance = AuthressSdk::V1resourcesresourceUriPermissions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V1resourcesresourceUriPermissions' do
    it 'should create an instance of V1resourcesresourceUriPermissions' do
      expect(@instance).to be_instance_of(AuthressSdk::V1resourcesresourceUriPermissions)
    end
  end
  describe 'test attribute "action"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["CLAIM", "PUBLIC"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.action = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "allow"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
