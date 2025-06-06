# MailSlurp::Object::Email

## Load the model package
```perl
use MailSlurp::Object::Email;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | ID of the email entity | 
**user_id** | **string** | ID of user that email belongs to | 
**inbox_id** | **string** | ID of the inbox that received the email | 
**domain_id** | **string** | ID of the domain that received the email | [optional] 
**to** | **ARRAY[string]** | List of &#x60;To&#x60; recipient email addresses that the email was addressed to. See recipients object for names. | 
**from** | **string** | Who the email was sent from. An email address - see fromName for the sender name. | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**reply_to** | **string** | The &#x60;replyTo&#x60; field on the received email message | [optional] 
**cc** | **ARRAY[string]** | List of &#x60;CC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | [optional] 
**bcc** | **ARRAY[string]** | List of &#x60;BCC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | [optional] 
**headers** | **HASH[string,string]** | Collection of SMTP headers attached to email | [optional] 
**headers_map** | **HASH[string,ARRAY[string]]** | Multi-value map of SMTP headers attached to email | [optional] 
**attachments** | **ARRAY[string]** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 
**subject** | **string** | The subject line of the email message as specified by SMTP subject header | [optional] 
**body** | **string** | The body of the email message as text parsed from the SMTP message body (does not include attachments). Fetch the raw content to access the SMTP message and use the attachments property to access attachments. The body is stored separately to the email entity so the body is not returned in paginated results only in full single email or wait requests. | [optional] 
**body_excerpt** | **string** | An excerpt of the body of the email message for quick preview. Takes HTML content part if exists falls back to TEXT content part if not | [optional] 
**text_excerpt** | **string** | An excerpt of the body of the email message for quick preview. Takes TEXT content part if exists | [optional] 
**body_md5_hash** | **string** | A hash signature of the email message using MD5. Useful for comparing emails without fetching full body. | [optional] 
**is_html** | **boolean** | Is the email body content type HTML? | [optional] 
**charset** | **string** | Detected character set of the email body such as UTF-8 | [optional] 
**analysis** | [**EmailAnalysis**](EmailAnalysis) |  | [optional] 
**created_at** | **DateTime** | When was the email received by MailSlurp | 
**updated_at** | **DateTime** | When was the email last updated | 
**read** | **boolean** | Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks. | 
**team_access** | **boolean** | Can the email be accessed by organization team members | 
**is_x_amp_html** | **boolean** | Is the email body content type x-amp-html Amp4Email? | [optional] 
**body_part_content_types** | **ARRAY[string]** | A list of detected multipart mime message body part content types such as text/plain and text/html. Can be used with email bodyPart endpoints to fetch individual body parts. | [optional] 
**external_id** | **string** | UID used by external IMAP server to identify email | [optional] 
**message_id** | **string** | RFC 5322 Message-ID header value without angle brackets. | [optional] 
**thread_id** | **string** | MailSlurp thread ID for email chain that enables lookup for In-Reply-To and References fields. | [optional] 
**in_reply_to** | **string** | Parsed value of In-Reply-To header. A Message-ID in a thread. | [optional] 
**favourite** | **boolean** | Is email favourited | [optional] 
**size_bytes** | **int** | Size of raw email message in bytes | [optional] 
**html** | **boolean** |  | [optional] 
**xamp_html** | **boolean** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


