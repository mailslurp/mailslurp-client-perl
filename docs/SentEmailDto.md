# MailSlurp::Object::SentEmailDto

## Load the model package
```perl
use MailSlurp::Object::SentEmailDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | ID of sent email | 
**user_id** | **string** | User ID | 
**inbox_id** | **string** | Inbox ID email was sent from | 
**to** | **ARRAY[string]** | Recipients email was sent to | [optional] 
**from** | **string** |  | [optional] 
**reply_to** | **string** |  | [optional] 
**cc** | **ARRAY[string]** |  | [optional] 
**bcc** | **ARRAY[string]** |  | [optional] 
**attachments** | **ARRAY[string]** | Array of IDs of attachments that were sent with this email | [optional] 
**subject** | **string** |  | [optional] 
**body_md5_hash** | **string** | MD5 Hash | [optional] 
**body** | **string** |  | [optional] 
**charset** | **string** |  | [optional] 
**is_html** | **boolean** |  | [optional] 
**sent_at** | **DateTime** |  | 
**pixel_ids** | **ARRAY[string]** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


