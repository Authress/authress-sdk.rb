# AuthressSdk::RolesApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_role**](RolesApi.md#create_role) | **POST** /v1/roles | Create a role.
[**delete_role**](RolesApi.md#delete_role) | **DELETE** /v1/roles/{roleId} | Deletes a role.
[**get_role**](RolesApi.md#get_role) | **GET** /v1/roles/{roleId} | Get a role.
[**update_role**](RolesApi.md#update_role) | **PUT** /v1/roles/{roleId} | Update a role.

# **create_role**
> InlineResponse20010 create_role(body)

Create a role.

Creates a role with permissions.         <br><span class=\"badge badge-outline-secondary\">CREATE: Authress:Roles</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::RolesApi.new
body = AuthressSdk::Body6.new # Body6 | 


begin
  #Create a role.
  result = api_instance.create_role(body)
  p result
rescue AuthressSdk::ApiError => e
  puts "Exception when calling RolesApi->create_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body6**](Body6.md)|  | 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/links+json



# **delete_role**
> delete_role(role_id)

Deletes a role.

Remove a role. If a record references the role, that record will not be modified.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:Roles/{roleId}</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::RolesApi.new
role_id = 'role_id_example' # String | The identifier of the role.


begin
  #Deletes a role.
  api_instance.delete_role(role_id)
rescue AuthressSdk::ApiError => e
  puts "Exception when calling RolesApi->delete_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **String**| The identifier of the role. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_role**
> InlineResponse20010 get_role(role_id)

Get a role.

Roles contain a list of permissions that will be applied to any user or resource         <br><span class=\"badge badge-outline-secondary\">READ: Authress:Roles/{roleId}</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::RolesApi.new
role_id = 'role_id_example' # String | The identifier of the role.


begin
  #Get a role.
  result = api_instance.get_role(role_id)
  p result
rescue AuthressSdk::ApiError => e
  puts "Exception when calling RolesApi->get_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **String**| The identifier of the role. | 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **update_role**
> InlineResponse20010 update_role(bodyrole_id)

Update a role.

Updates a role adding or removing permissions.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:Roles/{roleId}</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::RolesApi.new
body = AuthressSdk::Body7.new # Body7 | 
role_id = 'role_id_example' # String | The identifier of the role.


begin
  #Update a role.
  result = api_instance.update_role(bodyrole_id)
  p result
rescue AuthressSdk::ApiError => e
  puts "Exception when calling RolesApi->update_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body7**](Body7.md)|  | 
 **role_id** | **String**| The identifier of the role. | 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/links+json



