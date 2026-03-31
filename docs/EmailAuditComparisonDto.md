# MailSlurp::Object::EmailAuditComparisonDto

## Load the model package
```perl
use MailSlurp::Object::EmailAuditComparisonDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**baseline** | [**EmailAuditDto**](EmailAuditDto) |  | 
**current** | [**EmailAuditDto**](EmailAuditDto) |  | 
**health_score_delta** | **int** |  | 
**status_changed** | **boolean** |  | 
**broken_link_delta** | **int** |  | 
**broken_image_delta** | **int** |  | 
**spelling_issue_delta** | **int** |  | 
**html_error_delta** | **int** |  | 
**html_warning_delta** | **int** |  | 
**compatibility_warning_delta** | **int** |  | 
**compatibility_not_supported_delta** | **int** |  | 
**reputation_failure_delta** | **int** |  | 
**attachment_mention_issue_delta** | **int** |  | 
**added_insights** | **ARRAY[string]** |  | 
**removed_insights** | **ARRAY[string]** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


