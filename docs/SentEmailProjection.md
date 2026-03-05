# MailSlurp::Object::SentEmailProjection

## Load the model package
```perl
use MailSlurp::Object::SentEmailProjection;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **string** |  | [optional] 
**id** | **string** |  | 
**message_id** | **string** |  | [optional] 
**user_id** | **string** |  | 
**attachments** | **ARRAY[string]** |  | [optional] 
**inbox_id** | **string** |  | 
**created_at** | **DateTime** |  | 
**to** | **ARRAY[string]** |  | [optional] 
**cc** | **ARRAY[string]** |  | [optional] 
**bcc** | **ARRAY[string]** |  | [optional] 
**from** | **string** |  | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**in_reply_to** | **string** |  | [optional] 
**virtual_send** | **boolean** |  | 
**body_excerpt** | **string** |  | [optional] 
**text_excerpt** | **string** |  | [optional] 
**body_md5_hash** | **string** |  | [optional] 
**thread_id** | **string** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


