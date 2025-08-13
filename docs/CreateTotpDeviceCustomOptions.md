# MailSlurp::Object::CreateTotpDeviceCustomOptions

## Load the model package
```perl
use MailSlurp::Object::CreateTotpDeviceCustomOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**secret** | **string** | The base32 encoded secret provided by the identity provider for the TOTP device. | 
**name** | **string** | Name for labeling the TOTP device | [optional] 
**username** | **string** | Optional username for the TOTP device | [optional] 
**issuer** | **string** | Optional issuer override for the TOTP device | [optional] 
**digits** | **int** | Optional number of digits in TOTP code | [optional] [default to 6]
**period** | **int** | Optional period in seconds for TOTP code expiration | [optional] [default to 30]
**algorithm** | **string** | Optional algorithm override | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


