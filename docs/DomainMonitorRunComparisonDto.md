# MailSlurp::Object::DomainMonitorRunComparisonDto

## Load the model package
```perl
use MailSlurp::Object::DomainMonitorRunComparisonDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**baseline** | [**DomainMonitorRunDto**](DomainMonitorRunDto) |  | 
**current** | [**DomainMonitorRunDto**](DomainMonitorRunDto) |  | 
**health_score_delta** | **int** |  | 
**status_changed** | **boolean** |  | 
**passing_checks_delta** | **int** |  | 
**failing_checks_delta** | **int** |  | 
**spf_changed** | **boolean** |  | 
**dmarc_changed** | **boolean** |  | 
**dmarc_enforced_changed** | **boolean** |  | 
**mx_changed** | **boolean** |  | 
**added_insights** | **ARRAY[string]** |  | 
**removed_insights** | **ARRAY[string]** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


