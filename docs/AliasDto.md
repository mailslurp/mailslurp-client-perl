# MailSlurp::Object::AliasDto

## Load the model package
```perl
use MailSlurp::Object::AliasDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** |  | [optional] 
**email_address** | **string** | The alias&#39;s email address for receiving email | [optional] 
**id** | **string** |  | 
**inbox_id** | **string** | Inbox that is associated with the alias | [optional] 
**is_verified** | **boolean** | Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account | [optional] 
**masked_email_address** | **string** | The underlying email address that is hidden and will received forwarded email | [optional] 
**name** | **string** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**use_threads** | **boolean** | If alias will generate response threads or not when email are received by it | [optional] 
**user_id** | **string** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


