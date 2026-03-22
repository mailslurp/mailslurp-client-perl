# MailSlurp::Object::ExtractCodesResult

## Load the model package
```perl
use MailSlurp::Object::ExtractCodesResult;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**found** | **boolean** | True if at least one code candidate was found | 
**code** | **string** | Best candidate code when found | [optional] 
**method_used** | **string** | Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true. | [optional] 
**candidates** | [**ARRAY[CodeCandidate]**](CodeCandidate) | Ranked code candidates | 
**warnings** | **ARRAY[string]** | Warnings or fallback notes explaining extraction behavior for debugging and QA. | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


