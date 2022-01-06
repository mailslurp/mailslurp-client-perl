# MailSlurp::Object::ReplyToEmailOptions

## Load the model package
```perl
use MailSlurp::Object::ReplyToEmailOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**body** | **string** | Body of the reply email you want to send | [optional] 
**from** | **string** | The from header that should be used. Optional | [optional] 
**reply_to** | **string** | The replyTo header that should be used. Optional | [optional] 
**charset** | **string** | The charset that your message should be sent with. Optional. Default is UTF-8 | [optional] 
**attachments** | **ARRAY[string]** | List of uploaded attachments to send with the reply. Optional. | [optional] 
**template_variables** | **HASH[string,object]** | Template variables if using a template | [optional] 
**template** | **string** | Template ID to use instead of body. Will use template variable map to fill defined variable slots. | [optional] 
**send_strategy** | **string** | How an email should be sent based on its recipients | [optional] 
**use_inbox_name** | **boolean** | Optionally use inbox name as display name for sender email address | [optional] 
**html** | **boolean** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


