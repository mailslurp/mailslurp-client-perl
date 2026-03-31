# MailSlurp::Object::UpdateDeliverabilityTestOptions

## Load the model package
```perl
use MailSlurp::Object::UpdateDeliverabilityTestOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Optional updated name | [optional] 
**description** | **string** | Optional updated description | [optional] 
**start_at** | **DateTime** | Optional updated receive-window start time. Only applied while test is not terminal. | [optional] 
**max_duration_seconds** | **int** | Optional updated timeout in seconds | [optional] 
**clear_max_duration** | **boolean** | Set true to clear timeout. If true, maxDurationSeconds is ignored for this request. | [optional] 
**success_threshold_percent** | **double** | Optional updated acceptable success threshold percentage (0,100]. | [optional] 
**clear_success_threshold** | **boolean** | Set true to clear success threshold. If true, successThresholdPercent is ignored for this request. | [optional] 
**expectations** | [**ARRAY[DeliverabilityExpectation]**](DeliverabilityExpectation) | Optional replacement expectations | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


