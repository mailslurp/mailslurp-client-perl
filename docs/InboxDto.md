# MailSlurp::Object::InboxDto

## Load the model package
```perl
use MailSlurp::Object::InboxDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods &#x60;waitForLatestEmail&#x60; and &#x60;getEmails&#x60; methods respectively. Inboxes can be used with aliases to forward emails automatically. | 
**user_id** | **string** | ID of user that inbox belongs to | 
**created_at** | **DateTime** | When the inbox was created. Time stamps are in ISO DateTime Format &#x60;yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX&#x60; e.g. &#x60;2000-10-31T01:30:00.000-05:00&#x60;. | 
**name** | **string** | Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search | [optional] 
**domain_id** | **string** | ID of custom domain used by the inbox if any | [optional] 
**description** | **string** | Description of an inbox for labelling and searching purposes | [optional] 
**email_address** | **string** | The inbox&#39;s email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so &#x60;+123&#x60; additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. | 
**expires_at** | **DateTime** | Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won&#39;t be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email. | [optional] 
**favourite** | **boolean** | Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering | 
**tags** | **ARRAY[string]** | Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. | [optional] 
**inbox_type** | **string** | Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send). | [optional] 
**read_only** | **boolean** | Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes. | 
**virtual_inbox** | **boolean** | Virtual inbox can receive email but will not send emails to real recipients. Will save sent email record but never send an actual email. Perfect for testing mail server actions. | 
**functions_as** | **string** | Inbox function if used as a primitive for another system. | [optional] 
**local_part** | **string** | Local part of email addresses before the @ symbol | [optional] 
**domain** | **string** | Domain name of the email address | [optional] 
**account_region** | **string** | Region of the inbox | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


