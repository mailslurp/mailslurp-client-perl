# MailSlurp::Object::DeliverabilitySimulationJobDto

## Load the model package
```perl
use MailSlurp::Object::DeliverabilitySimulationJobDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | 
**test_id** | **string** |  | 
**scope** | **string** |  | 
**status** | **string** |  | 
**created_at** | **DateTime** |  | 
**updated_at** | **DateTime** |  | 
**started_at** | **DateTime** |  | [optional] 
**completed_at** | **DateTime** |  | [optional] 
**total_targets** | **int** |  | 
**total_planned_sends** | **int** |  | 
**next_send_index** | **int** |  | 
**sent_count** | **int** |  | 
**success_count** | **int** |  | 
**failure_count** | **int** |  | 
**progress_percent** | **double** |  | 
**active_target_label** | **string** |  | [optional] 
**estimated_remaining_ms** | **int** |  | [optional] 
**config_snapshot** | [**DeliverabilitySimulationJobConfigDto**](DeliverabilitySimulationJobConfigDto) |  | 
**error_summary** | [**DeliverabilitySimulationJobErrorSummaryDto**](DeliverabilitySimulationJobErrorSummaryDto) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


