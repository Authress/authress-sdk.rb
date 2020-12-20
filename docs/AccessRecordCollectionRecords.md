# SwaggerClient::AccessRecordCollectionRecords

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**record_id** | **String** | Unique identifier for the record, can be specified on record creation. | [optional] 
**name** | **String** | A helpful name for this record | 
**description** | [****](.md) | More details about this record | [optional] 
**status** | **String** | Current status of the access record. | [optional] 
**account** | [**V1recordsAccount**](V1recordsAccount.md) |  | 
**users** | [**Array&lt;V1recordsUsers&gt;**](V1recordsUsers.md) | The list of users this record applies to | 
**admins** | [**Array&lt;V1recordsUsers&gt;**](V1recordsUsers.md) | The list of admin that can edit this record even if they do not have global record edit permissions. | [optional] 
**statements** | [**Array&lt;V1usersuserIdtokensStatements&gt;**](V1usersuserIdtokensStatements.md) | A list of statements which match roles to resources. Users in this record have all statements apply to them | 
**links** | [**V1recordsLinks**](V1recordsLinks.md) |  | 

