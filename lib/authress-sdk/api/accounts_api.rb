=begin

=end

module AuthressSdk
  class AccountsApi
    attr_accessor :authress_client

    def initialize(authress_client = AuthressClient.default)
      @authress_client = authress_client
    end
    # Get account information.
    # Includes the original configuration information.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:Configuration</span>
    # @param account_id The unique identifier for the account
    # @param [Hash] opts the optional parameters
    # @return [Account]
    def get_account(account_id, opts = {})
      data, _status_code, _headers = get_account_with_http_info(account_id, opts)
      data
    end

    # Get account information.
    # Includes the original configuration information.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:Configuration&lt;/span&gt;
    # @param account_id The unique identifier for the account
    # @param [Hash] opts the optional parameters
    # @return [Array<(Account, Integer, Hash)>] Account data, response status code and response headers
    def get_account_with_http_info(account_id, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: AccountsApi.get_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @authress_client.config[:client_side_validation] && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountsApi.get_account"
      end
      # resource path
      local_var_path = '/v1/accounts/{accountId}'.sub('{' + 'accountId' + '}', account_id.to_s)

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

      return_type = opts[:return_type] || 'Account' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: AccountsApi#get_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all linked identities for this account.
    # Returns a list of identities linked for this account.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:Configuration</span>
    # @param [Hash] opts the optional parameters
    # @return [IdentityCollection]
    def get_account_identities(opts = {})
      data, _status_code, _headers = get_account_identities_with_http_info(opts)
      data
    end

    # Get all linked identities for this account.
    # Returns a list of identities linked for this account.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:Configuration&lt;/span&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(IdentityCollection, Integer, Hash)>] IdentityCollection data, response status code and response headers
    def get_account_identities_with_http_info(opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: AccountsApi.get_account_identities ...'
      end
      # resource path
      local_var_path = '/v1/identities'

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

      return_type = opts[:return_type] || 'IdentityCollection' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: AccountsApi#get_account_identities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all accounts user has access to
    # Returns a list of accounts that the user has access to.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:Configuration</span>
    # @param [Hash] opts the optional parameters
    # @return [AccountCollection]
    def get_accounts(opts = {})
      data, _status_code, _headers = get_accounts_with_http_info(opts)
      data
    end

    # Get all accounts user has access to
    # Returns a list of accounts that the user has access to.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:Configuration&lt;/span&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountCollection, Integer, Hash)>] AccountCollection data, response status code and response headers
    def get_accounts_with_http_info(opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: AccountsApi.get_accounts ...'
      end
      # resource path
      local_var_path = '/v1/accounts'

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

      return_type = opts[:return_type] || 'AccountCollection' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: AccountsApi#get_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Link a new account identity.
    # An identity is a JWT subscriber *sub* and issuer *iss*. Only one account my be linked to a particular JWT combination. Allows calling the API with a federated token directly instead of using a client access key.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:Configuration</span>
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def link_identity(body, opts = {})
      link_identity_with_http_info(body, opts)
      nil
    end

    # Link a new account identity.
    # An identity is a JWT subscriber *sub* and issuer *iss*. Only one account my be linked to a particular JWT combination. Allows calling the API with a federated token directly instead of using a client access key.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE: Authress:Configuration&lt;/span&gt;
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def link_identity_with_http_info(body, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: AccountsApi.link_identity ...'
      end
      # verify the required parameter 'body' is set
      if @authress_client.config[:client_side_validation] && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AccountsApi.link_identity"
      end
      # resource path
      local_var_path = '/v1/identities'

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
      data, status_code, headers = @authress_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: AccountsApi#link_identity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
