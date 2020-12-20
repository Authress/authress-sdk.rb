=begin

=end

module AuthressSdk
  class RolesApi
    attr_accessor :authress_client

    def initialize(authress_client = AuthressClient.default)
      @authress_client = authress_client
    end
    # Create a role.
    # Creates a role with permissions.         <br><span class=\"badge badge-outline-secondary\">CREATE: Authress:Roles</span>
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20010]
    def create_role(body, opts = {})
      data, _status_code, _headers = create_role_with_http_info(body, opts)
      data
    end

    # Create a role.
    # Creates a role with permissions.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;CREATE: Authress:Roles&lt;/span&gt;
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20010, Integer, Hash)>] InlineResponse20010 data, response status code and response headers
    def create_role_with_http_info(body, opts = {})
      if @authress_client.config.debugging
        @authress_client.config.logger.debug 'Calling API: RolesApi.create_role ...'
      end
      # verify the required parameter 'body' is set
      if @authress_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RolesApi.create_role"
      end
      # resource path
      local_var_path = '/v1/roles'

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

      return_type = opts[:return_type] || 'InlineResponse20010' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config.debugging
        @authress_client.config.logger.debug "API called: RolesApi#create_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes a role.
    # Remove a role. If a record references the role, that record will not be modified.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:Roles/{roleId}</span>
    # @param role_id The identifier of the role.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_role(role_id, opts = {})
      delete_role_with_http_info(role_id, opts)
      nil
    end

    # Deletes a role.
    # Remove a role. If a record references the role, that record will not be modified.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:Roles/{roleId}&lt;/span&gt;
    # @param role_id The identifier of the role.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_role_with_http_info(role_id, opts = {})
      if @authress_client.config.debugging
        @authress_client.config.logger.debug 'Calling API: RolesApi.delete_role ...'
      end
      # verify the required parameter 'role_id' is set
      if @authress_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.delete_role"
      end
      # resource path
      local_var_path = '/v1/roles/{roleId}'.sub('{' + 'roleId' + '}', role_id.to_s)

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
        @authress_client.config.logger.debug "API called: RolesApi#delete_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a role.
    # Roles contain a list of permissions that will be applied to any user or resource         <br><span class=\"badge badge-outline-secondary\">READ: Authress:Roles/{roleId}</span>
    # @param role_id The identifier of the role.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20010]
    def get_role(role_id, opts = {})
      data, _status_code, _headers = get_role_with_http_info(role_id, opts)
      data
    end

    # Get a role.
    # Roles contain a list of permissions that will be applied to any user or resource         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:Roles/{roleId}&lt;/span&gt;
    # @param role_id The identifier of the role.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20010, Integer, Hash)>] InlineResponse20010 data, response status code and response headers
    def get_role_with_http_info(role_id, opts = {})
      if @authress_client.config.debugging
        @authress_client.config.logger.debug 'Calling API: RolesApi.get_role ...'
      end
      # verify the required parameter 'role_id' is set
      if @authress_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.get_role"
      end
      # resource path
      local_var_path = '/v1/roles/{roleId}'.sub('{' + 'roleId' + '}', role_id.to_s)

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

      return_type = opts[:return_type] || 'InlineResponse20010' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config.debugging
        @authress_client.config.logger.debug "API called: RolesApi#get_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a role.
    # Updates a role adding or removing permissions.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:Roles/{roleId}</span>
    # @param body 
    # @param role_id The identifier of the role.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20010]
    def update_role(body, role_id, opts = {})
      data, _status_code, _headers = update_role_with_http_info(body, role_id, opts)
      data
    end

    # Update a role.
    # Updates a role adding or removing permissions.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:Roles/{roleId}&lt;/span&gt;
    # @param body 
    # @param role_id The identifier of the role.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20010, Integer, Hash)>] InlineResponse20010 data, response status code and response headers
    def update_role_with_http_info(body, role_id, opts = {})
      if @authress_client.config.debugging
        @authress_client.config.logger.debug 'Calling API: RolesApi.update_role ...'
      end
      # verify the required parameter 'body' is set
      if @authress_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RolesApi.update_role"
      end
      # verify the required parameter 'role_id' is set
      if @authress_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.update_role"
      end
      # resource path
      local_var_path = '/v1/roles/{roleId}'.sub('{' + 'roleId' + '}', role_id.to_s)

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

      return_type = opts[:return_type] || 'InlineResponse20010' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config.debugging
        @authress_client.config.logger.debug "API called: RolesApi#update_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
