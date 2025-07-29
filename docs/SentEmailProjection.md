# MailSlurp::Object::SentEmailProjection

## Load the model package
```perl
use MailSlurp::Object::SentEmailProjection;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**from** | **string** |  | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**subject** | **string** |  | [optional] 
**attachments** | **ARRAY[string]** |  | [optional] 
**inbox_id** | **string** |  | 
**user_id** | **string** |  | 
**created_at** | **DateTime** |  | 
**to** | **ARRAY[string]** |  | [optional] 
**cc** | **ARRAY[string]** |  | [optional] 
**bcc** | **ARRAY[string]** |  | [optional] 
**message_id** | **string** |  | [optional] 
**in_reply_to** | **string** |  | [optional] 
**body_excerpt** | **string** |  | [optional] 
**text_excerpt** | **string** |  | [optional] 
**body_md5_hash** | **string** |  | [optional] 
**virtual_send** | **boolean** |  | 
**thread_id** | **string** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


