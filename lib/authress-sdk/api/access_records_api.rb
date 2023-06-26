=begin

=end

module AuthressSdk
  class AccessRecordsApi
    attr_accessor :authress_client

    def initialize(authress_client = AuthressClient.default)
      @authress_client = authress_client
    end
    # Claim a resource by an allowed user.
    # Claim a resource by allowing a user to pick an identifier and receive admin access to that resource if it hasn't already been claimed. This only works for resources specifically marked as <strong>CLAIM</strong>. The result will be a new access record listing that user as the admin for this resource. The resourceUri will be appended to the collection resource uri using a '/' (forward slash) automatically.         <br><span class=\"badge badge-outline-secondary\">RESOURCE CLAIM: {resourceUri}</span> or <span class=\"badge badge-outline-secondary\">DELEGATE *: {resourceUri}</span>
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def create_claim(body, opts = {})
      data, _status_code, _headers = create_claim_with_http_info(body, opts)
      data
    end

    # Claim a resource by an allowed user.
    # Claim a resource by allowing a user to pick an identifier and receive admin access to that resource if it hasn&#x27;t already been claimed. This only works for resources specifically marked as &lt;strong&gt;CLAIM&lt;/strong&gt;. The result will be a new access record listing that user as the admin for this resource. The resourceUri will be appended to the collection resource uri using a &#x27;/&#x27; (forward slash) automatically.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;RESOURCE CLAIM: {resourceUri}&lt;/span&gt; or &lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;DELEGATE *: {resourceUri}&lt;/span&gt;
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def create_claim_with_http_info(body, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: AccessRecordsApi.create_claim ...'
      end
      # verify the required parameter 'body' is set
      if @authress_client.config[:client_side_validation] && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AccessRecordsApi.create_claim"
      end
      # resource path
      local_var_path = '/v1/claims'

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

      return_type = opts[:return_type] || 'Object' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: AccessRecordsApi#create_claim\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new invite.
    # Invites are used to easily assign permissions to users that have not been created in your identity provider yet. Create the invite with an email address, and then when the user accepts the invite they will automatically get the permissions assigned here. Invites automatically expire after 7 days.         <br><span class=\"badge badge-outline-secondary\">GRANT: Existing Resource Permissions</span>
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_invite(body, opts = {})
      create_invite_with_http_info(body, opts)
      nil
    end

    # Create a new invite.
    # Invites are used to easily assign permissions to users that have not been created in your identity provider yet. Create the invite with an email address, and then when the user accepts the invite they will automatically get the permissions assigned here. Invites automatically expire after 7 days.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;GRANT: Existing Resource Permissions&lt;/span&gt;
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_invite_with_http_info(body, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: AccessRecordsApi.create_invite ...'
      end
      # verify the required parameter 'body' is set
      if @authress_client.config[:client_side_validation] && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AccessRecordsApi.create_invite"
      end
      # resource path
      local_var_path = '/v1/invites'

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
        @authress_client.config[:logger].debug "API called: AccessRecordsApi#create_invite\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new access record.
    # Specify user roles for specific resources. (Records have a maximum size of ~100KB)         <br><span class=\"badge badge-outline-secondary\">GRANT: Existing Resource Permissions</span>
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [AccessRecord]
    def create_record(body, opts = {})
      data, _status_code, _headers = create_record_with_http_info(body, opts)
      data
    end

    # Create a new access record.
    # Specify user roles for specific resources. (Records have a maximum size of ~100KB)         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;GRANT: Existing Resource Permissions&lt;/span&gt;
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccessRecord, Integer, Hash)>] AccessRecord data, response status code and response headers
    def create_record_with_http_info(body, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: AccessRecordsApi.create_record ...'
      end
      # verify the required parameter 'body' is set
      if @authress_client.config[:client_side_validation] && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AccessRecordsApi.create_record"
      end
      # resource path
      local_var_path = '/v1/records'

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

      return_type = opts[:return_type] || 'AccessRecord' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: AccessRecordsApi#create_record\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete an invite.
    # Deletes an invite.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:UserPermissions/{userId}</span>
    # @param invite_id The identifier of the invite.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_invite(invite_id, opts = {})
      delete_invite_with_http_info(invite_id, opts)
      nil
    end

    # Delete an invite.
    # Deletes an invite.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ: Authress:UserPermissions/{userId}&lt;/span&gt;
    # @param invite_id The identifier of the invite.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_invite_with_http_info(invite_id, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: AccessRecordsApi.delete_invite ...'
      end
      # verify the required parameter 'invite_id' is set
      if @authress_client.config[:client_side_validation] && invite_id.nil?
        fail ArgumentError, "Missing the required parameter 'invite_id' when calling AccessRecordsApi.delete_invite"
      end
      # resource path
      local_var_path = '/v1/invites/{inviteId}'.sub('{' + 'inviteId' + '}', invite_id.to_s)

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
        @authress_client.config[:logger].debug "API called: AccessRecordsApi#delete_invite\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes an access record.
    # Remove an access record, removing associated permissions from all users in record. If a user has a permission from another record, that permission will not be removed. (Note: This disables the record by changing the status to <strong>DELETED</strong> but not completely remove the record for tracking purposes.           <br><span class=\"badge badge-outline-secondary\">UPDATE (or Admin): Authress:AccessRecords/{recordId}</span>
    # @param record_id The identifier of the access record.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_record(record_id, opts = {})
      delete_record_with_http_info(record_id, opts)
      nil
    end

    # Deletes an access record.
    # Remove an access record, removing associated permissions from all users in record. If a user has a permission from another record, that permission will not be removed. (Note: This disables the record by changing the status to &lt;strong&gt;DELETED&lt;/strong&gt; but not completely remove the record for tracking purposes.           &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE (or Admin): Authress:AccessRecords/{recordId}&lt;/span&gt;
    # @param record_id The identifier of the access record.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_record_with_http_info(record_id, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: AccessRecordsApi.delete_record ...'
      end
      # verify the required parameter 'record_id' is set
      if @authress_client.config[:client_side_validation] && record_id.nil?
        fail ArgumentError, "Missing the required parameter 'record_id' when calling AccessRecordsApi.delete_record"
      end
      # resource path
      local_var_path = '/v1/records/{recordId}'.sub('{' + 'recordId' + '}', record_id.to_s)

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
        @authress_client.config[:logger].debug "API called: AccessRecordsApi#delete_record\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get an access record for the account.
    # Access records contain information assigning permissions to users for resources.         <br><span class=\"badge badge-outline-secondary\">READ (or Admin): Authress:AccessRecords/{recordId}</span>
    # @param record_id The identifier of the access record.
    # @param [Hash] opts the optional parameters
    # @return [AccessRecord]
    def get_record(record_id, opts = {})
      data, _status_code, _headers = get_record_with_http_info(record_id, opts)
      data
    end

    # Get an access record for the account.
    # Access records contain information assigning permissions to users for resources.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ (or Admin): Authress:AccessRecords/{recordId}&lt;/span&gt;
    # @param record_id The identifier of the access record.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccessRecord, Integer, Hash)>] AccessRecord data, response status code and response headers
    def get_record_with_http_info(record_id, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: AccessRecordsApi.get_record ...'
      end
      # verify the required parameter 'record_id' is set
      if @authress_client.config[:client_side_validation] && record_id.nil?
        fail ArgumentError, "Missing the required parameter 'record_id' when calling AccessRecordsApi.get_record"
      end
      # resource path
      local_var_path = '/v1/records/{recordId}'.sub('{' + 'recordId' + '}', record_id.to_s)

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

      return_type = opts[:return_type] || 'AccessRecord' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: AccessRecordsApi#get_record\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all account records.
    # <i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Returns a paginated records list for the account. Only records the user has access to are returned.         <br><span class=\"badge badge-outline-secondary\">READ (or Admin): Authress:AccessRecords/{recordId}</span>
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Max number of results to return (default to 20)
    # @option opts [String] :cursor Continuation cursor for paging (will automatically be set)
    # @option opts [String] :filter Filter to search records by. This is a case insensitive search through every text field.
    # @option opts [String] :status Filter records by their current status.
    # @return [AccessRecordCollection]
    def get_records(opts = {})
      data, _status_code, _headers = get_records_with_http_info(opts)
      data
    end

    # Get all account records.
    # &lt;i class&#x3D;\&quot;far fa-money-bill-alt text-primary\&quot;&gt;&lt;/i&gt; &lt;span class&#x3D;\&quot;text-primary\&quot;&gt;Billable&lt;/span&gt; Returns a paginated records list for the account. Only records the user has access to are returned.         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;READ (or Admin): Authress:AccessRecords/{recordId}&lt;/span&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Max number of results to return
    # @option opts [String] :cursor Continuation cursor for paging (will automatically be set)
    # @option opts [String] :filter Filter to search records by. This is a case insensitive search through every text field.
    # @option opts [String] :status Filter records by their current status.
    # @return [Array<(AccessRecordCollection, Integer, Hash)>] AccessRecordCollection data, response status code and response headers
    def get_records_with_http_info(opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: AccessRecordsApi.get_records ...'
      end
      if @authress_client.config[:client_side_validation] && opts[:'status'] && !['ACTIVE', 'DELETED'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of ACTIVE, DELETED'
      end
      # resource path
      local_var_path = '/v1/records'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @authress_client.select_header_accept(['application/links+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'AccessRecordCollection' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: AccessRecordsApi#get_records\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Accept an invite.
    # Accepts an invite by claiming this invite by this user. The user token used for this request will gain the permissions associated with the invite.
    # @param invite_id The identifier of the invite.
    # @param [Hash] opts the optional parameters
    # @return [Account]
    def respond_to_invite(invite_id, opts = {})
      data, _status_code, _headers = respond_to_invite_with_http_info(invite_id, opts)
      data
    end

    # Accept an invite.
    # Accepts an invite by claiming this invite by this user. The user token used for this request will gain the permissions associated with the invite.
    # @param invite_id The identifier of the invite.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Account, Integer, Hash)>] Account data, response status code and response headers
    def respond_to_invite_with_http_info(invite_id, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: AccessRecordsApi.respond_to_invite ...'
      end
      # verify the required parameter 'invite_id' is set
      if @authress_client.config[:client_side_validation] && invite_id.nil?
        fail ArgumentError, "Missing the required parameter 'invite_id' when calling AccessRecordsApi.respond_to_invite"
      end
      # resource path
      local_var_path = '/v1/invites/{inviteId}'.sub('{' + 'inviteId' + '}', invite_id.to_s)

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
      data, status_code, headers = @authress_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: AccessRecordsApi#respond_to_invite\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update an access record.
    # Updates an access record adding or removing user permissions to resources. (Records have a maximum size of ~100KB)         <br><span class=\"badge badge-outline-secondary\">UPDATE (or Admin): Authress:AccessRecords/{recordId}</span><span class=\"badge badge-outline-secondary\">GRANT: Existing Resource Permissions</span>
    # @param body 
    # @param record_id The identifier of the access record.
    # @param [Hash] opts the optional parameters
    # @return [AccessRecord]
    def update_record(body, record_id, opts = {})
      data, _status_code, _headers = update_record_with_http_info(body, record_id, opts)
      data
    end

    # Update an access record.
    # Updates an access record adding or removing user permissions to resources. (Records have a maximum size of ~100KB)         &lt;br&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;UPDATE (or Admin): Authress:AccessRecords/{recordId}&lt;/span&gt;&lt;span class&#x3D;\&quot;badge badge-outline-secondary\&quot;&gt;GRANT: Existing Resource Permissions&lt;/span&gt;
    # @param body 
    # @param record_id The identifier of the access record.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccessRecord, Integer, Hash)>] AccessRecord data, response status code and response headers
    def update_record_with_http_info(body, record_id, opts = {})
      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug 'Calling API: AccessRecordsApi.update_record ...'
      end
      # verify the required parameter 'body' is set
      if @authress_client.config[:client_side_validation] && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AccessRecordsApi.update_record"
      end
      # verify the required parameter 'record_id' is set
      if @authress_client.config[:client_side_validation] && record_id.nil?
        fail ArgumentError, "Missing the required parameter 'record_id' when calling AccessRecordsApi.update_record"
      end
      # resource path
      local_var_path = '/v1/records/{recordId}'.sub('{' + 'recordId' + '}', record_id.to_s)

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

      return_type = opts[:return_type] || 'AccessRecord' 

      auth_names = opts[:auth_names] || ['oauth2']
      data, status_code, headers = @authress_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @authress_client.config[:debugging]
        @authress_client.config[:logger].debug "API called: AccessRecordsApi#update_record\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
