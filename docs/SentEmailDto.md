# MailSlurp::Object::SentEmailDto

## Load the model package
```perl
use MailSlurp::Object::SentEmailDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **ARRAY[string]** | Array of IDs of attachments that were sent with this email | [optional] 
**bcc** | **ARRAY[string]** |  | [optional] 
**body** | **string** |  | [optional] 
**body_md5_hash** | **string** | MD5 Hash | [optional] 
**cc** | **ARRAY[string]** |  | [optional] 
**charset** | **string** |  | [optional] 
**from** | **string** |  | [optional] 
**id** | **string** | ID of sent email | [optional] 
**inbox_id** | **string** | Inbox ID email was sent from | [optional] 
**is_html** | **boolean** |  | [optional] 
**pixel_ids** | **ARRAY[string]** |  | [optional] 
**reply_to** | **string** |  | [optional] 
**sent_at** | **DateTime** |  | 
**subject** | **string** |  | [optional] 
**to** | **ARRAY[string]** | Recipients email was sent to | [optional] 
**user_id** | **string** | User ID | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


