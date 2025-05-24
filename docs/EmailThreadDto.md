# MailSlurp::Object::EmailThreadDto

## Load the model package
```perl
use MailSlurp::Object::EmailThreadDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | ID of email thread | 
**user_id** | **string** | User ID | 
**inbox_id** | **string** | Inbox ID | [optional] 
**from** | **string** | From sender | [optional] 
**to** | **ARRAY[string]** | To recipients | 
**cc** | **ARRAY[string]** | CC recipients | [optional] 
**bcc** | **ARRAY[string]** | BCC recipients | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**subject** | **string** | Thread topic subject | [optional] 
**created_at** | **DateTime** | Created at DateTime | 
**updated_at** | **DateTime** | Updated at DateTime | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


