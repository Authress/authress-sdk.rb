=begin

=end

require 'spec_helper'
require 'json'

# Unit tests for AuthressSdk::ResourcePermissionsApi

# Please update as you see appropriate
describe 'ResourcePermissionsApi' do
  before do
    # run before each test
    @instance = AuthressSdk::ResourcePermissionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResourcePermissionsApi' do
    it 'should create an instance of ResourcePermissionsApi' do
      expect(@instance).to be_instance_of(AuthressSdk::ResourcePermissionsApi)
    end
  end

  # unit tests for get_resource_permissions
  # Get a resource permissions object.
  # Permissions can be set globally at a resource level. This will apply to all users in an account.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;GRANT *: Authress:ResourcePermissions/{resourceUri}&lt;/span&gt;
  # @param resource_uri The uri path of a resource to validate, must be URL encoded, uri segments are allowed.
  # @param [Hash] opts the optional parameters
  # @return [ResourcePermission]
  describe 'get_resource_permissions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_resource_users
  # Get the users that have explicit access to this resource.
  # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Get the resource users. This result is a list of users that have some permission to the resource. Users with access to higher level resources nor users with access only to a sub-resource, will not be returned in this result. In the case that the resource has multiple users, the list will be paginated.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:UserPermissions/{userId}&lt;/span&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;GRANT *: Authress:ResourcePermissions/{resourceUri}&lt;/span&gt;
  # @param resource_uri The uri path of a resource to validate, must be URL encoded, uri segments are allowed.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Max number of results to return
  # @option opts [String] :cursor Continuation cursor for paging (will automatically be set)
  # @return [ResourceUsersCollection]
  describe 'get_resource_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_resources
  # List resource configurations.
  # Permissions can be set globally at a resource level. Lists any resources with a globally set resource policy.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:ResourcePermissions&lt;/span&gt;
  # @param [Hash] opts the optional parameters
  # @return [ResourcePermissionCollection]
  describe 'get_resources test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_resource_permissions
  # Update a resource permissions object.
  # Updates the global permissions on a resource. This applies to all users in an account.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;GRANT *: Authress:ResourcePermissions/{resourceUri}&lt;/span&gt;
  # @param body The contents of the permission to set on the resource. Overwrites existing data.
  # @param resource_uri The uri path of a resource to validate, must be URL encoded, uri segments are allowed.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_resource_permissions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
