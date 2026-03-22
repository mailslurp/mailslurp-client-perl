# MailSlurp::Object::DomainMonitorInsightsDto

## Load the model package
```perl
use MailSlurp::Object::DomainMonitorInsightsDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**monitor_id** | **string** |  | 
**since** | **DateTime** |  | 
**before** | **DateTime** |  | 
**total_runs** | **int** |  | 
**healthy_runs** | **int** |  | 
**degraded_runs** | **int** |  | 
**critical_runs** | **int** |  | 
**failed_runs** | **int** |  | 
**success_rate** | **double** |  | 
**average_health_score** | **double** |  | 
**current_healthy_streak** | **int** |  | 
**best_healthy_streak** | **int** |  | 
**good_performance_signals** | **ARRAY[string]** |  | 
**attention_signals** | **ARRAY[string]** |  | 
**top_findings** | **ARRAY[string]** |  | 
**latest_run** | [**DomainMonitorRunDto**](DomainMonitorRunDto) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


