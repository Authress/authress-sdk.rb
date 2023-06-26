=begin

=end

require 'spec_helper'
require 'json'

# Unit tests for AuthressSdk::AccountsApi

# Please update as you see appropriate
describe 'AccountsApi' do
  before do
    # run before each test
    @instance = AuthressSdk::AccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountsApi' do
    it 'should create an instance of AccountsApi' do
      expect(@instance).to be_instance_of(AuthressSdk::AccountsApi)
    end
  end

  # unit tests for get_account
  # Get account information.
  # Includes the original configuration information.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:Configuration&lt;/span&gt;
  # @param account_id The unique identifier for the account
  # @param [Hash] opts the optional parameters
  # @return [Account]
  describe 'get_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_identities
  # Get all linked identities for this account.
  # Returns a list of identities linked for this account.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:Configuration&lt;/span&gt;
  # @param [Hash] opts the optional parameters
  # @return [IdentityCollection]
  describe 'get_account_identities test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_accounts
  # Get all accounts user has access to
  # Returns a list of accounts that the user has access to.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:Configuration&lt;/span&gt;
  # @param [Hash] opts the optional parameters
  # @return [AccountCollection]
  describe 'get_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for link_identity
  # Link a new account identity.
  # An identity is a JWT subscriber *sub* and issuer *iss*. Only one account my be linked to a particular JWT combination. Allows calling the API with a federated token directly instead of using a client access key.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:Configuration&lt;/span&gt;
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'link_identity test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
