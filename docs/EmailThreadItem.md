# MailSlurp::Object::EmailThreadItem

## Load the model package
```perl
use MailSlurp::Object::EmailThreadItem;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_type** | **string** |  | 
**entity_id** | **string** |  | 
**body_excerpt** | **string** |  | [optional] 
**text_excerpt** | **string** |  | [optional] 
**subject** | **string** |  | [optional] 
**to** | **ARRAY[string]** |  | 
**from** | **string** |  | [optional] 
**bcc** | **ARRAY[string]** |  | [optional] 
**cc** | **ARRAY[string]** |  | [optional] 
**attachments** | **ARRAY[string]** |  | [optional] 
**created_at** | **DateTime** |  | 
**read** | **boolean** |  | 
**in_reply_to** | **string** |  | [optional] 
**message_id** | **string** |  | [optional] 
**thread_id** | **string** |  | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


