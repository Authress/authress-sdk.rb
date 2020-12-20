# AuthressSdk::AccountsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account**](AccountsApi.md#get_account) | **GET** /v1/accounts/{accountId} | Get account information.
[**get_account_identities**](AccountsApi.md#get_account_identities) | **GET** /v1/identities | Get all linked identities for this account.
[**get_accounts**](AccountsApi.md#get_accounts) | **GET** /v1/accounts | Get all accounts user has access to
[**link_identity**](AccountsApi.md#link_identity) | **POST** /v1/identities | Link a new account identity.

# **get_account**
> InlineResponse2009 get_account(account_id)

Get account information.

Includes the original configuration information.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:Configuration</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::AccountsApi.new
account_id = 'account_id_example' # String | The unique identifier for the account


begin
  #Get account information.
  result = api_instance.get_account(account_id)
  p result
rescue AuthressSdk::ApiError => e
  puts "Exception when calling AccountsApi->get_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The unique identifier for the account | 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **get_account_identities**
> InlineResponse20012 get_account_identities

Get all linked identities for this account.

Returns a list of identities linked for this account.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:Configuration</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::AccountsApi.new

begin
  #Get all linked identities for this account.
  result = api_instance.get_account_identities
  p result
rescue AuthressSdk::ApiError => e
  puts "Exception when calling AccountsApi->get_account_identities: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **get_accounts**
> InlineResponse20011 get_accounts

Get all accounts user has access to

Returns a list of accounts that the user has access to.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:Configuration</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::AccountsApi.new

begin
  #Get all accounts user has access to
  result = api_instance.get_accounts
  p result
rescue AuthressSdk::ApiError => e
  puts "Exception when calling AccountsApi->get_accounts: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **link_identity**
> link_identity(body)

Link a new account identity.

An identity is a JWT subscriber *sub* and issuer *iss*. Only one account my be linked to a particular JWT combination. Allows calling the API with a federated token directly instead of using a client access key.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:Configuration</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::AccountsApi.new
body = AuthressSdk::Body9.new # Body9 | 


begin
  #Link a new account identity.
  api_instance.link_identity(body)
rescue AuthressSdk::ApiError => e
  puts "Exception when calling AccountsApi->link_identity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body9**](Body9.md)|  | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



