# AuthressSdk::PermissionObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** | The action the permission grants, can be scoped using &#x60;:&#x60; and parent actions imply sub-resource permissions, action:* or action implies action:sub-action. This property is case-insensitive, it will always be cast to lowercase before comparing actions to user permissions. | 
**allow** | **BOOLEAN** | Does this permission grant the user the ability to execute the action? | 
**grant** | **BOOLEAN** | Allows the user to give the permission to others without being able to execute the action. | 
**delegate** | **BOOLEAN** | Allows delegating or granting the permission to others without being able to execute tha action. | 

