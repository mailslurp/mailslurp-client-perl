# MailSlurp::ConsentControllerApi

## Load the API package
```perl
use MailSlurp::Object::ConsentControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_sending_consent_for_email_address**](ConsentControllerApi#check_sending_consent_for_email_address) | **GET** /consent/opt-in/sending-consent | 
[**get_opt_in_identities**](ConsentControllerApi#get_opt_in_identities) | **GET** /consent/opt-in | 
[**revoke_opt_in_consent_for_email_address**](ConsentControllerApi#revoke_opt_in_consent_for_email_address) | **DELETE** /consent/opt-in | 
[**send_opt_in_consent_for_email_address**](ConsentControllerApi#send_opt_in_consent_for_email_address) | **POST** /consent/opt-in/send | Send a verification code to a user once they have explicitly submitted their email address


# **check_sending_consent_for_email_address**
> OptInSendingConsentDto check_sending_consent_for_email_address(email_address => $email_address)



### Example 
```perl
use Data::Dumper;
use MailSlurp::ConsentControllerApi;
my $api_instance = MailSlurp::ConsentControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_address = "email_address_example"; # string | Email address to check consent for

eval { 
    my $result = $api_instance->check_sending_consent_for_email_address(email_address => $email_address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConsentControllerApi->check_sending_consent_for_email_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **string**| Email address to check consent for | 

### Return type

[**OptInSendingConsentDto**](OptInSendingConsentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_opt_in_identities**
> PageOptInIdentityProjection get_opt_in_identities(page => $page, size => $size, sort => $sort)



### Example 
```perl
use Data::Dumper;
use MailSlurp::ConsentControllerApi;
my $api_instance = MailSlurp::ConsentControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_opt_in_identities(page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConsentControllerApi->get_opt_in_identities: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageOptInIdentityProjection**](PageOptInIdentityProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **revoke_opt_in_consent_for_email_address**
> OptInSendingConsentDto revoke_opt_in_consent_for_email_address(email_address => $email_address)



### Example 
```perl
use Data::Dumper;
use MailSlurp::ConsentControllerApi;
my $api_instance = MailSlurp::ConsentControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_address = "email_address_example"; # string | Email address to revoke consent for

eval { 
    my $result = $api_instance->revoke_opt_in_consent_for_email_address(email_address => $email_address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConsentControllerApi->revoke_opt_in_consent_for_email_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **string**| Email address to revoke consent for | 

### Return type

[**OptInSendingConsentDto**](OptInSendingConsentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_opt_in_consent_for_email_address**
> OptInConsentSendResult send_opt_in_consent_for_email_address(opt_in_consent_options => $opt_in_consent_options)

Send a verification code to a user once they have explicitly submitted their email address

Send double-opt in consent for an email address

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConsentControllerApi;
my $api_instance = MailSlurp::ConsentControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $opt_in_consent_options = MailSlurp::Object::OptInConsentOptions->new(); # OptInConsentOptions | 

eval { 
    my $result = $api_instance->send_opt_in_consent_for_email_address(opt_in_consent_options => $opt_in_consent_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConsentControllerApi->send_opt_in_consent_for_email_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **opt_in_consent_options** | [**OptInConsentOptions**](OptInConsentOptions)|  | 

### Return type

[**OptInConsentSendResult**](OptInConsentSendResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

