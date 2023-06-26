=begin

=end

require 'spec_helper'
require 'json'

# Unit tests for AuthressSdk::MetadataApi

# Please update as you see appropriate
describe 'MetadataApi' do
  before do
    # run before each test
    @instance = AuthressSdk::MetadataApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MetadataApi' do
    it 'should create an instance of MetadataApi' do
      expect(@instance).to be_instance_of(AuthressSdk::MetadataApi)
    end
  end

  # unit tests for get_user_metadata
  # Get the metadata for a resource.
  # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Metadata is partitioned by the resource owner, and each can store independent data for a resource. This data is only accessible by identity provider tokens which specify the &lt;strong&gt;sub&lt;/strong&gt; property and by service clients which have the &lt;strong&gt;grantMetadataAccess&lt;/strong&gt; property.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:MetadataResources/{resourceUri}&lt;/span&gt;
  # @param user_id The owner of the data.
  # @param resource_uri The resource the data is attached to.
  # @param [Hash] opts the optional parameters
  # @return [MetadataObject]
  describe 'get_user_metadata test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user_metadata
  # Update the metadata for a resource.
  # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Each owner can store independent data for a resource. This data is only accessible by identity provider tokens which specify the &lt;strong&gt;sub&lt;/strong&gt; property and by service clients which have the &lt;strong&gt;grantMetadataAccess&lt;/strong&gt; property. The underlying resource does not need to actually exist in Authress to manage and update the data.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:MetadataResources/{resourceUri}&lt;/span&gt;
  # @param body &lt;strong&gt;Important&lt;/strong&gt;: Data request object which contains properties identifying the data as well as the metadata itself. While there is limited access, the data saved here should be considered encrypted with best practices (Encrypted in Transit and Encrypted at Rest only). However, while Authress will to store and access in the data in a safe way, usage of this endpoint affirms this data must be application data and not user data. If there are explicit regulations or compliances regarding the data and how it should be saved here, this endpoint must not be used. That includes, but is not limited to--user personal data, data that is protected by GDPR and similar data protection regulations.
  # @param user_id The owner of the data.
  # @param resource_uri The resource the data is attached to.
  # @param [Hash] opts the optional parameters
  # @return [MetadataObject]
  describe 'update_user_metadata test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
