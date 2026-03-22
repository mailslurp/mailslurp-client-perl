# MailSlurp::Object::CampaignProbeInsightsDto

## Load the model package
```perl
use MailSlurp::Object::CampaignProbeInsightsDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**probe_id** | **string** |  | 
**since** | **DateTime** |  | 
**before** | **DateTime** |  | 
**total_runs** | **int** |  | 
**healthy_runs** | **int** |  | 
**warning_runs** | **int** |  | 
**failed_runs** | **int** |  | 
**success_rate** | **double** |  | 
**average_health_score** | **double** |  | 
**current_healthy_streak** | **int** |  | 
**best_healthy_streak** | **int** |  | 
**good_performance_signals** | **ARRAY[string]** |  | 
**attention_signals** | **ARRAY[string]** |  | 
**top_findings** | **ARRAY[string]** |  | 
**latest_run** | [**CampaignProbeRunDto**](CampaignProbeRunDto) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


