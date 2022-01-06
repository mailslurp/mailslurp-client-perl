# MailSlurp::Object::DomainDto

## Load the model package
```perl
use MailSlurp::Object::DomainDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] 
**user_id** | **string** |  | [optional] 
**domain** | **string** | Custom domain name | [optional] 
**verification_token** | **string** | Verification tokens | [optional] 
**dkim_tokens** | **ARRAY[string]** | Unique token DKIM tokens | [optional] 
**domain_name_records** | [**ARRAY[DomainNameRecord]**](DomainNameRecord) | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | [optional] 
**catch_all_inbox_id** | **string** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**domain_type** | **string** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | [optional] 
**verified** | **boolean** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


