# MailSlurp::EmailAuditControllerApi

## Load the API package
```perl
use MailSlurp::Object::EmailAuditControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compare_email_audits**](EmailAuditControllerApi#compare_email_audits) | **GET** /email-audits/{auditId}/compare/{otherAuditId} | Compare two email audits
[**create_email_audit**](EmailAuditControllerApi#create_email_audit) | **POST** /email-audits | Create email audit
[**delete_email_audit**](EmailAuditControllerApi#delete_email_audit) | **DELETE** /email-audits/{auditId} | Delete email audit
[**get_email_audit**](EmailAuditControllerApi#get_email_audit) | **GET** /email-audits/{auditId} | Get email audit
[**get_email_audits**](EmailAuditControllerApi#get_email_audits) | **GET** /email-audits | List email audits


# **compare_email_audits**
> EmailAuditComparisonDto compare_email_audits(audit_id => $audit_id, other_audit_id => $other_audit_id)

Compare two email audits

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailAuditControllerApi;
my $api_instance = MailSlurp::EmailAuditControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $audit_id = null; # string | 
my $other_audit_id = null; # string | 

eval { 
    my $result = $api_instance->compare_email_audits(audit_id => $audit_id, other_audit_id => $other_audit_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailAuditControllerApi->compare_email_audits: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **audit_id** | [**string**]()|  | 
 **other_audit_id** | [**string**]()|  | 

### Return type

[**EmailAuditComparisonDto**](EmailAuditComparisonDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_email_audit**
> EmailAuditDto create_email_audit(create_email_audit_options => $create_email_audit_options)

Create email audit

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailAuditControllerApi;
my $api_instance = MailSlurp::EmailAuditControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_email_audit_options = MailSlurp::Object::CreateEmailAuditOptions->new(); # CreateEmailAuditOptions | 

eval { 
    my $result = $api_instance->create_email_audit(create_email_audit_options => $create_email_audit_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailAuditControllerApi->create_email_audit: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_email_audit_options** | [**CreateEmailAuditOptions**](CreateEmailAuditOptions)|  | 

### Return type

[**EmailAuditDto**](EmailAuditDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_email_audit**
> delete_email_audit(audit_id => $audit_id)

Delete email audit

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailAuditControllerApi;
my $api_instance = MailSlurp::EmailAuditControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $audit_id = null; # string | 

eval { 
    $api_instance->delete_email_audit(audit_id => $audit_id);
};
if ($@) {
    warn "Exception when calling EmailAuditControllerApi->delete_email_audit: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **audit_id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_audit**
> EmailAuditDto get_email_audit(audit_id => $audit_id)

Get email audit

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailAuditControllerApi;
my $api_instance = MailSlurp::EmailAuditControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $audit_id = null; # string | 

eval { 
    my $result = $api_instance->get_email_audit(audit_id => $audit_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailAuditControllerApi->get_email_audit: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **audit_id** | [**string**]()|  | 

### Return type

[**EmailAuditDto**](EmailAuditDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_audits**
> ARRAY[EmailAuditDto] get_email_audits(email_id => $email_id, since => $since, before => $before, limit => $limit)

List email audits

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailAuditControllerApi;
my $api_instance = MailSlurp::EmailAuditControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $limit = 56; # int | 

eval { 
    my $result = $api_instance->get_email_audits(email_id => $email_id, since => $since, before => $before, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailAuditControllerApi->get_email_audits: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | [optional] 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**ARRAY[EmailAuditDto]**](EmailAuditDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

