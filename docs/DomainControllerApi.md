# MailSlurp::DomainControllerApi

## Load the API package
```perl
use MailSlurp::Object::DomainControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_domain_wildcard_catch_all**](DomainControllerApi#add_domain_wildcard_catch_all) | **POST** /domains/{id}/wildcard | Add catch all wild card inbox to domain
[**create_domain**](DomainControllerApi#create_domain) | **POST** /domains | Create Domain
[**delete_domain**](DomainControllerApi#delete_domain) | **DELETE** /domains/{id} | Delete a domain
[**get_available_domains**](DomainControllerApi#get_available_domains) | **GET** /domains/available-domains | Get all usable domains
[**get_domain**](DomainControllerApi#get_domain) | **GET** /domains/{id} | Get a domain
[**get_domain_issues**](DomainControllerApi#get_domain_issues) | **GET** /domains/issues | Get domain issues
[**get_domain_wildcard_catch_all_inbox**](DomainControllerApi#get_domain_wildcard_catch_all_inbox) | **GET** /domains/{id}/wildcard | Get catch all wild card inbox for domain
[**get_domains**](DomainControllerApi#get_domains) | **GET** /domains | Get domains
[**get_mail_slurp_domains**](DomainControllerApi#get_mail_slurp_domains) | **GET** /domains/mailslurp-domains | Get MailSlurp domains
[**update_domain**](DomainControllerApi#update_domain) | **PUT** /domains/{id} | Update a domain


# **add_domain_wildcard_catch_all**
> DomainDto add_domain_wildcard_catch_all(id => $id)

Add catch all wild card inbox to domain

Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    my $result = $api_instance->add_domain_wildcard_catch_all(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->add_domain_wildcard_catch_all: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_domain**
> DomainDto create_domain(create_domain_options => $create_domain_options)

Create Domain

Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_domain_options = MailSlurp::Object::CreateDomainOptions->new(); # CreateDomainOptions | 

eval { 
    my $result = $api_instance->create_domain(create_domain_options => $create_domain_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->create_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_domain_options** | [**CreateDomainOptions**](CreateDomainOptions)|  | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_domain**
> ARRAY[string] delete_domain(id => $id)

Delete a domain

Delete a domain. This will disable any existing inboxes that use this domain.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    my $result = $api_instance->delete_domain(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->delete_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

**ARRAY[string]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_available_domains**
> DomainGroupsDto get_available_domains(inbox_type => $inbox_type)

Get all usable domains

List all domains available for use with email address creation

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_type = "inbox_type_example"; # string | 

eval { 
    my $result = $api_instance->get_available_domains(inbox_type => $inbox_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->get_available_domains: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_type** | **string**|  | [optional] 

### Return type

[**DomainGroupsDto**](DomainGroupsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_domain**
> DomainDto get_domain(id => $id, check_for_errors => $check_for_errors)

Get a domain

Returns domain verification status and tokens for a given domain

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 
my $check_for_errors = null; # boolean | 

eval { 
    my $result = $api_instance->get_domain(id => $id, check_for_errors => $check_for_errors);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->get_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 
 **check_for_errors** | **boolean**|  | [optional] 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_domain_issues**
> DomainIssuesDto get_domain_issues()

Get domain issues

List domain issues for domains you have created

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_domain_issues();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->get_domain_issues: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DomainIssuesDto**](DomainIssuesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_domain_wildcard_catch_all_inbox**
> InboxDto get_domain_wildcard_catch_all_inbox(id => $id)

Get catch all wild card inbox for domain

Get the catch all inbox for a domain for missed emails

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    my $result = $api_instance->get_domain_wildcard_catch_all_inbox(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->get_domain_wildcard_catch_all_inbox: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_domains**
> ARRAY[DomainPreview] get_domains()

Get domains

List all custom domains you have created

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_domains();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->get_domains: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[DomainPreview]**](DomainPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_mail_slurp_domains**
> DomainGroupsDto get_mail_slurp_domains(inbox_type => $inbox_type)

Get MailSlurp domains

List all MailSlurp domains used with non-custom email addresses

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_type = "inbox_type_example"; # string | 

eval { 
    my $result = $api_instance->get_mail_slurp_domains(inbox_type => $inbox_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->get_mail_slurp_domains: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_type** | **string**|  | [optional] 

### Return type

[**DomainGroupsDto**](DomainGroupsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_domain**
> DomainDto update_domain(id => $id, update_domain_options => $update_domain_options)

Update a domain

Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 
my $update_domain_options = MailSlurp::Object::UpdateDomainOptions->new(); # UpdateDomainOptions | 

eval { 
    my $result = $api_instance->update_domain(id => $id, update_domain_options => $update_domain_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->update_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 
 **update_domain_options** | [**UpdateDomainOptions**](UpdateDomainOptions)|  | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

