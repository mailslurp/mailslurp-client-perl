# MailSlurp::Object::DeliverabilityTestDto

## Load the model package
```perl
use MailSlurp::Object::DeliverabilityTestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | 
**name** | **string** |  | [optional] 
**description** | **string** |  | [optional] 
**scope** | **string** |  | 
**selector** | [**DeliverabilitySelectorOptions**](DeliverabilitySelectorOptions) |  | 
**selected_entity_count** | **int** |  | 
**expectations** | [**ARRAY[DeliverabilityExpectation]**](DeliverabilityExpectation) |  | 
**status** | **string** |  | 
**start_at** | **DateTime** |  | 
**started_at** | **DateTime** |  | [optional] 
**completed_at** | **DateTime** |  | [optional] 
**max_duration_seconds** | **int** |  | [optional] 
**success_threshold_percent** | **double** |  | [optional] 
**threshold_status** | **string** |  | 
**threshold_met** | **boolean** |  | [optional] 
**last_evaluated_at** | **DateTime** |  | [optional] 
**total_entities** | **int** |  | 
**matched_entities** | **int** |  | 
**unmatched_entities** | **int** |  | 
**completion_percentage** | **double** |  | 
**timed_out** | **boolean** |  | 
**failure_reason** | **string** |  | [optional] 
**created_at** | **DateTime** |  | 
**updated_at** | **DateTime** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


