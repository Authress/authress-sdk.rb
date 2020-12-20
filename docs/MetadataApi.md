# AuthressSdk::MetadataApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user_metadata**](MetadataApi.md#get_user_metadata) | **GET** /v1/users/{userId}/resources/{resourceUri}/metadata | Get the metadata for a resource.
[**update_user_metadata**](MetadataApi.md#update_user_metadata) | **PUT** /v1/users/{userId}/resources/{resourceUri}/metadata | Update the metadata for a resource.

# **get_user_metadata**
> InlineResponse2001 get_user_metadata(user_id, resource_uri)

Get the metadata for a resource.

<i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Metadata is partitioned by the resource owner, and each can store independent data for a resource. This data is only accessible by identity provider tokens which specify the <strong>sub</strong> property and by service clients which have the <strong>grantMetadataAccess</strong> property.         <br><span class=\"badge badge-outline-secondary\">READ: Authress:MetadataResources/{resourceUri}</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::MetadataApi.new
user_id = 'user_id_example' # String | The owner of the data.
resource_uri = 'resource_uri_example' # String | The resource the data is attached to.


begin
  #Get the metadata for a resource.
  result = api_instance.get_user_metadata(user_id, resource_uri)
  p result
rescue AuthressSdk::ApiError => e
  puts "Exception when calling MetadataApi->get_user_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The owner of the data. | 
 **resource_uri** | **String**| The resource the data is attached to. | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/links+json



# **update_user_metadata**
> InlineResponse2001 update_user_metadata(bodyuser_idresource_uri)

Update the metadata for a resource.

<i class=\"far fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> Each owner can store independent data for a resource. This data is only accessible by identity provider tokens which specify the <strong>sub</strong> property and by service clients which have the <strong>grantMetadataAccess</strong> property. The underlying resource does not need to actually exist in Authress to manage and update the data.         <br><span class=\"badge badge-outline-secondary\">UPDATE: Authress:MetadataResources/{resourceUri}</span>

### Example
```ruby
# load the gem
require 'authress_sdk'
# setup authorization
AuthressSdk.configure do |config|
end

api_instance = AuthressSdk::MetadataApi.new
body = AuthressSdk::Body.new # Body | <strong>Important</strong>: Data request object which contains properties identifying the data as well as the metadata itself. While there is limited access, the data saved here should be considered encrypted with best practices (Encrypted in Transit and Encrypted at Rest only). However, while Authress will to store and access in the data in a safe way, usage of this endpoint affirms this data must be application data and not user data. If there are explicit regulations or compliances regarding the data and how it should be saved here, this endpoint must not be used. That includes, but is not limited to--user personal data, data that is protected by GDPR and similar data protection regulations.
user_id = 'user_id_example' # String | The owner of the data.
resource_uri = 'resource_uri_example' # String | The resource the data is attached to.


begin
  #Update the metadata for a resource.
  result = api_instance.update_user_metadata(bodyuser_idresource_uri)
  p result
rescue AuthressSdk::ApiError => e
  puts "Exception when calling MetadataApi->update_user_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](Body.md)| &lt;strong&gt;Important&lt;/strong&gt;: Data request object which contains properties identifying the data as well as the metadata itself. While there is limited access, the data saved here should be considered encrypted with best practices (Encrypted in Transit and Encrypted at Rest only). However, while Authress will to store and access in the data in a safe way, usage of this endpoint affirms this data must be application data and not user data. If there are explicit regulations or compliances regarding the data and how it should be saved here, this endpoint must not be used. That includes, but is not limited to--user personal data, data that is protected by GDPR and similar data protection regulations. | 
 **user_id** | **String**| The owner of the data. | 
 **resource_uri** | **String**| The resource the data is attached to. | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/links+json



