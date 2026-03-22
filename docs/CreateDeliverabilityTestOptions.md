# MailSlurp::Object::CreateDeliverabilityTestOptions

## Load the model package
```perl
use MailSlurp::Object::CreateDeliverabilityTestOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Optional name for the test | [optional] 
**description** | **string** | Optional description | [optional] 
**scope** | **string** | Entity scope to evaluate | 
**start_at** | **DateTime** | UTC instant when the receive window starts. Defaults to now if omitted. | [optional] 
**max_duration_seconds** | **int** | Optional timeout in seconds after startAt. If not all entities match before timeout the test transitions to FAILED. | [optional] 
**success_threshold_percent** | **double** | Optional acceptable success threshold percentage (0,100]. If set, a timed-out test can complete successfully when matchedEntities/totalEntities reaches this percentage. | [optional] 
**selector** | [**DeliverabilitySelectorOptions**](DeliverabilitySelectorOptions) |  | 
**expectations** | [**ARRAY[DeliverabilityExpectation]**](DeliverabilityExpectation) | One or more expectations to evaluate for each entity | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


