# AuthressSdk::InlineResponse20015

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key_id** | **String** | The unique id of the client. | [optional] 
**client_id** | **String** | The unique id of the client. | 
**generation_date** | **DateTime** |  | [optional] 
**access_key** | **String** | An encoded access key which contains identifying information for client access token creation. For direct use with the Authress SDKs, not meant to be decoded. Must be saved on created, as it will never be returned from the API ever again. Authress only saved the corresponding public key to verify private access keys. | [optional] 

