=begin

=end

module AuthressSdk
  class ResourcePermissionsApi
    attr_accessor :authress_client

    def initialize(authress_client = AuthressClient.default)
      @authress_client = authress_client
    end
    # Get a resource permissions object.
    # Permissions can be set globally at a resource level. This will apply to all users in an account.         <br><span class=\"badge badge-outline-secondary\">GRANT *: Authress:ResourcePermissions/{resourceUri}</span>
    # @param resource_uri The uri path of a resource to validate, must be URL encoded, uri segments are allowed.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2005]
    def get_resource_permissions(resource_uri, opts = {})
      data, _status_code, _headers = get_resource_permissions_with_http_info(resource_uri, opts)
      data
    end

    # Get a resource permissions object.
    # Permissions can be set globally at a resource level. This will apply to all users in an account.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;GRANT *: Authress:ResourcePermissions/{resourceUri}&lt;/span&gt;
    # @param resource_uri The uri path of a resource to validate, must be URL encoded, uri segments are allowed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2005, Integer, Hash)>] InlineResponse2005 data, response status code and response headers
    def get_resource_permissions_with_http_info(resource_uri, opts = {})
      if @authress_client.config.debugging
        @authress_client.config.logger.debug 'Calling API: ResourcePermissionsApi.get_resource_permissions ...'
      end
      # verify the required parameter 'resource_uri' is set
      if @authress_client.config.client_side_validation && resource_uri.nil?
        fail ArgumentError, "Missing the required parameter 'resource_uri' when calling ResourcePermissionsApi.get_resource_permissions"
      end
      # resource path
      local_var_path = '/v1/resources/{resourceUri}'.sub('{' + 'resourceUri' + '}', resource_uri.to_s)

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

      return_type = opts[:return_type] || 'InlineResponse2005' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config.debugging
        @authress_client.config.logger.debug "API called: ResourcePermissionsApi#get_resource_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the users that have explicit access to this resource.
    # <i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Get the resource users. This result is a list of users that have some permission to the resource. Users with access to higher level resources nor users with access only to a sub-resource, will not be returned in this result. In the case that the resource has multiple users, the list will be paginated.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:UserPermissions/{userId}</span><span class=\"badge badge-outline-secondary\">GRANT *: Authress:ResourcePermissions/{resourceUri}</span>
    # @param resource_uri The uri path of a resource to validate, must be URL encoded, uri segments are allowed.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Max number of results to return (default to 20)
    # @option opts [String] :cursor Continuation cursor for paging (will automatically be set)
    # @return [InlineResponse2006]
    def get_resource_users(resource_uri, opts = {})
      data, _status_code, _headers = get_resource_users_with_http_info(resource_uri, opts)
      data
    end

    # Get the users that have explicit access to this resource.
    # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Get the resource users. This result is a list of users that have some permission to the resource. Users with access to higher level resources nor users with access only to a sub-resource, will not be returned in this result. In the case that the resource has multiple users, the list will be paginated.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:UserPermissions/{userId}&lt;/span&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;GRANT *: Authress:ResourcePermissions/{resourceUri}&lt;/span&gt;
    # @param resource_uri The uri path of a resource to validate, must be URL encoded, uri segments are allowed.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Max number of results to return
    # @option opts [String] :cursor Continuation cursor for paging (will automatically be set)
    # @return [Array<(InlineResponse2006, Integer, Hash)>] InlineResponse2006 data, response status code and response headers
    def get_resource_users_with_http_info(resource_uri, opts = {})
      if @authress_client.config.debugging
        @authress_client.config.logger.debug 'Calling API: ResourcePermissionsApi.get_resource_users ...'
      end
      # verify the required parameter 'resource_uri' is set
      if @authress_client.config.client_side_validation && resource_uri.nil?
        fail ArgumentError, "Missing the required parameter 'resource_uri' when calling ResourcePermissionsApi.get_resource_users"
      end
      # resource path
      local_var_path = '/v1/resources/{resourceUri}/users'.sub('{' + 'resourceUri' + '}', resource_uri.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @authress_client.select_header_accept(['application/links+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InlineResponse2006' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config.debugging
        @authress_client.config.logger.debug "API called: ResourcePermissionsApi#get_resource_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List resource configurations.
    # Permissions can be set globally at a resource level. Lists any resources with a globally set resource policy.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:ResourcePermissions</span>
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2004]
    def get_resources(opts = {})
      data, _status_code, _headers = get_resources_with_http_info(opts)
      data
    end

    # List resource configurations.
    # Permissions can be set globally at a resource level. Lists any resources with a globally set resource policy.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:ResourcePermissions&lt;/span&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2004, Integer, Hash)>] InlineResponse2004 data, response status code and response headers
    def get_resources_with_http_info(opts = {})
      if @authress_client.config.debugging
        @authress_client.config.logger.debug 'Calling API: ResourcePermissionsApi.get_resources ...'
      end
      # resource path
      local_var_path = '/v1/resources'

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

      return_type = opts[:return_type] || 'InlineResponse2004' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config.debugging
        @authress_client.config.logger.debug "API called: ResourcePermissionsApi#get_resources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a resource permissions object.
    # Updates the global permissions on a resource. This applies to all users in an account.         <br><span class=\"badge badge-outline-secondary\">GRANT *: Authress:ResourcePermissions/{resourceUri}</span>
    # @param body The contents of the permission to set on the resource. Overwrites existing data.
    # @param resource_uri The uri path of a resource to validate, must be URL encoded, uri segments are allowed.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_resource_permissions(body, resource_uri, opts = {})
      update_resource_permissions_with_http_info(body, resource_uri, opts)
      nil
    end

    # Update a resource permissions object.
    # Updates the global permissions on a resource. This applies to all users in an account.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;GRANT *: Authress:ResourcePermissions/{resourceUri}&lt;/span&gt;
    # @param body The contents of the permission to set on the resource. Overwrites existing data.
    # @param resource_uri The uri path of a resource to validate, must be URL encoded, uri segments are allowed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_resource_permissions_with_http_info(body, resource_uri, opts = {})
      if @authress_client.config.debugging
        @authress_client.config.logger.debug 'Calling API: ResourcePermissionsApi.update_resource_permissions ...'
      end
      # verify the required parameter 'body' is set
      if @authress_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ResourcePermissionsApi.update_resource_permissions"
      end
      # verify the required parameter 'resource_uri' is set
      if @authress_client.config.client_side_validation && resource_uri.nil?
        fail ArgumentError, "Missing the required parameter 'resource_uri' when calling ResourcePermissionsApi.update_resource_permissions"
      end
      # resource path
      local_var_path = '/v1/resources/{resourceUri}'.sub('{' + 'resourceUri' + '}', resource_uri.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @authress_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @authress_client.object_to_http_body(body) 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config.debugging
        @authress_client.config.logger.debug "API called: ResourcePermissionsApi#update_resource_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
