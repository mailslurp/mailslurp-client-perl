# MailSlurp::Object::ExtractAttachmentTextOptions

## Load the model package
```perl
use MailSlurp::Object::ExtractAttachmentTextOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method** | **string** | Method for extracting text from attachments. OCR/LLM methods are reserved for advanced extraction. | [optional] 
**allow_fallback** | **boolean** | Allow fallback to native extraction when the selected method is unavailable. | [optional] [default to true]
**max_bytes** | **int** | Maximum bytes to read from attachment for native text extraction. | [optional] [default to 1048576]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


