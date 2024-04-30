# MailSlurp::ToolsControllerApi

## Load the API package
```perl
use MailSlurp::Object::ToolsControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_email_features_client_support**](ToolsControllerApi#check_email_features_client_support) | **POST** /tools/check-email-features-client-support | Check email client support for email HTML and CSS features
[**create_new_fake_email_address**](ToolsControllerApi#create_new_fake_email_address) | **POST** /tools/fake-email | Create a new email address using the fake email domains
[**generate_bimi_record**](ToolsControllerApi#generate_bimi_record) | **POST** /tools/generate-bimi-record | Create a BIMI record policy
[**generate_dmarc_record**](ToolsControllerApi#generate_dmarc_record) | **POST** /tools/generate-dmarc-record | Create a DMARC record policy
[**generate_mta_sts_record**](ToolsControllerApi#generate_mta_sts_record) | **POST** /tools/generate-mta-sts-record | Create a TLS reporting record policy
[**generate_tls_reporting_record**](ToolsControllerApi#generate_tls_reporting_record) | **POST** /tools/generate-tls-reporting-record | Create a TLS reporting record policy
[**get_fake_email_by_id**](ToolsControllerApi#get_fake_email_by_id) | **GET** /tools/fake-email | 
[**get_fake_emails_for_address**](ToolsControllerApi#get_fake_emails_for_address) | **GET** /tools/fake-emails | 
[**lookup_bimi_domain**](ToolsControllerApi#lookup_bimi_domain) | **POST** /tools/lookup-bimi-domain | Lookup a BIMI record policy
[**lookup_dmarc_domain**](ToolsControllerApi#lookup_dmarc_domain) | **POST** /tools/lookup-dmarc-domain | Lookup a DMARC record policy
[**lookup_mta_sts_domain**](ToolsControllerApi#lookup_mta_sts_domain) | **POST** /tools/lookup-mta-sts-domain | Lookup a MTA-STS domain policy
[**lookup_tls_reporting_domain**](ToolsControllerApi#lookup_tls_reporting_domain) | **POST** /tools/lookup-tls-reporting-domain | Lookup a TLS reporting domain policy


# **check_email_features_client_support**
> CheckEmailFeaturesClientSupportResults check_email_features_client_support(check_email_features_client_support_options => $check_email_features_client_support_options)

Check email client support for email HTML and CSS features

### Example 
```perl
use Data::Dumper;
use MailSlurp::ToolsControllerApi;
my $api_instance = MailSlurp::ToolsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $check_email_features_client_support_options = MailSlurp::Object::CheckEmailFeaturesClientSupportOptions->new(); # CheckEmailFeaturesClientSupportOptions | 

