# MailSlurp::Object::GenerateSpfRecordOptions

## Load the model package
```perl
use MailSlurp::Object::GenerateSpfRecordOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **string** | Domain the SPF record applies to | 
**include_domains** | **ARRAY[string]** | Optional include domains | [optional] 
**ip4** | **ARRAY[string]** | Optional IPv4 CIDRs or hosts | [optional] 
**ip6** | **ARRAY[string]** | Optional IPv6 CIDRs or hosts | [optional] 
**mx** | **boolean** | Whether to include the MX mechanism | 
**a** | **boolean** | Whether to include the A mechanism | 
**all_policy** | **string** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


