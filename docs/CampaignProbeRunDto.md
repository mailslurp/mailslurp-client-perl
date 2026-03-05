# MailSlurp::Object::CampaignProbeRunDto

## Load the model package
```perl
use MailSlurp::Object::CampaignProbeRunDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | 
**probe_id** | **string** |  | 
**user_id** | **string** |  | 
**status** | **string** |  | 
**source** | **string** |  | 
**health_score** | **int** |  | 
**total_checks** | **int** |  | 
**passing_checks** | **int** |  | 
**failing_checks** | **int** |  | 
**checked_links** | **int** |  | 
**checked_images** | **int** |  | 
**link_issue_count** | **int** |  | 
**image_issue_count** | **int** |  | 
**compatibility_warning_count** | **int** |  | 
**compatibility_not_supported_count** | **int** |  | 
**compatibility_unknown_count** | **int** |  | 
**html_error_count** | **int** |  | 
**html_warning_count** | **int** |  | 
**html_info_count** | **int** |  | 
**reputation_failure_count** | **int** |  | 
**attachment_mention_issue_count** | **int** |  | 
**insights** | **ARRAY[string]** |  | 
**error_message** | **string** |  | [optional] 
**from_address** | **string** |  | [optional] 
**recipient** | **string** |  | [optional] 
**subject** | **string** |  | [optional] 
**message_id** | **string** |  | [optional] 
**source_message_id** | **string** |  | [optional] 
**processing_ms** | **int** |  | [optional] 
**created_at** | **DateTime** |  | 
**updated_at** | **DateTime** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


