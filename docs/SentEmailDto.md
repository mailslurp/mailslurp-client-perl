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
**domain_id** | **string** | Domain ID | [optional] 
**to** | **ARRAY[string]** | Recipients email was sent to | [optional] 
**from** | **string** | Sent from address | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**reply_to** | **string** |  | [optional] 
**cc** | **ARRAY[string]** |  | [optional] 
**bcc** | **ARRAY[string]** |  | [optional] 
**attachments** | **ARRAY[string]** | Array of IDs of attachments that were sent with this email | [optional] 
**subject** | **string** |  | [optional] 
**body_md5_hash** | **string** | MD5 Hash | [optional] 
**body** | **string** | Sent email body | [optional] 
**to_contacts** | **ARRAY[string]** |  | [optional] 
**to_group** | **string** |  | [optional] 
**charset** | **string** |  | [optional] 
**is_html** | **boolean** |  | [optional] 
**sent_at** | **DateTime** |  | 
**created_at** | **DateTime** |  | 
**pixel_ids** | **ARRAY[string]** |  | [optional] 
**message_id** | **string** | RFC 5322 Message-ID header value without angle brackets. | [optional] 
**message_ids** | **ARRAY[string]** |  | [optional] 
**virtual_send** | **boolean** |  | [optional] 
**template_id** | **string** |  | [optional] 
**template_variables** | **HASH[string,object]** |  | [optional] 
**headers** | **HASH[string,string]** |  | [optional] 
**thread_id** | **string** | MailSlurp thread ID for email chain that enables lookup for In-Reply-To and References fields. | [optional] 
**body_excerpt** | **string** | An excerpt of the body of the email message for quick preview. Takes HTML content part if exists falls back to TEXT content part if not | [optional] 
**text_excerpt** | **string** | An excerpt of the body of the email message for quick preview. Takes TEXT content part if exists | [optional] 
**in_reply_to** | **string** | Parsed value of In-Reply-To header. A Message-ID in a thread. | [optional] 
**favourite** | **boolean** | Is email favourited | [optional] 
**html** | **boolean** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


