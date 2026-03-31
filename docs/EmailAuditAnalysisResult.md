# MailSlurp::Object::EmailAuditAnalysisResult

## Load the model package
```perl
use MailSlurp::Object::EmailAuditAnalysisResult;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **string** | Health status for a one-shot email audit | 
**health_score** | **int** |  | 
**total_checks** | **int** |  | 
**passing_checks** | **int** |  | 
**failing_checks** | **int** |  | 
**detected_links** | **int** |  | 
**checked_links** | **int** |  | 
**detected_images** | **int** |  | 
**checked_images** | **int** |  | 
**link_issue_count** | **int** |  | 
**image_issue_count** | **int** |  | 
**spelling_issue_count** | **int** |  | 
**broken_links** | [**ARRAY[EmailAuditUrlIssue]**](EmailAuditUrlIssue) |  | 
**broken_images** | [**ARRAY[EmailAuditUrlIssue]**](EmailAuditUrlIssue) |  | 
**spelling_issues** | [**ARRAY[EmailAuditSpellingIssue]**](EmailAuditSpellingIssue) |  | 
**compatibility_warning_count** | **int** |  | 
**compatibility_not_supported_count** | **int** |  | 
**compatibility_unknown_count** | **int** |  | 
**feature_support** | [**EmailFeatureSupportResult**](EmailFeatureSupportResult) |  | [optional] 
**html_error_count** | **int** |  | 
**html_warning_count** | **int** |  | 
**html_info_count** | **int** |  | 
**html_validation** | [**HTMLValidationResult**](HTMLValidationResult) |  | [optional] 
**reputation_failure_count** | **int** |  | 
**attachment_mention_issue_count** | **int** |  | 
**external_check_skipped_count** | **int** |  | 
**insights** | **ARRAY[string]** |  | 
**error_message** | **string** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


