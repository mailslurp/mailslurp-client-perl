# MailSlurp::EmailVerificationControllerApi

## Load the API package
```perl
use MailSlurp::Object::EmailVerificationControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_validation_requests**](EmailVerificationControllerApi#get_validation_requests) | **GET** /email-verification/validation-requests | Validate a list of email addresses. Per unit billing. See your plan for pricing.
[**validate_email_address_list**](EmailVerificationControllerApi#validate_email_address_list) | **POST** /email-verification/email-address-list | Validate a list of email addresses. Per unit billing. See your plan for pricing.


# **get_validation_requests**
> PageEmailValidationRequest get_validation_requests(page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before, is_valid => $is_valid)

Validate a list of email addresses. Per unit billing. See your plan for pricing.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailVerificationControllerApi;
my $api_instance = MailSlurp::EmailVerificationControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size for paginated result list.
my $sort = 'DESC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $is_valid = null; # boolean | Filter where email is valid is true or false

eval { 
    my $result = $api_instance->get_validation_requests(page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before, is_valid => $is_valid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailVerificationControllerApi->get_validation_requests: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;DESC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **is_valid** | **boolean**| Filter where email is valid is true or false | [optional] 

### Return type

[**PageEmailValidationRequest**](PageEmailValidationRequest)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validate_email_address_list**
> ValidateEmailAddressListResult validate_email_address_list(validate_email_address_list_options => $validate_email_address_list_options)

Validate a list of email addresses. Per unit billing. See your plan for pricing.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailVerificationControllerApi;
my $api_instance = MailSlurp::EmailVerificationControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $validate_email_address_list_options = MailSlurp::Object::ValidateEmailAddressListOptions->new(); # ValidateEmailAddressListOptions | 

eval { 
    my $result = $api_instance->validate_email_address_list(validate_email_address_list_options => $validate_email_address_list_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailVerificationControllerApi->validate_email_address_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validate_email_address_list_options** | [**ValidateEmailAddressListOptions**](ValidateEmailAddressListOptions)|  | 

### Return type

[**ValidateEmailAddressListResult**](ValidateEmailAddressListResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