eval { 
    my $result = $api_instance->check_email_features_client_support(check_email_features_client_support_options => $check_email_features_client_support_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->check_email_features_client_support: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **check_email_features_client_support_options** | [**CheckEmailFeaturesClientSupportOptions**](CheckEmailFeaturesClientSupportOptions)|  | 

### Return type

[**CheckEmailFeaturesClientSupportResults**](CheckEmailFeaturesClientSupportResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_new_fake_email_address**
> NewFakeEmailAddressResult create_new_fake_email_address()

Create a new email address using the fake email domains

### Example 
```perl
use Data::Dumper;
use MailSlurp::ToolsControllerApi;
my $api_instance = MailSlurp::ToolsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->create_new_fake_email_address();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->create_new_fake_email_address: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NewFakeEmailAddressResult**](NewFakeEmailAddressResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generate_bimi_record**
> GenerateBimiRecordResults generate_bimi_record(generate_bimi_record_options => $generate_bimi_record_options)

Create a BIMI record policy

### Example 
```perl
use Data::Dumper;
use MailSlurp::ToolsControllerApi;
my $api_instance = MailSlurp::ToolsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $generate_bimi_record_options = MailSlurp::Object::GenerateBimiRecordOptions->new(); # GenerateBimiRecordOptions | 

eval { 
    my $result = $api_instance->generate_bimi_record(generate_bimi_record_options => $generate_bimi_record_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->generate_bimi_record: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_bimi_record_options** | [**GenerateBimiRecordOptions**](GenerateBimiRecordOptions)|  | 

### Return type

[**GenerateBimiRecordResults**](GenerateBimiRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generate_dmarc_record**
> GenerateDmarcRecordResults generate_dmarc_record(generate_dmarc_record_options => $generate_dmarc_record_options)

Create a DMARC record policy

### Example 
```perl
use Data::Dumper;
use MailSlurp::ToolsControllerApi;
my $api_instance = MailSlurp::ToolsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $generate_dmarc_record_options = MailSlurp::Object::GenerateDmarcRecordOptions->new(); # GenerateDmarcRecordOptions | 

eval { 
    my $result = $api_instance->generate_dmarc_record(generate_dmarc_record_options => $generate_dmarc_record_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->generate_dmarc_record: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_dmarc_record_options** | [**GenerateDmarcRecordOptions**](GenerateDmarcRecordOptions)|  | 

### Return type

[**GenerateDmarcRecordResults**](GenerateDmarcRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generate_mta_sts_record**
> GenerateMtaStsRecordResults generate_mta_sts_record(generate_mta_sts_record_options => $generate_mta_sts_record_options)

Create a TLS reporting record policy

### Example 
```perl
use Data::Dumper;
use MailSlurp::ToolsControllerApi;
my $api_instance = MailSlurp::ToolsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $generate_mta_sts_record_options = MailSlurp::Object::GenerateMtaStsRecordOptions->new(); # GenerateMtaStsRecordOptions | 

eval { 
    my $result = $api_instance->generate_mta_sts_record(generate_mta_sts_record_options => $generate_mta_sts_record_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->generate_mta_sts_record: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_mta_sts_record_options** | [**GenerateMtaStsRecordOptions**](GenerateMtaStsRecordOptions)|  | 

### Return type

[**GenerateMtaStsRecordResults**](GenerateMtaStsRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generate_tls_reporting_record**
> GenerateTlsReportingRecordResults generate_tls_reporting_record(generate_tls_reporting_record_options => $generate_tls_reporting_record_options)

Create a TLS reporting record policy

### Example 
```perl
use Data::Dumper;
use MailSlurp::ToolsControllerApi;
my $api_instance = MailSlurp::ToolsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $generate_tls_reporting_record_options = MailSlurp::Object::GenerateTlsReportingRecordOptions->new(); # GenerateTlsReportingRecordOptions | 

eval { 
    my $result = $api_instance->generate_tls_reporting_record(generate_tls_reporting_record_options => $generate_tls_reporting_record_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->generate_tls_reporting_record: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_tls_reporting_record_options** | [**GenerateTlsReportingRecordOptions**](GenerateTlsReportingRecordOptions)|  | 

### Return type

[**GenerateTlsReportingRecordResults**](GenerateTlsReportingRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_fake_email_by_id**
> FakeEmailResult get_fake_email_by_id(id => $id)



### Example 
```perl
use Data::Dumper;
use MailSlurp::ToolsControllerApi;
my $api_instance = MailSlurp::ToolsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    my $result = $api_instance->get_fake_email_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->get_fake_email_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

[**FakeEmailResult**](FakeEmailResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_fake_emails_for_address**
> ARRAY[FakeEmailPreview] get_fake_emails_for_address(email_address => $email_address, page => $page)



### Example 
```perl
use Data::Dumper;
use MailSlurp::ToolsControllerApi;
my $api_instance = MailSlurp::ToolsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_address = "email_address_example"; # string | 
my $page = 56; # int | 

eval { 
    my $result = $api_instance->get_fake_emails_for_address(email_address => $email_address, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->get_fake_emails_for_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **string**|  | 
 **page** | **int**|  | [optional] 

### Return type

[**ARRAY[FakeEmailPreview]**](FakeEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookup_bimi_domain**
> LookupBimiDomainResults lookup_bimi_domain(lookup_bimi_domain_options => $lookup_bimi_domain_options)

Lookup a BIMI record policy

### Example 
```perl
use Data::Dumper;
use MailSlurp::ToolsControllerApi;
my $api_instance = MailSlurp::ToolsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $lookup_bimi_domain_options = MailSlurp::Object::LookupBimiDomainOptions->new(); # LookupBimiDomainOptions | 

eval { 
    my $result = $api_instance->lookup_bimi_domain(lookup_bimi_domain_options => $lookup_bimi_domain_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->lookup_bimi_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookup_bimi_domain_options** | [**LookupBimiDomainOptions**](LookupBimiDomainOptions)|  | 

### Return type

[**LookupBimiDomainResults**](LookupBimiDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookup_dmarc_domain**
> LookupDmarcDomainResults lookup_dmarc_domain(lookup_dmarc_domain_options => $lookup_dmarc_domain_options)

Lookup a DMARC record policy

### Example 
```perl
use Data::Dumper;
use MailSlurp::ToolsControllerApi;
my $api_instance = MailSlurp::ToolsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $lookup_dmarc_domain_options = MailSlurp::Object::LookupDmarcDomainOptions->new(); # LookupDmarcDomainOptions | 

eval { 
    my $result = $api_instance->lookup_dmarc_domain(lookup_dmarc_domain_options => $lookup_dmarc_domain_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->lookup_dmarc_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookup_dmarc_domain_options** | [**LookupDmarcDomainOptions**](LookupDmarcDomainOptions)|  | 

### Return type

[**LookupDmarcDomainResults**](LookupDmarcDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookup_mta_sts_domain**
> LookupMtaStsDomainResults lookup_mta_sts_domain(lookup_mta_sts_domain_options => $lookup_mta_sts_domain_options)

Lookup a MTA-STS domain policy

### Example 
```perl
use Data::Dumper;
use MailSlurp::ToolsControllerApi;
my $api_instance = MailSlurp::ToolsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $lookup_mta_sts_domain_options = MailSlurp::Object::LookupMtaStsDomainOptions->new(); # LookupMtaStsDomainOptions | 

eval { 
    my $result = $api_instance->lookup_mta_sts_domain(lookup_mta_sts_domain_options => $lookup_mta_sts_domain_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->lookup_mta_sts_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookup_mta_sts_domain_options** | [**LookupMtaStsDomainOptions**](LookupMtaStsDomainOptions)|  | 

### Return type

[**LookupMtaStsDomainResults**](LookupMtaStsDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookup_tls_reporting_domain**
> LookupTlsReportingDomainResults lookup_tls_reporting_domain(lookup_tls_reporting_domain_options => $lookup_tls_reporting_domain_options)

Lookup a TLS reporting domain policy

### Example 
```perl
use Data::Dumper;
use MailSlurp::ToolsControllerApi;
my $api_instance = MailSlurp::ToolsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $lookup_tls_reporting_domain_options = MailSlurp::Object::LookupTlsReportingDomainOptions->new(); # LookupTlsReportingDomainOptions | 

eval { 
    my $result = $api_instance->lookup_tls_reporting_domain(lookup_tls_reporting_domain_options => $lookup_tls_reporting_domain_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->lookup_tls_reporting_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookup_tls_reporting_domain_options** | [**LookupTlsReportingDomainOptions**](LookupTlsReportingDomainOptions)|  | 

### Return type

[**LookupTlsReportingDomainResults**](LookupTlsReportingDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

