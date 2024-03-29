# MailSlurp::Object::CreateContactOptions

## Load the model package
```perl
use MailSlurp::Object::CreateContactOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **string** |  | [optional] 
**last_name** | **string** |  | [optional] 
**company** | **string** |  | [optional] 
**email_addresses** | **ARRAY[string]** | Set of email addresses belonging to the contact | [optional] 
**tags** | **ARRAY[string]** | Tags that can be used to search and group contacts | [optional] 
**meta_data** | [**object**]() |  | [optional] 
**opt_out** | **boolean** | Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions. | [optional] 
**group_id** | **string** | Group IDs that contact belongs to | [optional] 
**verify_email_addresses** | **boolean** | Whether to validate contact email address exists | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


