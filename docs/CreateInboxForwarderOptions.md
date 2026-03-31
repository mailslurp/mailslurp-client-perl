# MailSlurp::Object::CreateInboxForwarderOptions

## Load the model package
```perl
use MailSlurp::Object::CreateInboxForwarderOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field** | **string** | Field to match against to trigger inbox forwarding for inbound email | [optional] 
**match** | **string** | String or wildcard style match for field specified when evaluating forwarding rules | [optional] 
**forward_to_recipients** | **ARRAY[string]** | Email addresses to forward an email to if it matches the field and match criteria of the forwarder | 
**should** | **string** | Comparison mode for inbox automation matching. | [optional] 
**match_options** | [**InboxAutomationMatchOptions**](InboxAutomationMatchOptions) |  | [optional] 
**attachment_text_extraction_method** | **string** | Method for extracting text from attachments. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


