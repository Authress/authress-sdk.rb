=begin

=end

require 'spec_helper'
require 'json'

# Unit tests for AuthressSdk::UserPermissionsApi

# Please update as you see appropriate
describe 'UserPermissionsApi' do
  before do
    # run before each test
    @instance = AuthressSdk::UserPermissionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserPermissionsApi' do
    it 'should create an instance of UserPermissionsApi' do
      expect(@instance).to be_instance_of(AuthressSdk::UserPermissionsApi)
    end
  end

  # unit tests for authorize_user
  # Check to see if a user has permissions to a resource.
  # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Does the user have the specified permissions to the resource?         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:UserPermissions/{userId}&lt;/span&gt;
  # @param user_id The user to check permissions on
  # @param resource_uri The uri path of a resource to validate, must be URL encoded, uri segments are allowed, the resource must be a full path, and permissions are not inherited by sub-resources.
  # @param permission Permission to check, &#x27;*&#x27; and scoped permissions can also be checked here.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'authorize_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for disable_user_token
  # Disable a token.
  # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Permanently disable a token. To be used after the token has completed its use. Should be called on all tokens to ensure they are not active indefinitely.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;CONTACT: AuthressSupport&lt;/span&gt;
  # @param user_id The user to create an impersonation token for.
  # @param token_id The relevant token identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'disable_user_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_permissions_for_resource
  # Get the permissions a user has to a resource.
  # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Get a summary of the permissions a user has to a particular resource.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:UserPermissions/{userId}&lt;/span&gt;
  # @param user_id The user to check permissions on
  # @param resource_uri The uri path of a resource to validate, must be URL encoded, uri segments are allowed.
  # @param [Hash] opts the optional parameters
  # @return [PermissionCollection]
  describe 'get_user_permissions_for_resource test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_resources
  # Get the resources a user has to permission to.
  # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Get the users resources. This result is a list of resource uris that a user has an explicit permission to, a user with * access to all sub resources will return an empty list. To get a user&#x27;s list of resources in this cases, it is recommended to also check explicit access to the collection resource, using the &lt;strong&gt;authorizeUser&lt;/strong&gt; endpoint. In the case that the user only has access to a subset of resources in a collection, the list will be paginated.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:UserPermissions/{userId}&lt;/span&gt;
  # @param user_id The user to check permissions on
  # @param [Hash] opts the optional parameters
  # @option opts [String] :resource_uri The top level uri path of a resource to query for. Will only match explicit or collection resource children. Will not partial match resource names.
  # @option opts [String] :permissions Permission to check, &#x27;*&#x27; and scoped permissions can also be checked here. By default if the user has any permission explicitly to a resource, it will be included in the list.
  # @option opts [Integer] :limit Max number of results to return
  # @option opts [String] :cursor Continuation cursor for paging (will automatically be set)
  # @return [UserResources]
  describe 'get_user_resources test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for request_user_token
  # Request a user token with additional configuration.
  # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Get an Authress signed JWT access token using with userId as the sub. Additionally, can be configured to limit the permissions for this particular token and the length of time the token is valid. Token validation is real-time, so deleted tokens are restricted from being used as soon as they are deleted. This gives full control to the user and client creating the token. Client must have access to impersonating the user in order to generate tokens on their behalf.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;CONTACT: AuthressSupport&lt;/span&gt;
  # @param body The contents of the permission to set on the token. Will be used instead of the users or clients full permissions. Cannot include permissions that the user or client do not have.
  # @param user_id The user to create an impersonation token for.
  # @param [Hash] opts the optional parameters
  # @return [UserToken]
  describe 'request_user_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
