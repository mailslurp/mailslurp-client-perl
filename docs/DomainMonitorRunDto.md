# MailSlurp::Object::DomainMonitorRunDto

## Load the model package
```perl
use MailSlurp::Object::DomainMonitorRunDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | 
**monitor_id** | **string** |  | 
**user_id** | **string** |  | 
**domain** | **string** |  | 
**status** | **string** |  | 
**trigger_source** | **string** |  | 
**health_score** | **int** |  | 
**total_checks** | **int** |  | 
**passing_checks** | **int** |  | 
**failing_checks** | **int** |  | 
**spf_ok** | **boolean** |  | 
**dmarc_ok** | **boolean** |  | 
**dmarc_enforced** | **boolean** |  | 
**mx_ok** | **boolean** |  | 
**insights** | **ARRAY[string]** |  | 
**error_message** | **string** |  | [optional] 
**created_at** | **DateTime** |  | 
**updated_at** | **DateTime** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


