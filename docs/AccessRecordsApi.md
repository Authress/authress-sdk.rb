# SwaggerClient::AccessRecordsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_claim**](AccessRecordsApi.md#create_claim) | **POST** /v1/claims | Claim a resource by an allowed user.
[**create_invite**](AccessRecordsApi.md#create_invite) | **POST** /v1/invites | Create a new invite.
[**create_record**](AccessRecordsApi.md#create_record) | **POST** /v1/records | Create a new access record.
[**delete_invite**](AccessRecordsApi.md#delete_invite) | **DELETE** /v1/invites/{inviteId} | Delete an invite.
[**delete_record**](AccessRecordsApi.md#delete_record) | **DELETE** /v1/records/{recordId} | Deletes an access record.
[**get_record**](AccessRecordsApi.md#get_record) | **GET** /v1/records/{recordId} | Get an access record for the account.
[**get_records**](AccessRecordsApi.md#get_records) | **GET** /v1/records | Get all account records.
[**respond_to_invite**](AccessRecordsApi.md#respond_to_invite) | **PATCH** /v1/invites/{inviteId} | Accept an invite.
[**update_record**](AccessRecordsApi.md#update_record) | **PUT** /v1/records/{recordId} | Update an access record.

# **create_claim**
> Object create_claim(body)

Claim a resource by an allowed user.

Claim a resource by allowing a user to pick an identifier and receive admin access to that resource if it hasn't already been claimed. This only works for resources specifically marked as <strong>CLAIM</strong>. The result will be a new access record listing that user as the admin for this resource. The resourceUri will be appended to the collection resource uri using a '/' (forward slash) automatically.         <br><span class=\"badge badge-outline-secondary\">RESOURCE CLAIM: {resourceUri}</span> or <span class=\"badge badge-outline-secondary\">DELEGATE *: {resourceUri}</span>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
body = SwaggerClient::Body8.new # Body8 | 


begin
  #Claim a resource by an allowed user.
  result = api_instance.create_claim(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->create_claim: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body8**](Body8.md)|  | 

### Return type

**Object**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/links+json



# **create_invite**
> create_invite(body)

Create a new invite.

Invites are used to easily assign permissions to users that have not been created in your identity provider yet. Create the invite with an email address, and then when the user accepts the invite they will automatically get the permissions assigned here. Invites automatically expire after 7 days.         <br><span class=\"badge badge-outline-secondary\">GRANT: Existing Resource Permissions</span>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
body = SwaggerClient::Body5.new # Body5 | 


begin
  #Create a new invite.
  api_instance.create_invite(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->create_invite: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body5**](Body5.md)|  | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **create_record**
> InlineResponse2008 create_record(body)

Create a new access record.

Specify user roles for specific resources. (Records have a maximum size of ~100KB)         <br><span class=\"badge badge-outline-secondary\">GRANT: Existing Resource Permissions</span>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
body = SwaggerClient::Body3.new # Body3 | 


begin
  #Create a new access record.
  result = api_instance.create_record(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->create_record: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body3**](Body3.md)|  | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/links+json



# **delete_invite**
> delete_invite(invite_id)

Delete an invite.

Deletes an invite.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:UserPermissions/{userId}</span>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
invite_id = 'invite_id_example' # String | The identifier of the invite.


begin
  #Delete an invite.
  api_instance.delete_invite(invite_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->delete_invite: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invite_id** | **String**| The identifier of the invite. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_record**
> delete_record(record_id)

Deletes an access record.

Remove an access record, removing associated permissions from all users in record. If a user has a permission from another record, that permission will not be removed. (Note: This disables the record by changing the status to <strong>DELETED</strong> but not completely remove the record for tracking purposes.           <br><span class=\"badge badge-outline-secondary\">UPDATE (or Admin): Authress:AccessRecords/{recordId}</span>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
record_id = 'record_id_example' # String | The identifier of the access record.


begin
  #Deletes an access record.
  api_instance.delete_record(record_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->delete_record: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **record_id** | **String**| The identifier of the access record. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_record**
> InlineResponse2008 get_record(record_id)

Get an access record for the account.

Access records contain information assigning permissions to users for resources.         <br><span class=\"badge badge-outline-secondary\">READ (or Admin): Authress:AccessRecords/{recordId}</span>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
record_id = 'record_id_example' # String | The identifier of the access record.


begin
  #Get an access record for the account.
  result = api_instance.get_record(record_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->get_record: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **record_id** | **String**| The identifier of the access record. | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **get_records**
> InlineResponse2007 get_records(opts)

Get all account records.

<i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Returns a paginated records list for the account. Only records the user has access to are returned.         <br><span class=\"badge badge-outline-secondary\">READ (or Admin): Authress:AccessRecords/{recordId}</span>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
opts = { 
  limit: 20, # Integer | Max number of results to return
  cursor: 'cursor_example', # String | Continuation cursor for paging (will automatically be set)
  filter: 'filter_example', # String | Filter to search records by. This is a case insensitive search through every text field.
  status: 'status_example' # String | Filter records by their current status.
}

begin
  #Get all account records.
  result = api_instance.get_records(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->get_records: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Max number of results to return | [optional] [default to 20]
 **cursor** | **String**| Continuation cursor for paging (will automatically be set) | [optional] 
 **filter** | **String**| Filter to search records by. This is a case insensitive search through every text field. | [optional] 
 **status** | **String**| Filter records by their current status. | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **respond_to_invite**
> InlineResponse2009 respond_to_invite(invite_id)

Accept an invite.

Accepts an invite by claiming this invite by this user. The user token used for this request will gain the permissions associated with the invite.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
invite_id = 'invite_id_example' # String | The identifier of the invite.


begin
  #Accept an invite.
  result = api_instance.respond_to_invite(invite_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->respond_to_invite: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invite_id** | **String**| The identifier of the invite. | 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **update_record**
> InlineResponse2008 update_record(bodyrecord_id)

Update an access record.

Updates an access record adding or removing user permissions to resources. (Records have a maximum size of ~100KB)         <br><span class=\"badge badge-outline-secondary\">UPDATE (or Admin): Authress:AccessRecords/{recordId}</span><span class=\"badge badge-outline-secondary\">GRANT: Existing Resource Permissions</span>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
body = SwaggerClient::Body4.new # Body4 | 
record_id = 'record_id_example' # String | The identifier of the access record.


begin
  #Update an access record.
  result = api_instance.update_record(bodyrecord_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->update_record: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body4**](Body4.md)|  | 
 **record_id** | **String**| The identifier of the access record. | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/links+json



