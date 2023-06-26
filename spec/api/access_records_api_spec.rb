=begin

=end

require 'spec_helper'
require 'json'

# Unit tests for AuthressSdk::AccessRecordsApi

# Please update as you see appropriate
describe 'AccessRecordsApi' do
  before do
    # run before each test
    @instance = AuthressSdk::AccessRecordsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccessRecordsApi' do
    it 'should create an instance of AccessRecordsApi' do
      expect(@instance).to be_instance_of(AuthressSdk::AccessRecordsApi)
    end
  end

  # unit tests for create_claim
  # Claim a resource by an allowed user.
  # Claim a resource by allowing a user to pick an identifier and receive admin access to that resource if it hasn&#x27;t already been claimed. This only works for resources specifically marked as &lt;strong&gt;CLAIM&lt;/strong&gt;. The result will be a new access record listing that user as the admin for this resource. The resourceUri will be appended to the collection resource uri using a &#x27;/&#x27; (forward slash) automatically.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;RESOURCE CLAIM: {resourceUri}&lt;/span&gt; or &lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;DELEGATE *: {resourceUri}&lt;/span&gt;
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'create_claim test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_invite
  # Create a new invite.
  # Invites are used to easily assign permissions to users that have not been created in your identity provider yet. Create the invite with an email address, and then when the user accepts the invite they will automatically get the permissions assigned here. Invites automatically expire after 7 days.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;GRANT: Existing Resource Permissions&lt;/span&gt;
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_invite test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_record
  # Create a new access record.
  # Specify user roles for specific resources. (Records have a maximum size of ~100KB)         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;GRANT: Existing Resource Permissions&lt;/span&gt;
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [AccessRecord]
  describe 'create_record test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_invite
  # Delete an invite.
  # Deletes an invite.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:UserPermissions/{userId}&lt;/span&gt;
  # @param invite_id The identifier of the invite.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_invite test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_record
  # Deletes an access record.
  # Remove an access record, removing associated permissions from all users in record. If a user has a permission from another record, that permission will not be removed. (Note: This disables the record by changing the status to &lt;strong&gt;DELETED&lt;/strong&gt; but not completely remove the record for tracking purposes.           &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE (or Admin): Authress:AccessRecords/{recordId}&lt;/span&gt;
  # @param record_id The identifier of the access record.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_record test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_record
  # Get an access record for the account.
  # Access records contain information assigning permissions to users for resources.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ (or Admin): Authress:AccessRecords/{recordId}&lt;/span&gt;
  # @param record_id The identifier of the access record.
  # @param [Hash] opts the optional parameters
  # @return [AccessRecord]
  describe 'get_record test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_records
  # Get all account records.
  # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Returns a paginated records list for the account. Only records the user has access to are returned.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ (or Admin): Authress:AccessRecords/{recordId}&lt;/span&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Max number of results to return
  # @option opts [String] :cursor Continuation cursor for paging (will automatically be set)
  # @option opts [String] :filter Filter to search records by. This is a case insensitive search through every text field.
  # @option opts [String] :status Filter records by their current status.
  # @return [AccessRecordCollection]
  describe 'get_records test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for respond_to_invite
  # Accept an invite.
  # Accepts an invite by claiming this invite by this user. The user token used for this request will gain the permissions associated with the invite.
  # @param invite_id The identifier of the invite.
  # @param [Hash] opts the optional parameters
  # @return [Account]
  describe 'respond_to_invite test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_record
  # Update an access record.
  # Updates an access record adding or removing user permissions to resources. (Records have a maximum size of ~100KB)         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE (or Admin): Authress:AccessRecords/{recordId}&lt;/span&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;GRANT: Existing Resource Permissions&lt;/span&gt;
  # @param body 
  # @param record_id The identifier of the access record.
  # @param [Hash] opts the optional parameters
  # @return [AccessRecord]
  describe 'update_record test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
