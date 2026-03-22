# MailSlurp::Object::CheckDnsPropagationResults

## Load the model package
```perl
use MailSlurp::Object::CheckDnsPropagationResults;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host** | **string** |  | 
**record_type** | **string** | Domain Name Server Record Types | 
**expected_value** | **string** |  | [optional] 
**propagated_to_all_resolvers** | **boolean** |  | 
**responding_resolver_count** | **int** |  | 
**matching_resolver_count** | **int** |  | 
**resolver_results** | [**ARRAY[DnsPropagationResolverResult]**](DnsPropagationResolverResult) |  | 
**warnings** | **ARRAY[string]** |  | 
**errors** | **ARRAY[string]** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


