=begin

=end

module AuthressSdk
  class UserPermissionsApi
    attr_accessor :authress_client

    def initialize(authress_client = AuthressClient.default)
      @authress_client = authress_client
    end
    # Check to see if a user has permissions to a resource.
    # <i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Does the user have the specified permissions to the resource?         <br><span class=\"badge badge-outline-secondary\">READ: Authress:UserPermissions/{userId}</span>
    # @param user_id The user to check permissions on
    # @param resource_uri The uri path of a resource to validate, must be URL encoded, uri segments are allowed, the resource must be a full path, and permissions are not inherited by sub-resources.
    # @param permission Permission to check, &#x27;*&#x27; and scoped permissions can also be checked here.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def authorize_user(user_id, resource_uri, permission, opts = {})
      authorize_user_with_http_info(user_id, resource_uri, permission, opts)
      nil
    end

    # Check to see if a user has permissions to a resource.
    # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Does the user have the specified permissions to the resource?         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:UserPermissions/{userId}&lt;/span&gt;
    # @param user_id The user to check permissions on
    # @param resource_uri The uri path of a resource to validate, must be URL encoded, uri segments are allowed, the resource must be a full path, and permissions are not inherited by sub-resources.
    # @param permission Permission to check, &#x27;*&#x27; and scoped permissions can also be checked here.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def authorize_user_with_http_info(user_id, resource_uri, permission, opts = {})
      if @authress_client.config.debugging
        @authress_client.config.logger.debug 'Calling API: UserPermissionsApi.authorize_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @authress_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserPermissionsApi.authorize_user"
      end
      # verify the required parameter 'resource_uri' is set
      if @authress_client.config.client_side_validation && resource_uri.nil?
        fail ArgumentError, "Missing the required parameter 'resource_uri' when calling UserPermissionsApi.authorize_user"
      end
      # verify the required parameter 'permission' is set
      if @authress_client.config.client_side_validation && permission.nil?
        fail ArgumentError, "Missing the required parameter 'permission' when calling UserPermissionsApi.authorize_user"
      end
      # resource path
      local_var_path = '/v1/users/{userId}/resources/{resourceUri}/permissions/{permission}'.sub('{' + 'userId' + '}', user_id.to_s).sub('{' + 'resourceUri' + '}', resource_uri.to_s).sub('{' + 'permission' + '}', permission.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config.debugging
        @authress_client.config.logger.debug "API called: UserPermissionsApi#authorize_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Disable a token.
    # <i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Permanently disable a token. To be used after the token has completed its use. Should be called on all tokens to ensure they are not active indefinitely.         <br><span class=\"badge badge-outline-secondary\">CONTACT: AuthressSupport</span>
    # @param user_id The user to create an impersonation token for.
    # @param token_id The relevant token identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def disable_user_token(user_id, token_id, opts = {})
      disable_user_token_with_http_info(user_id, token_id, opts)
      nil
    end

    # Disable a token.
    # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Permanently disable a token. To be used after the token has completed its use. Should be called on all tokens to ensure they are not active indefinitely.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;CONTACT: AuthressSupport&lt;/span&gt;
    # @param user_id The user to create an impersonation token for.
    # @param token_id The relevant token identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def disable_user_token_with_http_info(user_id, token_id, opts = {})
      if @authress_client.config.debugging
        @authress_client.config.logger.debug 'Calling API: UserPermissionsApi.disable_user_token ...'
      end
      # verify the required parameter 'user_id' is set
      if @authress_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserPermissionsApi.disable_user_token"
      end
      # verify the required parameter 'token_id' is set
      if @authress_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling UserPermissionsApi.disable_user_token"
      end
      # resource path
      local_var_path = '/v1/users/{userId}/tokens/{tokenId}'.sub('{' + 'userId' + '}', user_id.to_s).sub('{' + 'tokenId' + '}', token_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config.debugging
        @authress_client.config.logger.debug "API called: UserPermissionsApi#disable_user_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the permissions a user has to a resource.
    # <i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Get a summary of the permissions a user has to a particular resource.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:UserPermissions/{userId}</span>
    # @param user_id The user to check permissions on
    # @param resource_uri The uri path of a resource to validate, must be URL encoded, uri segments are allowed.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2002]
    def get_user_permissions_for_resource(user_id, resource_uri, opts = {})
      data, _status_code, _headers = get_user_permissions_for_resource_with_http_info(user_id, resource_uri, opts)
      data
    end

    # Get the permissions a user has to a resource.
    # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Get a summary of the permissions a user has to a particular resource.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:UserPermissions/{userId}&lt;/span&gt;
    # @param user_id The user to check permissions on
    # @param resource_uri The uri path of a resource to validate, must be URL encoded, uri segments are allowed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2002, Integer, Hash)>] InlineResponse2002 data, response status code and response headers
    def get_user_permissions_for_resource_with_http_info(user_id, resource_uri, opts = {})
      if @authress_client.config.debugging
        @authress_client.config.logger.debug 'Calling API: UserPermissionsApi.get_user_permissions_for_resource ...'
      end
      # verify the required parameter 'user_id' is set
      if @authress_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserPermissionsApi.get_user_permissions_for_resource"
      end
      # verify the required parameter 'resource_uri' is set
      if @authress_client.config.client_side_validation && resource_uri.nil?
        fail ArgumentError, "Missing the required parameter 'resource_uri' when calling UserPermissionsApi.get_user_permissions_for_resource"
      end
      # resource path
      local_var_path = '/v1/users/{userId}/resources/{resourceUri}/permissions'.sub('{' + 'userId' + '}', user_id.to_s).sub('{' + 'resourceUri' + '}', resource_uri.to_s)

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

      return_type = opts[:return_type] || 'InlineResponse2002' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config.debugging
        @authress_client.config.logger.debug "API called: UserPermissionsApi#get_user_permissions_for_resource\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the resources a user has to permission to.
    # <i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Get the users resources. This result is a list of resource uris that a user has an explicit permission to, a user with * access to all sub resources will return an empty list. To get a user's list of resources in this cases, it is recommended to also check explicit access to the collection resource, using the <strong>authorizeUser</strong> endpoint. In the case that the user only has access to a subset of resources in a collection, the list will be paginated.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:UserPermissions/{userId}</span>
    # @param user_id The user to check permissions on
    # @param [Hash] opts the optional parameters
    # @option opts [String] :resource_uri The top level uri path of a resource to query for. Will only match explicit or collection resource children. Will not partial match resource names. (default to *)
    # @option opts [String] :permissions Permission to check, &#x27;*&#x27; and scoped permissions can also be checked here. By default if the user has any permission explicitly to a resource, it will be included in the list.
    # @option opts [Integer] :limit Max number of results to return (default to 20)
    # @option opts [String] :cursor Continuation cursor for paging (will automatically be set)
    # @return [InlineResponse200]
    def get_user_resources(user_id, opts = {})
      data, _status_code, _headers = get_user_resources_with_http_info(user_id, opts)
      data
    end

    # Get the resources a user has to permission to.
    # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Get the users resources. This result is a list of resource uris that a user has an explicit permission to, a user with * access to all sub resources will return an empty list. To get a user&#x27;s list of resources in this cases, it is recommended to also check explicit access to the collection resource, using the &lt;strong&gt;authorizeUser&lt;/strong&gt; endpoint. In the case that the user only has access to a subset of resources in a collection, the list will be paginated.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:UserPermissions/{userId}&lt;/span&gt;
    # @param user_id The user to check permissions on
    # @param [Hash] opts the optional parameters
    # @option opts [String] :resource_uri The top level uri path of a resource to query for. Will only match explicit or collection resource children. Will not partial match resource names.
    # @option opts [String] :permissions Permission to check, &#x27;*&#x27; and scoped permissions can also be checked here. By default if the user has any permission explicitly to a resource, it will be included in the list.
    # @option opts [Integer] :limit Max number of results to return
    # @option opts [String] :cursor Continuation cursor for paging (will automatically be set)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def get_user_resources_with_http_info(user_id, opts = {})
      if @authress_client.config.debugging
        @authress_client.config.logger.debug 'Calling API: UserPermissionsApi.get_user_resources ...'
      end
      # verify the required parameter 'user_id' is set
      if @authress_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserPermissionsApi.get_user_resources"
      end
      # resource path
      local_var_path = '/v1/users/{userId}/resources'.sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'resourceUri'] = opts[:'resource_uri'] if !opts[:'resource_uri'].nil?
      query_params[:'permissions'] = opts[:'permissions'] if !opts[:'permissions'].nil?
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

      return_type = opts[:return_type] || 'InlineResponse200' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config.debugging
        @authress_client.config.logger.debug "API called: UserPermissionsApi#get_user_resources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Request a user token with additional configuration.
    # <i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Get an Authress signed JWT access token using with userId as the sub. Additionally, can be configured to limit the permissions for this particular token and the length of time the token is valid. Token validation is real-time, so deleted tokens are restricted from being used as soon as they are deleted. This gives full control to the user and client creating the token. Client must have access to impersonating the user in order to generate tokens on their behalf.         <br><span class=\"badge badge-outline-secondary\">CONTACT: AuthressSupport</span>
    # @param body The contents of the permission to set on the token. Will be used instead of the users or clients full permissions. Cannot include permissions that the user or client do not have.
    # @param user_id The user to create an impersonation token for.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2003]
    def request_user_token(body, user_id, opts = {})
      data, _status_code, _headers = request_user_token_with_http_info(body, user_id, opts)
      data
    end

    # Request a user token with additional configuration.
    # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Get an Authress signed JWT access token using with userId as the sub. Additionally, can be configured to limit the permissions for this particular token and the length of time the token is valid. Token validation is real-time, so deleted tokens are restricted from being used as soon as they are deleted. This gives full control to the user and client creating the token. Client must have access to impersonating the user in order to generate tokens on their behalf.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;CONTACT: AuthressSupport&lt;/span&gt;
    # @param body The contents of the permission to set on the token. Will be used instead of the users or clients full permissions. Cannot include permissions that the user or client do not have.
    # @param user_id The user to create an impersonation token for.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2003, Integer, Hash)>] InlineResponse2003 data, response status code and response headers
    def request_user_token_with_http_info(body, user_id, opts = {})
      if @authress_client.config.debugging
        @authress_client.config.logger.debug 'Calling API: UserPermissionsApi.request_user_token ...'
      end
      # verify the required parameter 'body' is set
      if @authress_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UserPermissionsApi.request_user_token"
      end
      # verify the required parameter 'user_id' is set
      if @authress_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserPermissionsApi.request_user_token"
      end
      # resource path
      local_var_path = '/v1/users/{userId}/tokens'.sub('{' + 'userId' + '}', user_id.to_s)

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

      return_type = opts[:return_type] || 'InlineResponse2003' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config.debugging
        @authress_client.config.logger.debug "API called: UserPermissionsApi#request_user_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
