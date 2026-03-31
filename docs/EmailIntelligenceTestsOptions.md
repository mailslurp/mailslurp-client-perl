# MailSlurp::Object::EmailIntelligenceTestsOptions

## Load the model package
```perl
use MailSlurp::Object::EmailIntelligenceTestsOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**check_random_local_part** | **boolean** | Check local-part randomness for email inputs. | [optional] 
**check_free_provider** | **boolean** | Check if domain is a known free email provider. | [optional] 
**check_https_website** | **boolean** | Check if the domain has a reachable HTTPS website. | [optional] 
**check_dns** | **boolean** | Check DNS records (A, MX, SOA) for the domain. | [optional] 
**check_domain_age_hint** | **boolean** | Derive a domain age hint from DNS SOA serial when possible. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


