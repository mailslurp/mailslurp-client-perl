# MailSlurp::Object::InboxForwarderDto

## Load the model package
```perl
use MailSlurp::Object::InboxForwarderDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | 
**inbox_id** | **string** |  | [optional] 
**name** | **string** | Name of inbox forwarder | [optional] 
**field** | **string** | Which field to match against | [optional] 
**match** | **string** | Pattern to apply to field | [optional] 
**forward_to_recipients** | **ARRAY[string]** | Who to send forwarded email to | 
**created_at** | **DateTime** |  | 
**should** | **string** | Comparison mode for inbox automation matching. | [optional] 
**match_options** | [**InboxAutomationMatchOptions**](InboxAutomationMatchOptions) |  | [optional] 
**attachment_text_extraction_method** | **string** | Method for extracting text from attachments. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


