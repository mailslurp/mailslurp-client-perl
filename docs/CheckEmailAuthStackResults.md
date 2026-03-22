# MailSlurp::Object::CheckEmailAuthStackResults

## Load the model package
```perl
use MailSlurp::Object::CheckEmailAuthStackResults;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **string** |  | 
**status** | **string** |  | 
**health_score** | **int** |  | 
**total_checks** | **int** |  | 
**passing_checks** | **int** |  | 
**failing_checks** | **int** |  | 
**spf** | [**LookupSpfDomainResults**](LookupSpfDomainResults) |  | 
**dmarc** | [**LookupDmarcDomainResults**](LookupDmarcDomainResults) |  | 
**dkim** | [**LookupDkimDomainResults**](LookupDkimDomainResults) |  | 
**bimi** | [**LookupBimiDomainResults**](LookupBimiDomainResults) |  | 
**mx** | [**LookupMxRecordsResults**](LookupMxRecordsResults) |  | 
**mta_sts** | [**LookupMtaStsDomainResults**](LookupMtaStsDomainResults) |  | 
**tls_reporting** | [**LookupTlsReportingDomainResults**](LookupTlsReportingDomainResults) |  | 
**insights** | **ARRAY[string]** |  | 
**warnings** | **ARRAY[string]** |  | 
**errors** | **ARRAY[string]** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


