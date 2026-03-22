# MailSlurp::Object::CodeCandidate

## Load the model package
```perl
use MailSlurp::Object::CodeCandidate;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **string** | Extracted code value | 
**confidence** | **double** | Relative confidence score from 0 to 1 | 
**method** | **string** | Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true. | 
**source** | **string** | Source fragment used for extraction, for example RAW_TEXT_PART or SMS_BODY | 
**context** | **string** | Nearby text context useful for debugging extraction decisions | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


