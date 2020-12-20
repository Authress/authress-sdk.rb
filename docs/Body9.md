# AuthressSdk::Body9

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**jwt** | **String** | A valid JWT OIDC compliant token which will still pass authentication requests to the identity provider. Must contain a unique audience and issuer. | 
**preferred_audience** | [****](.md) | If the &#x60;jwt&#x60; token contains more than one valid audience, then the single audience that should associated with Authress. If more than one audience is preferred, repeat this call with each one. | [optional] 

