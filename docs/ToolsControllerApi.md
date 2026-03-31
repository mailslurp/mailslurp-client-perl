# MailSlurp::ToolsControllerApi

## Load the API package
```perl
use MailSlurp::Object::ToolsControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyze_dmarc_report**](ToolsControllerApi#analyze_dmarc_report) | **POST** /tools/analyze-dmarc-report | Parse and summarize a DMARC aggregate XML report
[**analyze_email_headers**](ToolsControllerApi#analyze_email_headers) | **POST** /tools/analyze-email-headers | Analyze email headers for auth results and delivery path
[**check_campaign_probe**](ToolsControllerApi#check_campaign_probe) | **POST** /tools/check-campaign-probe | Run a one-shot free campaign probe preflight check
[**check_dns_propagation**](ToolsControllerApi#check_dns_propagation) | **POST** /tools/check-dns-propagation | Check DNS propagation for a host and record type across configured resolvers
[**check_domain_monitor**](ToolsControllerApi#check_domain_monitor) | **POST** /tools/check-domain-monitor | Run a one-shot free domain monitor posture check
[**check_email_audit**](ToolsControllerApi#check_email_audit) | **POST** /tools/check-email-audit | Run a one-shot free email audit across links, images, HTML, and client support
[**check_email_auth_stack**](ToolsControllerApi#check_email_auth_stack) | **POST** /tools/check-email-auth-stack | Run a one-shot combined SPF, DKIM, DMARC, BIMI, MX, MTA-STS, and TLS-RPT check
[**check_email_blacklist**](ToolsControllerApi#check_email_blacklist) | **POST** /tools/check-email-blacklists | Check whether a domain or IP appears on configured DNS blacklists
[**check_email_features_client_support**](ToolsControllerApi#check_email_features_client_support) | **POST** /tools/check-email-features-client-support | Check email client support for email HTML and CSS features
[**create_new_fake_email_address**](ToolsControllerApi#create_new_fake_email_address) | **POST** /tools/fake-email | Create a new email address using the fake email domains
[**delete_new_fake_email_address**](ToolsControllerApi#delete_new_fake_email_address) | **DELETE** /tools/fake-email | Delete a fake email address using the fake email domains
[**generate_bimi_record**](ToolsControllerApi#generate_bimi_record) | **POST** /tools/generate-bimi-record | Create a BIMI record policy
[**generate_dmarc_record**](ToolsControllerApi#generate_dmarc_record) | **POST** /tools/generate-dmarc-record | Create a DMARC record policy
[**generate_mta_sts_record**](ToolsControllerApi#generate_mta_sts_record) | **POST** /tools/generate-mta-sts-record | Create a TLS reporting record policy
[**generate_spf_record**](ToolsControllerApi#generate_spf_record) | **POST** /tools/generate-spf-record | Create an SPF record
[**generate_tls_reporting_record**](ToolsControllerApi#generate_tls_reporting_record) | **POST** /tools/generate-tls-reporting-record | Create a TLS reporting record policy
[**get_fake_email_by_email_address**](ToolsControllerApi#get_fake_email_by_email_address) | **GET** /tools/fake-email/byEmailAddress | 
[**get_fake_email_by_id**](ToolsControllerApi#get_fake_email_by_id) | **GET** /tools/fake-email | Get a fake email by its ID
[**get_fake_email_raw**](ToolsControllerApi#get_fake_email_raw) | **GET** /tools/fake-email/html | Get raw fake email content
[**get_fake_emails_for_address**](ToolsControllerApi#get_fake_emails_for_address) | **GET** /tools/fake-emails | Get fake emails for an address
[**lookup_bimi_domain**](ToolsControllerApi#lookup_bimi_domain) | **POST** /tools/lookup-bimi-domain | Lookup a BIMI record policy
[**lookup_dkim_domain**](ToolsControllerApi#lookup_dkim_domain) | **POST** /tools/lookup-dkim-domain | Lookup and validate a DKIM record
[**lookup_dmarc_domain**](ToolsControllerApi#lookup_dmarc_domain) | **POST** /tools/lookup-dmarc-domain | Lookup a DMARC record policy
[**lookup_mta_sts_domain**](ToolsControllerApi#lookup_mta_sts_domain) | **POST** /tools/lookup-mta-sts-domain | Lookup a MTA-STS domain policy
[**lookup_mx_record**](ToolsControllerApi#lookup_mx_record) | **POST** /tools/lookup-mx-records | Lookup a MX records for a domain
[**lookup_ptr**](ToolsControllerApi#lookup_ptr) | **POST** /tools/lookup-ptr | Lookup PTR records for an IP address
[**lookup_spf_domain**](ToolsControllerApi#lookup_spf_domain) | **POST** /tools/lookup-spf-domain | Lookup and validate an SPF record
[**lookup_tls_reporting_domain**](ToolsControllerApi#lookup_tls_reporting_domain) | **POST** /tools/lookup-tls-reporting-domain | Lookup a TLS reporting domain policy
[**test_smtp_server**](ToolsControllerApi#test_smtp_server) | **POST** /tools/test-smtp-server | Run a conservative SMTP connectivity, TLS, and AUTH diagnostic


# **analyze_dmarc_report**
> AnalyzeDmarcReportResults analyze_dmarc_report(analyze_dmarc_report_options => $analyze_dmarc_report_options)

Parse and summarize a DMARC aggregate XML report

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

my $analyze_dmarc_report_options = MailSlurp::Object::AnalyzeDmarcReportOptions->new(); # AnalyzeDmarcReportOptions | 

eval { 
    my $result = $api_instance->analyze_dmarc_report(analyze_dmarc_report_options => $analyze_dmarc_report_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->analyze_dmarc_report: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analyze_dmarc_report_options** | [**AnalyzeDmarcReportOptions**](AnalyzeDmarcReportOptions)|  | 

### Return type

[**AnalyzeDmarcReportResults**](AnalyzeDmarcReportResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **analyze_email_headers**
> AnalyzeEmailHeadersResults analyze_email_headers(analyze_email_headers_options => $analyze_email_headers_options)

Analyze email headers for auth results and delivery path

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

my $analyze_email_headers_options = MailSlurp::Object::AnalyzeEmailHeadersOptions->new(); # AnalyzeEmailHeadersOptions | 

eval { 
    my $result = $api_instance->analyze_email_headers(analyze_email_headers_options => $analyze_email_headers_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->analyze_email_headers: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analyze_email_headers_options** | [**AnalyzeEmailHeadersOptions**](AnalyzeEmailHeadersOptions)|  | 

### Return type

[**AnalyzeEmailHeadersResults**](AnalyzeEmailHeadersResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **check_campaign_probe**
> CheckCampaignProbeResults check_campaign_probe(check_campaign_probe_options => $check_campaign_probe_options)

Run a one-shot free campaign probe preflight check

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

my $check_campaign_probe_options = MailSlurp::Object::CheckCampaignProbeOptions->new(); # CheckCampaignProbeOptions | 

eval { 
    my $result = $api_instance->check_campaign_probe(check_campaign_probe_options => $check_campaign_probe_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->check_campaign_probe: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **check_campaign_probe_options** | [**CheckCampaignProbeOptions**](CheckCampaignProbeOptions)|  | 

### Return type

[**CheckCampaignProbeResults**](CheckCampaignProbeResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **check_dns_propagation**
> CheckDnsPropagationResults check_dns_propagation(check_dns_propagation_options => $check_dns_propagation_options)

Check DNS propagation for a host and record type across configured resolvers

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

my $check_dns_propagation_options = MailSlurp::Object::CheckDnsPropagationOptions->new(); # CheckDnsPropagationOptions | 

eval { 
    my $result = $api_instance->check_dns_propagation(check_dns_propagation_options => $check_dns_propagation_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->check_dns_propagation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **check_dns_propagation_options** | [**CheckDnsPropagationOptions**](CheckDnsPropagationOptions)|  | 

### Return type

[**CheckDnsPropagationResults**](CheckDnsPropagationResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **check_domain_monitor**
> CheckDomainMonitorResults check_domain_monitor(check_domain_monitor_options => $check_domain_monitor_options)

Run a one-shot free domain monitor posture check

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

my $check_domain_monitor_options = MailSlurp::Object::CheckDomainMonitorOptions->new(); # CheckDomainMonitorOptions | 

eval { 
    my $result = $api_instance->check_domain_monitor(check_domain_monitor_options => $check_domain_monitor_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->check_domain_monitor: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **check_domain_monitor_options** | [**CheckDomainMonitorOptions**](CheckDomainMonitorOptions)|  | 

### Return type

[**CheckDomainMonitorResults**](CheckDomainMonitorResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **check_email_audit**
> EmailAuditAnalysisResult check_email_audit(check_email_audit_options => $check_email_audit_options)

Run a one-shot free email audit across links, images, HTML, and client support

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

my $check_email_audit_options = MailSlurp::Object::CheckEmailAuditOptions->new(); # CheckEmailAuditOptions | 

eval { 
    my $result = $api_instance->check_email_audit(check_email_audit_options => $check_email_audit_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->check_email_audit: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **check_email_audit_options** | [**CheckEmailAuditOptions**](CheckEmailAuditOptions)|  | 

### Return type

[**EmailAuditAnalysisResult**](EmailAuditAnalysisResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **check_email_auth_stack**
> CheckEmailAuthStackResults check_email_auth_stack(check_email_auth_stack_options => $check_email_auth_stack_options)

Run a one-shot combined SPF, DKIM, DMARC, BIMI, MX, MTA-STS, and TLS-RPT check

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

my $check_email_auth_stack_options = MailSlurp::Object::CheckEmailAuthStackOptions->new(); # CheckEmailAuthStackOptions | 

eval { 
    my $result = $api_instance->check_email_auth_stack(check_email_auth_stack_options => $check_email_auth_stack_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->check_email_auth_stack: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **check_email_auth_stack_options** | [**CheckEmailAuthStackOptions**](CheckEmailAuthStackOptions)|  | 

### Return type

[**CheckEmailAuthStackResults**](CheckEmailAuthStackResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **check_email_blacklist**
> CheckEmailBlacklistResults check_email_blacklist(check_email_blacklist_options => $check_email_blacklist_options)

Check whether a domain or IP appears on configured DNS blacklists

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

my $check_email_blacklist_options = MailSlurp::Object::CheckEmailBlacklistOptions->new(); # CheckEmailBlacklistOptions | 

eval { 
    my $result = $api_instance->check_email_blacklist(check_email_blacklist_options => $check_email_blacklist_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->check_email_blacklist: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **check_email_blacklist_options** | [**CheckEmailBlacklistOptions**](CheckEmailBlacklistOptions)|  | 

### Return type

[**CheckEmailBlacklistResults**](CheckEmailBlacklistResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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

# **delete_new_fake_email_address**
> delete_new_fake_email_address(email_address => $email_address)

Delete a fake email address using the fake email domains

Delete a fake email address using the fake email domains

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

eval { 
    $api_instance->delete_new_fake_email_address(email_address => $email_address);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->delete_new_fake_email_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

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

# **generate_spf_record**
> GenerateSpfRecordResults generate_spf_record(generate_spf_record_options => $generate_spf_record_options)

Create an SPF record

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

my $generate_spf_record_options = MailSlurp::Object::GenerateSpfRecordOptions->new(); # GenerateSpfRecordOptions | 

eval { 
    my $result = $api_instance->generate_spf_record(generate_spf_record_options => $generate_spf_record_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->generate_spf_record: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_spf_record_options** | [**GenerateSpfRecordOptions**](GenerateSpfRecordOptions)|  | 

### Return type

[**GenerateSpfRecordResults**](GenerateSpfRecordResults)

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

# **get_fake_email_by_email_address**
> FakeEmailResult get_fake_email_by_email_address(email_address => $email_address)



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

eval { 
    my $result = $api_instance->get_fake_email_by_email_address(email_address => $email_address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->get_fake_email_by_email_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **string**|  | 

### Return type

[**FakeEmailResult**](FakeEmailResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_fake_email_by_id**
> FakeEmailResult get_fake_email_by_id(id => $id)

Get a fake email by its ID

Get a fake email by its ID

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

# **get_fake_email_raw**
> string get_fake_email_raw(id => $id)

Get raw fake email content

Retrieve the raw content of a fake email by its ID

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
    my $result = $api_instance->get_fake_email_raw(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->get_fake_email_raw: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain;charset=utf-8, text/html;charset=utf-8, text/plain; charset=utf-8, text/html; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_fake_emails_for_address**
> ARRAY[FakeEmailPreview] get_fake_emails_for_address(email_address => $email_address, page => $page)

Get fake emails for an address

Get fake emails for an address

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

# **lookup_dkim_domain**
> LookupDkimDomainResults lookup_dkim_domain(lookup_dkim_domain_options => $lookup_dkim_domain_options)

Lookup and validate a DKIM record

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

my $lookup_dkim_domain_options = MailSlurp::Object::LookupDkimDomainOptions->new(); # LookupDkimDomainOptions | 

eval { 
    my $result = $api_instance->lookup_dkim_domain(lookup_dkim_domain_options => $lookup_dkim_domain_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->lookup_dkim_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookup_dkim_domain_options** | [**LookupDkimDomainOptions**](LookupDkimDomainOptions)|  | 

### Return type

[**LookupDkimDomainResults**](LookupDkimDomainResults)

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

# **lookup_mx_record**
> LookupMxRecordsResults lookup_mx_record(lookup_mx_records_options => $lookup_mx_records_options)

Lookup a MX records for a domain

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

my $lookup_mx_records_options = MailSlurp::Object::LookupMxRecordsOptions->new(); # LookupMxRecordsOptions | 

eval { 
    my $result = $api_instance->lookup_mx_record(lookup_mx_records_options => $lookup_mx_records_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->lookup_mx_record: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookup_mx_records_options** | [**LookupMxRecordsOptions**](LookupMxRecordsOptions)|  | 

### Return type

[**LookupMxRecordsResults**](LookupMxRecordsResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookup_ptr**
> LookupPtrResults lookup_ptr(lookup_ptr_options => $lookup_ptr_options)

Lookup PTR records for an IP address

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

my $lookup_ptr_options = MailSlurp::Object::LookupPtrOptions->new(); # LookupPtrOptions | 

eval { 
    my $result = $api_instance->lookup_ptr(lookup_ptr_options => $lookup_ptr_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->lookup_ptr: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookup_ptr_options** | [**LookupPtrOptions**](LookupPtrOptions)|  | 

### Return type

[**LookupPtrResults**](LookupPtrResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookup_spf_domain**
> LookupSpfDomainResults lookup_spf_domain(lookup_spf_domain_options => $lookup_spf_domain_options)

Lookup and validate an SPF record

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

my $lookup_spf_domain_options = MailSlurp::Object::LookupSpfDomainOptions->new(); # LookupSpfDomainOptions | 

eval { 
    my $result = $api_instance->lookup_spf_domain(lookup_spf_domain_options => $lookup_spf_domain_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->lookup_spf_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookup_spf_domain_options** | [**LookupSpfDomainOptions**](LookupSpfDomainOptions)|  | 

### Return type

[**LookupSpfDomainResults**](LookupSpfDomainResults)

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

# **test_smtp_server**
> TestSmtpServerResults test_smtp_server(test_smtp_server_options => $test_smtp_server_options)

Run a conservative SMTP connectivity, TLS, and AUTH diagnostic

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

my $test_smtp_server_options = MailSlurp::Object::TestSmtpServerOptions->new(); # TestSmtpServerOptions | 

eval { 
    my $result = $api_instance->test_smtp_server(test_smtp_server_options => $test_smtp_server_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ToolsControllerApi->test_smtp_server: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_smtp_server_options** | [**TestSmtpServerOptions**](TestSmtpServerOptions)|  | 

### Return type

[**TestSmtpServerResults**](TestSmtpServerResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

