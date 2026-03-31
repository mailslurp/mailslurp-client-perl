# MailSlurp::Object::AnalyzeDmarcReportResults

## Load the model package
```perl
use MailSlurp::Object::AnalyzeDmarcReportResults;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metadata** | [**DmarcReportMetadata**](DmarcReportMetadata) |  | 
**record_count** | **int** |  | 
**total_messages** | **int** |  | 
**reject_count** | **int** |  | 
**quarantine_count** | **int** |  | 
**none_count** | **int** |  | 
**dkim_aligned_count** | **int** |  | 
**spf_aligned_count** | **int** |  | 
**fully_aligned_count** | **int** |  | 
**failed_alignment_count** | **int** |  | 
**top_sources** | [**ARRAY[DmarcReportSourceSummary]**](DmarcReportSourceSummary) |  | 
**warnings** | **ARRAY[string]** |  | 
**errors** | **ARRAY[string]** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


