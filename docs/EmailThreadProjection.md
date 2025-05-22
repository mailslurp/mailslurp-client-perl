# MailSlurp::Object::EmailThreadProjection

## Load the model package
```perl
use MailSlurp::Object::EmailThreadProjection;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | [**SenderProjection**](SenderProjection) |  | [optional] 
**recipients** | [**EmailRecipientsProjection**](EmailRecipientsProjection) |  | [optional] 
**user_id** | **string** | User ID | 
**inbox_id** | **string** | Inbox ID | [optional] 
**updated_at** | **DateTime** | Updated at DateTime | 
**created_at** | **DateTime** | Created at DateTime | 
**to** | **ARRAY[string]** | To recipients | 
**cc** | **ARRAY[string]** | CC recipients | [optional] 
**bcc** | **ARRAY[string]** | BCC recipients | [optional] 
**has_attachments** | **boolean** | Has attachments | 
**unread** | **boolean** | Has unread | 
**message_count** | **int** | Number of messages in the thread | 
**last_body_excerpt** | **string** | Last body excerpt | [optional] 
**last_text_excerpt** | **string** | Last text excerpt | [optional] 
**last_created_at** | **DateTime** | Last email created time | [optional] 
**last_from** | **string** | Last sender | [optional] 
**last_sender** | [**SenderProjection**](SenderProjection) |  | [optional] 
**subject** | **string** | Thread topic subject | [optional] 
**id** | **string** | ID of email thread | 
**from** | **string** | From sender | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


