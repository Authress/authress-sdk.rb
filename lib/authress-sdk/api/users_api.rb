=begin

=end

module AuthressSdk
  class UsersApi
    attr_accessor :authress_client

    def initialize(authress_client = AuthressClient.default)
      @authress_client = authress_client
    end

    # Retrieve a user
    # Get the user data associated with a user. The data returned by this endpoint is highly variable based on the source OAuth provider. Avoid depending on undocumented properties.
    # @param user_id The user identifier.
    # @param [Hash] opts the optional parameters
    # @return [UserIdentity]
    def get_user(user_id, opts = {})
      data, _status_code, _headers = get_user_with_http_info(user_id, opts)
      data
    end

    # Retrieve a user
    # Get the user data associated with a user. The data returned by this endpoint is highly variable based on the source OAuth provider. Avoid depending on undocumented properties.
    # @param user_id The user identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserIdentity, Integer, Hash)>] UserIdentity data, response status code and response headers
    def get_user_with_http_info(user_id, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: UsersApi.get_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @authress_client.config[:client_side_validation] && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.get_user"
      end
      # resource path
      local_var_path = '/v1/users/{userId}'.sub('{' + 'userId' + '}', user_id.to_s)

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

      return_type = opts[:return_type] || 'UserIdentity' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: UsersApi#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List users
    # Returns a paginated user list for the account. The data returned by this endpoint is highly variable based on the source OAuth provider. Avoid depending on undocumented properties.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Max number of results to return (default to 100)
    # @option opts [String] :cursor Continuation cursor for paging (will automatically be set)
    # @option opts [String] :filter Filter to search users by. This is a case insensitive search through every text field.
    # @option opts [String] :tenant_id Return only users that are part of the specified tenant. Users can only be part of one tenant, using this parameter will limit returned users that have logged into this tenant.
    # @return [UserIdentityCollection]
    def get_users(opts = {})
      data, _status_code, _headers = get_users_with_http_info(opts)
      data
    end

    # List users
    # Returns a paginated user list for the account. The data returned by this endpoint is highly variable based on the source OAuth provider. Avoid depending on undocumented properties.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Max number of results to return (default to 100)
    # @option opts [String] :cursor Continuation cursor for paging (will automatically be set)
    # @option opts [String] :filter Filter to search users by. This is a case insensitive search through every text field.
    # @option opts [String] :tenant_id Return only users that are part of the specified tenant. Users can only be part of one tenant, using this parameter will limit returned users that have logged into this tenant.
    # @return [Array<(UserIdentityCollection, Integer, Hash)>] UserIdentityCollection data, response status code and response headers
    def get_users_with_http_info(opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: UsersApi.get_users ...'
      end

      # resource path
      local_var_path = '/v1/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'tenantId'] = opts[:'tenant_id'] if !opts[:'tenant_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @authress_client.select_header_accept(['application/links+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'UserIdentityCollection' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: UsersApi#get_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
