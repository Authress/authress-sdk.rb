# SwaggerClient::ServiceClientsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_client**](ServiceClientsApi.md#create_client) | **POST** /v1/clients | Create a new client.
[**delete_access_key**](ServiceClientsApi.md#delete_access_key) | **DELETE** /v1/clients/{clientId}/access-keys/{keyId} | Remove an access key for a client.
[**delete_client**](ServiceClientsApi.md#delete_client) | **DELETE** /v1/clients/{clientId} | Delete a client.
[**get_client**](ServiceClientsApi.md#get_client) | **GET** /v1/clients/{clientId} | Get a client.
[**get_clients**](ServiceClientsApi.md#get_clients) | **GET** /v1/clients | Get clients collection.
[**request_access_key**](ServiceClientsApi.md#request_access_key) | **POST** /v1/clients/{clientId}/access-keys | Request a new access key.
[**update_client**](ServiceClientsApi.md#update_client) | **PUT** /v1/clients/{clientId} | Update a client.

# **create_client**
> InlineResponse20014 create_client(body)

Create a new client.

Creates a service client to interact with Authress or any other service on behalf of users. Each client has secret private keys used to authenticate with Authress. To use service clients created through other mechanisms, skip creating a client and create access records with the client identifier.         <br><span class=\"badge badge-outline-secondary\">CREATE: Authress:ServiceClients</span> or <span class=\"badge badge-outline-secondary\">RESOURCE CLAIM: Authress:ServiceClients</span>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ServiceClientsApi.new
body = SwaggerClient::Body10.new # Body10 | 


begin
  #Create a new client.
  result = api_instance.create_client(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceClientsApi->create_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body10**](Body10.md)|  | 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/links+json



# **delete_access_key**
> delete_access_key(client_id, key_id)

Remove an access key for a client.

Deletes an access key for a client prevent it from being used to authenticate with Authress.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:ServiceClients/{clientId}/access-keys/{keyId}</span>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ServiceClientsApi.new
client_id = 'client_id_example' # String | The unique identifier of the client.
key_id = 'key_id_example' # String | The id of the access key to remove from the client.


begin
  #Remove an access key for a client.
  api_instance.delete_access_key(client_id, key_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceClientsApi->delete_access_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| The unique identifier of the client. | 
 **key_id** | **String**| The id of the access key to remove from the client. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_client**
> delete_client(client_id)

Delete a client.

This deletes the service client.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:ServiceClients/{clientId}</span>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ServiceClientsApi.new
client_id = 'client_id_example' # String | The unique identifier for the client.


begin
  #Delete a client.
  api_instance.delete_client(client_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceClientsApi->delete_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| The unique identifier for the client. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_client**
> InlineResponse20014 get_client(client_id)

Get a client.

Returns all information related to client except for the private access keys.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:ServiceClients/{clientId}</span>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ServiceClientsApi.new
client_id = 'client_id_example' # String | The unique identifier for the client.


begin
  #Get a client.
  result = api_instance.get_client(client_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceClientsApi->get_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| The unique identifier for the client. | 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **get_clients**
> InlineResponse20013 get_clients

Get clients collection.

Returns all clients that the user has access to in the account.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:ServiceClients/{clientId}</span>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ServiceClientsApi.new

begin
  #Get clients collection.
  result = api_instance.get_clients
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceClientsApi->get_clients: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **request_access_key**
> InlineResponse20015 request_access_key(client_id)

Request a new access key.

Create a new access key for the client so that a service can authenticate with Authress as that client. Using the client will allow delegation of permission checking of users.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:ServiceClients/{clientId}/access-keys</span>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ServiceClientsApi.new
client_id = 'client_id_example' # String | The unique identifier of the client.


begin
  #Request a new access key.
  result = api_instance.request_access_key(client_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceClientsApi->request_access_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| The unique identifier of the client. | 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **update_client**
> InlineResponse20014 update_client(bodyclient_id)

Update a client.

Updates a client information.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:ServiceClients/{clientId}</span>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ServiceClientsApi.new
body = SwaggerClient::Body11.new # Body11 | 
client_id = 'client_id_example' # String | The unique identifier for the client.


begin
  #Update a client.
  result = api_instance.update_client(bodyclient_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceClientsApi->update_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body11**](Body11.md)|  | 
 **client_id** | **String**| The unique identifier for the client. | 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/links+json



