=begin

=end

module AuthressSdk
  class ServiceClientsApi
    attr_accessor :authress_client

    def initialize(authress_client = AuthressClient.default)
      @authress_client = authress_client
    end
    # Create a new client.
    # Creates a service client to interact with Authress or any other service on behalf of users. Each client has secret private keys used to authenticate with Authress. To use service clients created through other mechanisms, skip creating a client and create access records with the client identifier.         <br><span class=\"badge badge-outline-secondary\">CREATE: Authress:ServiceClients</span> or <span class=\"badge badge-outline-secondary\">RESOURCE CLAIM: Authress:ServiceClients</span>
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Client]
    def create_client(body, opts = {})
      data, _status_code, _headers = create_client_with_http_info(body, opts)
      data
    end

    # Create a new client.
    # Creates a service client to interact with Authress or any other service on behalf of users. Each client has secret private keys used to authenticate with Authress. To use service clients created through other mechanisms, skip creating a client and create access records with the client identifier.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;CREATE: Authress:ServiceClients&lt;/span&gt; or &lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;RESOURCE CLAIM: Authress:ServiceClients&lt;/span&gt;
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Client, Integer, Hash)>] Client data, response status code and response headers
    def create_client_with_http_info(body, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: ServiceClientsApi.create_client ...'
      end
      # verify the required parameter 'body' is set
      if @authress_client.config[:client_side_validation] && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceClientsApi.create_client"
      end
      # resource path
      local_var_path = '/v1/clients'

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

      return_type = opts[:return_type] || 'Client' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: ServiceClientsApi#create_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove an access key for a client.
    # Deletes an access key for a client prevent it from being used to authenticate with Authress.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:ServiceClients/{clientId}/access-keys/{keyId}</span>
    # @param client_id The unique identifier of the client.
    # @param key_id The id of the access key to remove from the client.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_access_key(client_id, key_id, opts = {})
      delete_access_key_with_http_info(client_id, key_id, opts)
      nil
    end

    # Remove an access key for a client.
    # Deletes an access key for a client prevent it from being used to authenticate with Authress.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:ServiceClients/{clientId}/access-keys/{keyId}&lt;/span&gt;
    # @param client_id The unique identifier of the client.
    # @param key_id The id of the access key to remove from the client.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_access_key_with_http_info(client_id, key_id, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: ServiceClientsApi.delete_access_key ...'
      end
      # verify the required parameter 'client_id' is set
      if @authress_client.config[:client_side_validation] && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling ServiceClientsApi.delete_access_key"
      end
      # verify the required parameter 'key_id' is set
      if @authress_client.config[:client_side_validation] && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling ServiceClientsApi.delete_access_key"
      end
      # resource path
      local_var_path = '/v1/clients/{clientId}/access-keys/{keyId}'.sub('{' + 'clientId' + '}', client_id.to_s).sub('{' + 'keyId' + '}', key_id.to_s)

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

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: ServiceClientsApi#delete_access_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a client.
    # This deletes the service client.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:ServiceClients/{clientId}</span>
    # @param client_id The unique identifier for the client.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_client(client_id, opts = {})
      delete_client_with_http_info(client_id, opts)
      nil
    end

    # Delete a client.
    # This deletes the service client.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:ServiceClients/{clientId}&lt;/span&gt;
    # @param client_id The unique identifier for the client.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_client_with_http_info(client_id, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: ServiceClientsApi.delete_client ...'
      end
      # verify the required parameter 'client_id' is set
      if @authress_client.config[:client_side_validation] && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling ServiceClientsApi.delete_client"
      end
      # resource path
      local_var_path = '/v1/clients/{clientId}'.sub('{' + 'clientId' + '}', client_id.to_s)

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

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: ServiceClientsApi#delete_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a client.
    # Returns all information related to client except for the private access keys.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:ServiceClients/{clientId}</span>
    # @param client_id The unique identifier for the client.
    # @param [Hash] opts the optional parameters
    # @return [Client]
    def get_client(client_id, opts = {})
      data, _status_code, _headers = get_client_with_http_info(client_id, opts)
      data
    end

    # Get a client.
    # Returns all information related to client except for the private access keys.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:ServiceClients/{clientId}&lt;/span&gt;
    # @param client_id The unique identifier for the client.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Client, Integer, Hash)>] Client data, response status code and response headers
    def get_client_with_http_info(client_id, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: ServiceClientsApi.get_client ...'
      end
      # verify the required parameter 'client_id' is set
      if @authress_client.config[:client_side_validation] && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling ServiceClientsApi.get_client"
      end
      # resource path
      local_var_path = '/v1/clients/{clientId}'.sub('{' + 'clientId' + '}', client_id.to_s)

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

      return_type = opts[:return_type] || 'Client' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: ServiceClientsApi#get_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get clients collection.
    # Returns all clients that the user has access to in the account.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:ServiceClients/{clientId}</span>
    # @param [Hash] opts the optional parameters
    # @return [ClientCollection]
    def get_clients(opts = {})
      data, _status_code, _headers = get_clients_with_http_info(opts)
      data
    end

    # Get clients collection.
    # Returns all clients that the user has access to in the account.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:ServiceClients/{clientId}&lt;/span&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientCollection, Integer, Hash)>] ClientCollection data, response status code and response headers
    def get_clients_with_http_info(opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: ServiceClientsApi.get_clients ...'
      end
      # resource path
      local_var_path = '/v1/clients'

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

      return_type = opts[:return_type] || 'ClientCollection' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: ServiceClientsApi#get_clients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Request a new access key.
    # Create a new access key for the client so that a service can authenticate with Authress as that client. Using the client will allow delegation of permission checking of users.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:ServiceClients/{clientId}/access-keys</span>
    # @param client_id The unique identifier of the client.
    # @param [Hash] opts the optional parameters
    # @return [ClientAccessKey]
    def request_access_key(client_id, opts = {})
      data, _status_code, _headers = request_access_key_with_http_info(client_id, opts)
      data
    end

    # Request a new access key.
    # Create a new access key for the client so that a service can authenticate with Authress as that client. Using the client will allow delegation of permission checking of users.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:ServiceClients/{clientId}/access-keys&lt;/span&gt;
    # @param client_id The unique identifier of the client.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientAccessKey, Integer, Hash)>] ClientAccessKey data, response status code and response headers
    def request_access_key_with_http_info(client_id, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: ServiceClientsApi.request_access_key ...'
      end
      # verify the required parameter 'client_id' is set
      if @authress_client.config[:client_side_validation] && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling ServiceClientsApi.request_access_key"
      end
      # resource path
      local_var_path = '/v1/clients/{clientId}/access-keys'.sub('{' + 'clientId' + '}', client_id.to_s)

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

      return_type = opts[:return_type] || 'ClientAccessKey' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: ServiceClientsApi#request_access_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a client.
    # Updates a client information.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:ServiceClients/{clientId}</span>
    # @param body 
    # @param client_id The unique identifier for the client.
    # @param [Hash] opts the optional parameters
    # @return [Client]
    def update_client(body, client_id, opts = {})
      data, _status_code, _headers = update_client_with_http_info(body, client_id, opts)
      data
    end

    # Update a client.
    # Updates a client information.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:ServiceClients/{clientId}&lt;/span&gt;
    # @param body 
    # @param client_id The unique identifier for the client.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Client, Integer, Hash)>] Client data, response status code and response headers
    def update_client_with_http_info(body, client_id, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: ServiceClientsApi.update_client ...'
      end
      # verify the required parameter 'body' is set
      if @authress_client.config[:client_side_validation] && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceClientsApi.update_client"
      end
      # verify the required parameter 'client_id' is set
      if @authress_client.config[:client_side_validation] && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling ServiceClientsApi.update_client"
      end
      # resource path
      local_var_path = '/v1/clients/{clientId}'.sub('{' + 'clientId' + '}', client_id.to_s)

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

      return_type = opts[:return_type] || 'Client' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: ServiceClientsApi#update_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
