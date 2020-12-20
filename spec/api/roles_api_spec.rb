=begin

=end

require 'spec_helper'
require 'json'

# Unit tests for AuthressSdk::RolesApi

# Please update as you see appropriate
describe 'RolesApi' do
  before do
    # run before each test
    @instance = AuthressSdk::RolesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RolesApi' do
    it 'should create an instance of RolesApi' do
      expect(@instance).to be_instance_of(AuthressSdk::RolesApi)
    end
  end

  # unit tests for create_role
  # Create a role.
  # Creates a role with permissions.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;CREATE: Authress:Roles&lt;/span&gt;
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20010]
  describe 'create_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_role
  # Deletes a role.
  # Remove a role. If a record references the role, that record will not be modified.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:Roles/{roleId}&lt;/span&gt;
  # @param role_id The identifier of the role.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_role
  # Get a role.
  # Roles contain a list of permissions that will be applied to any user or resource         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:Roles/{roleId}&lt;/span&gt;
  # @param role_id The identifier of the role.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20010]
  describe 'get_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_role
  # Update a role.
  # Updates a role adding or removing permissions.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:Roles/{roleId}&lt;/span&gt;
  # @param body 
  # @param role_id The identifier of the role.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20010]
  describe 'update_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
