# MailSlurp::MailServerControllerApi

## Load the API package
```perl
use MailSlurp::Object::MailServerControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**describe_mail_server_domain**](MailServerControllerApi#describe_mail_server_domain) | **POST** /mail-server/describe/domain | Get DNS Mail Server records for a domain
[**get_dns_lookup**](MailServerControllerApi#get_dns_lookup) | **POST** /mail-server/describe/dns-lookup | Lookup DNS records for a domain
[**get_ip_address**](MailServerControllerApi#get_ip_address) | **POST** /mail-server/describe/ip-address | Get IP address for a domain
[**verify_email_address**](MailServerControllerApi#verify_email_address) | **POST** /mail-server/verify/email-address | Verify the existence of an email address at a given mail server.


# **describe_mail_server_domain**
> DescribeMailServerDomainResult describe_mail_server_domain(describe_options => $describe_options)

Get DNS Mail Server records for a domain

### Example 
```perl
use Data::Dumper;
use MailSlurp::MailServerControllerApi;
my $api_instance = MailSlurp::MailServerControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $describe_options = MailSlurp::Object::DescribeDomainOptions->new(); # DescribeDomainOptions | describeOptions

eval { 
    my $result = $api_instance->describe_mail_server_domain(describe_options => $describe_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MailServerControllerApi->describe_mail_server_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **describe_options** | [**DescribeDomainOptions**](DescribeDomainOptions)| describeOptions | 

### Return type

[**DescribeMailServerDomainResult**](DescribeMailServerDomainResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_dns_lookup**
> DNSLookupResults get_dns_lookup(dns_lookup_options => $dns_lookup_options)

Lookup DNS records for a domain

### Example 
```perl
use Data::Dumper;
use MailSlurp::MailServerControllerApi;
my $api_instance = MailSlurp::MailServerControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $dns_lookup_options = MailSlurp::Object::DNSLookupOptions->new(); # DNSLookupOptions | dnsLookupOptions

eval { 
    my $result = $api_instance->get_dns_lookup(dns_lookup_options => $dns_lookup_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MailServerControllerApi->get_dns_lookup: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dns_lookup_options** | [**DNSLookupOptions**](DNSLookupOptions)| dnsLookupOptions | 

### Return type

[**DNSLookupResults**](DNSLookupResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_ip_address**
> IPAddressResult get_ip_address(name => $name)

Get IP address for a domain

### Example 
```perl
use Data::Dumper;
use MailSlurp::MailServerControllerApi;
my $api_instance = MailSlurp::MailServerControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $name = "name_example"; # string | name

eval { 
    my $result = $api_instance->get_ip_address(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MailServerControllerApi->get_ip_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| name | 

### Return type

[**IPAddressResult**](IPAddressResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **verify_email_address**
> EmailVerificationResult verify_email_address(verify_options => $verify_options)

Verify the existence of an email address at a given mail server.

### Example 
```perl
use Data::Dumper;
use MailSlurp::MailServerControllerApi;
my $api_instance = MailSlurp::MailServerControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $verify_options = MailSlurp::Object::VerifyEmailAddressOptions->new(); # VerifyEmailAddressOptions | verifyOptions

eval { 
    my $result = $api_instance->verify_email_address(verify_options => $verify_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MailServerControllerApi->verify_email_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verify_options** | [**VerifyEmailAddressOptions**](VerifyEmailAddressOptions)| verifyOptions | 

### Return type

[**EmailVerificationResult**](EmailVerificationResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

