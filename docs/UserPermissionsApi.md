# AuthressSdk::UserPermissionsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorize_user**](UserPermissionsApi.md#authorize_user) | **GET** /v1/users/{userId}/resources/{resourceUri}/permissions/{permission} | Check to see if a user has permissions to a resource.
[**disable_user_token**](UserPermissionsApi.md#disable_user_token) | **DELETE** /v1/users/{userId}/tokens/{tokenId} | Disable a token.
[**get_user_permissions_for_resource**](UserPermissionsApi.md#get_user_permissions_for_resource) | **GET** /v1/users/{userId}/resources/{resourceUri}/permissions | Get the permissions a user has to a resource.
[**get_user_resources**](UserPermissionsApi.md#get_user_resources) | **GET** /v1/users/{userId}/resources | Get the resources a user has to permission to.
[**request_user_token**](UserPermissionsApi.md#request_user_token) | **POST** /v1/users/{userId}/tokens | Request a user token with additional configuration.

# **authorize_user**
> authorize_user(user_id, resource_uri, permission)

Check to see if a user has permissions to a resource.

<i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Does the user have the specified permissions to the resource?         <br><span class=\"badge badge-outline-secondary\">READ: Authress:UserPermissions/{userId}</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::UserPermissionsApi.new
user_id = 'user_id_example' # String | The user to check permissions on
resource_uri = 'resource_uri_example' # String | The uri path of a resource to validate, must be URL encoded, uri segments are allowed, the resource must be a full path, and permissions are not inherited by sub-resources.
permission = 'permission_example' # String | Permission to check, '*' and scoped permissions can also be checked here.


begin
  #Check to see if a user has permissions to a resource.
  api_instance.authorize_user(user_id, resource_uri, permission)
rescue AuthressSdk::ApiError => e
  puts "Exception when calling UserPermissionsApi->authorize_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user to check permissions on | 
 **resource_uri** | **String**| The uri path of a resource to validate, must be URL encoded, uri segments are allowed, the resource must be a full path, and permissions are not inherited by sub-resources. | 
 **permission** | **String**| Permission to check, &#x27;*&#x27; and scoped permissions can also be checked here. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **disable_user_token**
> disable_user_token(user_id, token_id)

Disable a token.

<i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Permanently disable a token. To be used after the token has completed its use. Should be called on all tokens to ensure they are not active indefinitely.         <br><span class=\"badge badge-outline-secondary\">CONTACT: AuthressSupport</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::UserPermissionsApi.new
user_id = 'user_id_example' # String | The user to create an impersonation token for.
token_id = 'token_id_example' # String | The relevant token identifier


begin
  #Disable a token.
  api_instance.disable_user_token(user_id, token_id)
rescue AuthressSdk::ApiError => e
  puts "Exception when calling UserPermissionsApi->disable_user_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user to create an impersonation token for. | 
 **token_id** | **String**| The relevant token identifier | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_user_permissions_for_resource**
> InlineResponse2002 get_user_permissions_for_resource(user_id, resource_uri)

Get the permissions a user has to a resource.

<i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Get a summary of the permissions a user has to a particular resource.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:UserPermissions/{userId}</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::UserPermissionsApi.new
user_id = 'user_id_example' # String | The user to check permissions on
resource_uri = 'resource_uri_example' # String | The uri path of a resource to validate, must be URL encoded, uri segments are allowed.


begin
  #Get the permissions a user has to a resource.
  result = api_instance.get_user_permissions_for_resource(user_id, resource_uri)
  p result
rescue AuthressSdk::ApiError => e
  puts "Exception when calling UserPermissionsApi->get_user_permissions_for_resource: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user to check permissions on | 
 **resource_uri** | **String**| The uri path of a resource to validate, must be URL encoded, uri segments are allowed. | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **get_user_resources**
> InlineResponse200 get_user_resources(user_id, opts)

Get the resources a user has to permission to.

<i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Get the users resources. This result is a list of resource uris that a user has an explicit permission to, a user with * access to all sub resources will return an empty list. To get a user's list of resources in this cases, it is recommended to also check explicit access to the collection resource, using the <strong>authorizeUser</strong> endpoint. In the case that the user only has access to a subset of resources in a collection, the list will be paginated.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:UserPermissions/{userId}</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::UserPermissionsApi.new
user_id = 'user_id_example' # String | The user to check permissions on
opts = { 
  resource_uri: '*', # String | The top level uri path of a resource to query for. Will only match explicit or collection resource children. Will not partial match resource names.
  permissions: 'permissions_example', # String | Permission to check, '*' and scoped permissions can also be checked here. By default if the user has any permission explicitly to a resource, it will be included in the list.
  limit: 20, # Integer | Max number of results to return
  cursor: 'cursor_example' # String | Continuation cursor for paging (will automatically be set)
}

begin
  #Get the resources a user has to permission to.
  result = api_instance.get_user_resources(user_id, opts)
  p result
rescue AuthressSdk::ApiError => e
  puts "Exception when calling UserPermissionsApi->get_user_resources: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user to check permissions on | 
 **resource_uri** | **String**| The top level uri path of a resource to query for. Will only match explicit or collection resource children. Will not partial match resource names. | [optional] [default to *]
 **permissions** | **String**| Permission to check, &#x27;*&#x27; and scoped permissions can also be checked here. By default if the user has any permission explicitly to a resource, it will be included in the list. | [optional] 
 **limit** | **Integer**| Max number of results to return | [optional] [default to 20]
 **cursor** | **String**| Continuation cursor for paging (will automatically be set) | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **request_user_token**
> InlineResponse2003 request_user_token(bodyuser_id)

Request a user token with additional configuration.

<i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Get an Authress signed JWT access token using with userId as the sub. Additionally, can be configured to limit the permissions for this particular token and the length of time the token is valid. Token validation is real-time, so deleted tokens are restricted from being used as soon as they are deleted. This gives full control to the user and client creating the token. Client must have access to impersonating the user in order to generate tokens on their behalf.         <br><span class=\"badge badge-outline-secondary\">CONTACT: AuthressSupport</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::UserPermissionsApi.new
body = AuthressSdk::Body1.new # Body1 | The contents of the permission to set on the token. Will be used instead of the users or clients full permissions. Cannot include permissions that the user or client do not have.
user_id = 'user_id_example' # String | The user to create an impersonation token for.


begin
  #Request a user token with additional configuration.
  result = api_instance.request_user_token(bodyuser_id)
  p result
rescue AuthressSdk::ApiError => e
  puts "Exception when calling UserPermissionsApi->request_user_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body1**](Body1.md)| The contents of the permission to set on the token. Will be used instead of the users or clients full permissions. Cannot include permissions that the user or client do not have. | 
 **user_id** | **String**| The user to create an impersonation token for. | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/links+json



