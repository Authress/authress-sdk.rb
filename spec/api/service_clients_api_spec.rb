=begin

=end

require 'spec_helper'
require 'json'

# Unit tests for AuthressSdk::ServiceClientsApi

# Please update as you see appropriate
describe 'ServiceClientsApi' do
  before do
    # run before each test
    @instance = AuthressSdk::ServiceClientsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ServiceClientsApi' do
    it 'should create an instance of ServiceClientsApi' do
      expect(@instance).to be_instance_of(AuthressSdk::ServiceClientsApi)
    end
  end

  # unit tests for create_client
  # Create a new client.
  # Creates a service client to interact with Authress or any other service on behalf of users. Each client has secret private keys used to authenticate with Authress. To use service clients created through other mechanisms, skip creating a client and create access records with the client identifier.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;CREATE: Authress:ServiceClients&lt;/span&gt; or &lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;RESOURCE CLAIM: Authress:ServiceClients&lt;/span&gt;
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [Client]
  describe 'create_client test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_access_key
  # Remove an access key for a client.
  # Deletes an access key for a client prevent it from being used to authenticate with Authress.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:ServiceClients/{clientId}/access-keys/{keyId}&lt;/span&gt;
  # @param client_id The unique identifier of the client.
  # @param key_id The id of the access key to remove from the client.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_access_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_client
  # Delete a client.
  # This deletes the service client.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:ServiceClients/{clientId}&lt;/span&gt;
  # @param client_id The unique identifier for the client.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_client test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_client
  # Get a client.
  # Returns all information related to client except for the private access keys.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:ServiceClients/{clientId}&lt;/span&gt;
  # @param client_id The unique identifier for the client.
  # @param [Hash] opts the optional parameters
  # @return [Client]
  describe 'get_client test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_clients
  # Get clients collection.
  # Returns all clients that the user has access to in the account.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:ServiceClients/{clientId}&lt;/span&gt;
  # @param [Hash] opts the optional parameters
  # @return [ClientCollection]
  describe 'get_clients test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for request_access_key
  # Request a new access key.
  # Create a new access key for the client so that a service can authenticate with Authress as that client. Using the client will allow delegation of permission checking of users.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:ServiceClients/{clientId}/access-keys&lt;/span&gt;
  # @param client_id The unique identifier of the client.
  # @param [Hash] opts the optional parameters
  # @return [ClientAccessKey]
  describe 'request_access_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_client
  # Update a client.
  # Updates a client information.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:ServiceClients/{clientId}&lt;/span&gt;
  # @param body 
  # @param client_id The unique identifier for the client.
  # @param [Hash] opts the optional parameters
  # @return [Client]
  describe 'update_client test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
