# MailSlurp::Object::EmailIntelligenceOptions

## Load the model package
```perl
use MailSlurp::Object::EmailIntelligenceOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**targets** | **ARRAY[string]** | Email addresses or domains to score. | 
**page** | **int** | Zero-based page index for processing a subset of the target list. | [optional] 
**size** | **int** | Page size for processing a subset of the target list. | [optional] 
**ignore_cache** | **boolean** | Ignore cached intelligence values and force recomputation. | [optional] 
**include_email_validation** | **boolean** | Also run mailbox safety verification using the existing verification client for email inputs. | [optional] 
**tests** | [**EmailIntelligenceTestsOptions**](EmailIntelligenceTestsOptions) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


