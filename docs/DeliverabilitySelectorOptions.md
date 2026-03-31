# MailSlurp::Object::DeliverabilitySelectorOptions

## Load the model package
```perl
use MailSlurp::Object::DeliverabilitySelectorOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **string** | Selection mode | 
**pattern** | **string** | Wildcard pattern for PATTERN selection. Supports &#39;*&#39; and &#39;?&#39; wildcards. If no wildcard is present the value is treated as a case-insensitive contains match. | [optional] 
**phone_country** | **string** | Optional phone-country filter for PHONE scope selection (e.g. ALL phones in US). Must be null for INBOX scope. | [optional] 
**entity_ids** | **ARRAY[string]** | Explicit entity IDs for EXPLICIT selection | [optional] 
**exclude_entity_ids** | **ARRAY[string]** | Optional entity IDs to exclude from the resolved selection (applies after ALL/PATTERN/EXPLICIT selection). | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


