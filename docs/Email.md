# MailSlurp::Object::Email

## Load the model package
```perl
use MailSlurp::Object::Email;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | ID of the email entity | [optional] 
**user_id** | **string** | ID of user that email belongs to | [optional] 
**inbox_id** | **string** | ID of the inbox that received the email | [optional] 
**to** | **ARRAY[string]** | List of &#x60;To&#x60; recipient email addresses that the email was addressed to. See recipients object for names. | [optional] 
**from** | **string** | Who the email was sent from. An email address - see fromName for the sender name. | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**reply_to** | **string** | The &#x60;replyTo&#x60; field on the received email message | [optional] 
**cc** | **ARRAY[string]** | List of &#x60;CC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | [optional] 
**bcc** | **ARRAY[string]** | List of &#x60;BCC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | [optional] 
**headers** | **HASH[string,string]** | Collection of SMTP headers attached to email | [optional] 
**attachments** | **ARRAY[string]** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 
**subject** | **string** | The subject line of the email message as specified by SMTP subject header | [optional] 
**body** | **string** | The body of the email message as text parsed from the SMTP message body (does not include attachments). Fetch the raw content to access the SMTP message and use the attachments property to access attachments. The body is stored separately to the email entity so the body is not returned in paginated results only in full single email or wait requests. | [optional] 
**body_excerpt** | **string** | An excerpt of the body of the email message for quick preview . | [optional] 
**body_md5_hash** | **string** | A hash signature of the email message using MD5. Useful for comparing emails without fetching full body. | [optional] 
**charset** | **string** | Detected character set of the email body such as UTF-8 | [optional] 
**analysis** | [**EmailAnalysis**](EmailAnalysis) |  | [optional] 
**created_at** | **DateTime** | When was the email received by MailSlurp | [optional] 
**updated_at** | **DateTime** | When was the email last updated | [optional] 
**read** | **boolean** | Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks. | [optional] 
**team_access** | **boolean** | Can the email be accessed by organization team members | [optional] 
**html** | **boolean** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


