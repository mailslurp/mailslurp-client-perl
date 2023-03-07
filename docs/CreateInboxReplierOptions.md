# MailSlurp::Object::CreateInboxReplierOptions

## Load the model package
```perl
use MailSlurp::Object::CreateInboxReplierOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inbox_id** | **string** | Inbox ID to attach replier to | 
**name** | **string** | Name for replier | [optional] 
**field** | **string** | Field to match against to trigger inbox replier for inbound email | 
**match** | **string** | String or wildcard style match for field specified when evaluating reply rules | 
**reply_to** | **string** | Reply-to email address when sending replying | [optional] 
**subject** | **string** | Subject override when replying to email | [optional] 
**from** | **string** | Send email from address | [optional] 
**charset** | **string** | Email reply charset | [optional] 
**ignore_reply_to** | **boolean** | Ignore sender replyTo when responding. Send directly to the sender if enabled. | [optional] 
**is_html** | **boolean** | Send HTML email | [optional] 
**body** | **string** | Email body for reply | [optional] 
**template_id** | **string** | ID of template to use when sending a reply | [optional] 
**template_variables** | **HASH[string,object]** | Template variable values | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


