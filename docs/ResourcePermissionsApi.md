# AuthressSdk::ResourcePermissionsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_resource_permissions**](ResourcePermissionsApi.md#get_resource_permissions) | **GET** /v1/resources/{resourceUri} | Get a resource permissions object.
[**get_resource_users**](ResourcePermissionsApi.md#get_resource_users) | **GET** /v1/resources/{resourceUri}/users | Get the users that have explicit access to this resource.
[**get_resources**](ResourcePermissionsApi.md#get_resources) | **GET** /v1/resources | List resource configurations.
[**update_resource_permissions**](ResourcePermissionsApi.md#update_resource_permissions) | **PUT** /v1/resources/{resourceUri} | Update a resource permissions object.

# **get_resource_permissions**
> InlineResponse2005 get_resource_permissions(resource_uri)

Get a resource permissions object.

Permissions can be set globally at a resource level. This will apply to all users in an account.         <br><span class=\"badge badge-outline-secondary\">GRANT *: Authress:ResourcePermissions/{resourceUri}</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::ResourcePermissionsApi.new
resource_uri = 'resource_uri_example' # String | The uri path of a resource to validate, must be URL encoded, uri segments are allowed.


begin
  #Get a resource permissions object.
  result = api_instance.get_resource_permissions(resource_uri)
  p result
rescue AuthressSdk::ApiError => e
  puts "Exception when calling ResourcePermissionsApi->get_resource_permissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_uri** | **String**| The uri path of a resource to validate, must be URL encoded, uri segments are allowed. | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **get_resource_users**
> InlineResponse2006 get_resource_users(resource_uri, opts)

Get the users that have explicit access to this resource.

<i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Get the resource users. This result is a list of users that have some permission to the resource. Users with access to higher level resources nor users with access only to a sub-resource, will not be returned in this result. In the case that the resource has multiple users, the list will be paginated.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:UserPermissions/{userId}</span><span class=\"badge badge-outline-secondary\">GRANT *: Authress:ResourcePermissions/{resourceUri}</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::ResourcePermissionsApi.new
resource_uri = 'resource_uri_example' # String | The uri path of a resource to validate, must be URL encoded, uri segments are allowed.
opts = { 
  limit: 20, # Integer | Max number of results to return
  cursor: 'cursor_example' # String | Continuation cursor for paging (will automatically be set)
}

begin
  #Get the users that have explicit access to this resource.
  result = api_instance.get_resource_users(resource_uri, opts)
  p result
rescue AuthressSdk::ApiError => e
  puts "Exception when calling ResourcePermissionsApi->get_resource_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_uri** | **String**| The uri path of a resource to validate, must be URL encoded, uri segments are allowed. | 
 **limit** | **Integer**| Max number of results to return | [optional] [default to 20]
 **cursor** | **String**| Continuation cursor for paging (will automatically be set) | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **get_resources**
> InlineResponse2004 get_resources

List resource configurations.

Permissions can be set globally at a resource level. Lists any resources with a globally set resource policy.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:ResourcePermissions</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::ResourcePermissionsApi.new

begin
  #List resource configurations.
  result = api_instance.get_resources
  p result
rescue AuthressSdk::ApiError => e
  puts "Exception when calling ResourcePermissionsApi->get_resources: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **update_resource_permissions**
> update_resource_permissions(bodyresource_uri)

Update a resource permissions object.

Updates the global permissions on a resource. This applies to all users in an account.         <br><span class=\"badge badge-outline-secondary\">GRANT *: Authress:ResourcePermissions/{resourceUri}</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::ResourcePermissionsApi.new
body = AuthressSdk::Body2.new # Body2 | The contents of the permission to set on the resource. Overwrites existing data.
resource_uri = 'resource_uri_example' # String | The uri path of a resource to validate, must be URL encoded, uri segments are allowed.


begin
  #Update a resource permissions object.
  api_instance.update_resource_permissions(bodyresource_uri)
rescue AuthressSdk::ApiError => e
  puts "Exception when calling ResourcePermissionsApi->update_resource_permissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body2**](Body2.md)| The contents of the permission to set on the resource. Overwrites existing data. | 
 **resource_uri** | **String**| The uri path of a resource to validate, must be URL encoded, uri segments are allowed. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



