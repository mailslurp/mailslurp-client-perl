# MailSlurp::Object::ExtractAttachmentTextResult

## Load the model package
```perl
use MailSlurp::Object::ExtractAttachmentTextResult;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**present** | **boolean** | True if extracted text is present | 
**text** | **string** | Extracted text when present | [optional] 
**method_used** | **string** | Method for extracting text from attachments. OCR/LLM methods are reserved for advanced extraction. | [optional] 
**content_type** | **string** | Detected attachment content type | [optional] 
**warnings** | **ARRAY[string]** | Warnings or fallback notes | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


