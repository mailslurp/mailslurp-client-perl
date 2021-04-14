# MailSlurp::Object::DomainDto

## Load the model package
```perl
use MailSlurp::Object::DomainDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**catch_all_inbox_id** | **string** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] 
**created_at** | **DateTime** |  | 
**dkim_tokens** | **ARRAY[string]** | Unique token DKIM tokens | [optional] 
**domain** | **string** | Custom domain name | [optional] 
**domain_name_records** | [**ARRAY[DomainNameRecord]**](DomainNameRecord) | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | [optional] 
**id** | **string** |  | 
**is_verified** | **boolean** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | [optional] 
**updated_at** | **DateTime** |  | 
**user_id** | **string** |  | 
**verification_token** | **string** | Verification tokens | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


