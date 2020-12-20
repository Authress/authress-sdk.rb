=begin

=end

module AuthressSdk
  class MetadataApi
    attr_accessor :authress_client

    def initialize(authress_client = AuthressClient.default)
      @authress_client = authress_client
    end
    # Get the metadata for a resource.
    # <i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Metadata is partitioned by the resource owner, and each can store independent data for a resource. This data is only accessible by identity provider tokens which specify the <strong>sub</strong> property and by service clients which have the <strong>grantMetadataAccess</strong> property.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:MetadataResources/{resourceUri}</span>
    # @param user_id The owner of the data.
    # @param resource_uri The resource the data is attached to.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2001]
    def get_user_metadata(user_id, resource_uri, opts = {})
      data, _status_code, _headers = get_user_metadata_with_http_info(user_id, resource_uri, opts)
      data
    end

    # Get the metadata for a resource.
    # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Metadata is partitioned by the resource owner, and each can store independent data for a resource. This data is only accessible by identity provider tokens which specify the &lt;strong&gt;sub&lt;/strong&gt; property and by service clients which have the &lt;strong&gt;grantMetadataAccess&lt;/strong&gt; property.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:MetadataResources/{resourceUri}&lt;/span&gt;
    # @param user_id The owner of the data.
    # @param resource_uri The resource the data is attached to.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2001, Integer, Hash)>] InlineResponse2001 data, response status code and response headers
    def get_user_metadata_with_http_info(user_id, resource_uri, opts = {})
      if @authress_client.config.debugging
        @authress_client.config.logger.debug 'Calling API: MetadataApi.get_user_metadata ...'
      end
      # verify the required parameter 'user_id' is set
      if @authress_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling MetadataApi.get_user_metadata"
      end
      # verify the required parameter 'resource_uri' is set
      if @authress_client.config.client_side_validation && resource_uri.nil?
        fail ArgumentError, "Missing the required parameter 'resource_uri' when calling MetadataApi.get_user_metadata"
      end
      # resource path
      local_var_path = '/v1/users/{userId}/resources/{resourceUri}/metadata'.sub('{' + 'userId' + '}', user_id.to_s).sub('{' + 'resourceUri' + '}', resource_uri.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @authress_client.select_header_accept(['application/links+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InlineResponse2001' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config.debugging
        @authress_client.config.logger.debug "API called: MetadataApi#get_user_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update the metadata for a resource.
    # <i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Each owner can store independent data for a resource. This data is only accessible by identity provider tokens which specify the <strong>sub</strong> property and by service clients which have the <strong>grantMetadataAccess</strong> property. The underlying resource does not need to actually exist in Authress to manage and update the data.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:MetadataResources/{resourceUri}</span>
    # @param body &lt;strong&gt;Important&lt;/strong&gt;: Data request object which contains properties identifying the data as well as the metadata itself. While there is limited access, the data saved here should be considered encrypted with best practices (Encrypted in Transit and Encrypted at Rest only). However, while Authress will to store and access in the data in a safe way, usage of this endpoint affirms this data must be application data and not user data. If there are explicit regulations or compliances regarding the data and how it should be saved here, this endpoint must not be used. That includes, but is not limited to--user personal data, data that is protected by GDPR and similar data protection regulations.
    # @param user_id The owner of the data.
    # @param resource_uri The resource the data is attached to.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2001]
    def update_user_metadata(body, user_id, resource_uri, opts = {})
      data, _status_code, _headers = update_user_metadata_with_http_info(body, user_id, resource_uri, opts)
      data
    end

    # Update the metadata for a resource.
    # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Each owner can store independent data for a resource. This data is only accessible by identity provider tokens which specify the &lt;strong&gt;sub&lt;/strong&gt; property and by service clients which have the &lt;strong&gt;grantMetadataAccess&lt;/strong&gt; property. The underlying resource does not need to actually exist in Authress to manage and update the data.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:MetadataResources/{resourceUri}&lt;/span&gt;
    # @param body &lt;strong&gt;Important&lt;/strong&gt;: Data request object which contains properties identifying the data as well as the metadata itself. While there is limited access, the data saved here should be considered encrypted with best practices (Encrypted in Transit and Encrypted at Rest only). However, while Authress will to store and access in the data in a safe way, usage of this endpoint affirms this data must be application data and not user data. If there are explicit regulations or compliances regarding the data and how it should be saved here, this endpoint must not be used. That includes, but is not limited to--user personal data, data that is protected by GDPR and similar data protection regulations.
    # @param user_id The owner of the data.
    # @param resource_uri The resource the data is attached to.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2001, Integer, Hash)>] InlineResponse2001 data, response status code and response headers
    def update_user_metadata_with_http_info(body, user_id, resource_uri, opts = {})
      if @authress_client.config.debugging
        @authress_client.config.logger.debug 'Calling API: MetadataApi.update_user_metadata ...'
      end
      # verify the required parameter 'body' is set
      if @authress_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MetadataApi.update_user_metadata"
      end
      # verify the required parameter 'user_id' is set
      if @authress_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling MetadataApi.update_user_metadata"
      end
      # verify the required parameter 'resource_uri' is set
      if @authress_client.config.client_side_validation && resource_uri.nil?
        fail ArgumentError, "Missing the required parameter 'resource_uri' when calling MetadataApi.update_user_metadata"
      end
      # resource path
      local_var_path = '/v1/users/{userId}/resources/{resourceUri}/metadata'.sub('{' + 'userId' + '}', user_id.to_s).sub('{' + 'resourceUri' + '}', resource_uri.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @authress_client.select_header_accept(['application/links+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @authress_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @authress_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'InlineResponse2001' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config.debugging
        @authress_client.config.logger.debug "API called: MetadataApi#update_user_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
