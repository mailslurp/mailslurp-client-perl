# MailSlurp::Object::DomainDto

## Load the model package
```perl
use MailSlurp::Object::DomainDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | 
**user_id** | **string** |  | 
**domain** | **string** | Custom domain name | 
**verification_token** | **string** | Verification tokens | 
**dkim_tokens** | **ARRAY[string]** | Unique token DKIM tokens | 
**duplicate_records_message** | **string** | If the domain is duplicate records. | [optional] 
**has_duplicate_records** | **boolean** | Whether the domain has duplicated required records. If true then see the domain in the dashboard app. | 
**missing_records_message** | **string** | If the domain is missing records then show which pairs are missing. | [optional] 
**has_missing_records** | **boolean** | Whether the domain has missing required records. If true then see the domain in the dashboard app. | 
**is_verified** | **boolean** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | 
**domain_name_records** | [**ARRAY[DomainNameRecord]**](DomainNameRecord) | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | 
**catch_all_inbox_id** | **string** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] 
**created_at** | **DateTime** |  | 
**updated_at** | **DateTime** |  | 
**domain_type** | **string** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


