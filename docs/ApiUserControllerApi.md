# MailSlurp::ApiUserControllerApi

## Load the API package
```perl
use MailSlurp::Object::ApiUserControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_smtp_password**](ApiUserControllerApi#get_smtp_password) | **GET** /user/smtp/password | 
[**get_smtp_username**](ApiUserControllerApi#get_smtp_username) | **GET** /user/smtp/username | 
[**get_user_info**](ApiUserControllerApi#get_user_info) | **GET** /user/info | 


# **get_smtp_password**
> string get_smtp_password()



### Example 
```perl
use Data::Dumper;
use MailSlurp::ApiUserControllerApi;
my $api_instance = MailSlurp::ApiUserControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_smtp_password();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApiUserControllerApi->get_smtp_password: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_smtp_username**
> string get_smtp_username()



### Example 
```perl
use Data::Dumper;
use MailSlurp::ApiUserControllerApi;
my $api_instance = MailSlurp::ApiUserControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_smtp_username();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApiUserControllerApi->get_smtp_username: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_user_info**
> UserInfoDto get_user_info()



### Example 
```perl
use Data::Dumper;
use MailSlurp::ApiUserControllerApi;
my $api_instance = MailSlurp::ApiUserControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_user_info();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApiUserControllerApi->get_user_info: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserInfoDto**](UserInfoDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

