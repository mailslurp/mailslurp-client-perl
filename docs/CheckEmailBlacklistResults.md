# MailSlurp::Object::CheckEmailBlacklistResults

## Load the model package
```perl
use MailSlurp::Object::CheckEmailBlacklistResults;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **string** |  | [optional] 
**requested_ip_address** | **string** |  | [optional] 
**requested_mx_host** | **string** |  | [optional] 
**status** | **string** |  | 
**listed** | **boolean** |  | 
**checked_ip_addresses** | [**ARRAY[EmailBlacklistIpResult]**](EmailBlacklistIpResult) |  | 
**checked_zone_count** | **int** |  | 
**total_listings** | **int** |  | 
**warnings** | **ARRAY[string]** |  | 
**errors** | **ARRAY[string]** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


