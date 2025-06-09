# MailSlurp::MFAControllerApi

## Load the API package
```perl
use MailSlurp::Object::MFAControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_totp_device_for_custom**](MFAControllerApi#create_totp_device_for_custom) | **POST** /mfa/totp/device/custom | Create a TOTP device from custom options
[**create_totp_device_for_otp_auth_url**](MFAControllerApi#create_totp_device_for_otp_auth_url) | **POST** /mfa/totp/device/otpAuthUrl | Create a TOTP device from an OTP Auth URL
[**get_totp_device**](MFAControllerApi#get_totp_device) | **GET** /mfa/totp/device/{id} | Get a TOTP device by ID
[**get_totp_device_by**](MFAControllerApi#get_totp_device_by) | **GET** /mfa/totp/device/by | Get a TOTP device by username, issuer, or name. Returns empty if not found.
[**get_totp_device_code**](MFAControllerApi#get_totp_device_code) | **GET** /mfa/totp/device/{id}/code | Get a TOTP device code by device ID


# **create_totp_device_for_custom**
> TotpDeviceDto create_totp_device_for_custom(create_totp_device_otp_auth_url_options => $create_totp_device_otp_auth_url_options)

Create a TOTP device from custom options

Create a virtual TOTP device for custom options specifying all parameters of the TOTP device.

### Example 
```perl
use Data::Dumper;
use MailSlurp::MFAControllerApi;
my $api_instance = MailSlurp::MFAControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_totp_device_otp_auth_url_options = MailSlurp::Object::CreateTotpDeviceOtpAuthUrlOptions->new(); # CreateTotpDeviceOtpAuthUrlOptions | 

eval { 
    my $result = $api_instance->create_totp_device_for_custom(create_totp_device_otp_auth_url_options => $create_totp_device_otp_auth_url_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MFAControllerApi->create_totp_device_for_custom: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_totp_device_otp_auth_url_options** | [**CreateTotpDeviceOtpAuthUrlOptions**](CreateTotpDeviceOtpAuthUrlOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_totp_device_for_otp_auth_url**
> TotpDeviceDto create_totp_device_for_otp_auth_url(create_totp_device_otp_auth_url_options => $create_totp_device_otp_auth_url_options)

Create a TOTP device from an OTP Auth URL

Create a virtual TOTP device for a given OTP Auth URL such as otpauth://totp/MyApp:alice@example.com?secret=ABC123&issuer=MyApp&period=30&digits=6&algorithm=SHA1. You can provider overrides in the options for each component of the URL.

### Example 
```perl
use Data::Dumper;
use MailSlurp::MFAControllerApi;
my $api_instance = MailSlurp::MFAControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_totp_device_otp_auth_url_options = MailSlurp::Object::CreateTotpDeviceOtpAuthUrlOptions->new(); # CreateTotpDeviceOtpAuthUrlOptions | 

eval { 
    my $result = $api_instance->create_totp_device_for_otp_auth_url(create_totp_device_otp_auth_url_options => $create_totp_device_otp_auth_url_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MFAControllerApi->create_totp_device_for_otp_auth_url: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_totp_device_otp_auth_url_options** | [**CreateTotpDeviceOtpAuthUrlOptions**](CreateTotpDeviceOtpAuthUrlOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_totp_device**
> TotpDeviceDto get_totp_device(id => $id)

Get a TOTP device by ID

Get Time-Based One-Time Password (TOTP) device by its ID.

### Example 
```perl
use Data::Dumper;
use MailSlurp::MFAControllerApi;
my $api_instance = MailSlurp::MFAControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    my $result = $api_instance->get_totp_device(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MFAControllerApi->get_totp_device: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_totp_device_by**
> TotpDeviceOptionalDto get_totp_device_by(name => $name, issuer => $issuer, username => $username)

Get a TOTP device by username, issuer, or name. Returns empty if not found.

Get Time-Based One-Time Password (TOTP) device by its username and issuer mapping.

### Example 
```perl
use Data::Dumper;
use MailSlurp::MFAControllerApi;
my $api_instance = MailSlurp::MFAControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $name = "name_example"; # string | Optional name filter
my $issuer = "issuer_example"; # string | Optional issuer filter
my $username = "username_example"; # string | Optional username filter

eval { 
    my $result = $api_instance->get_totp_device_by(name => $name, issuer => $issuer, username => $username);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MFAControllerApi->get_totp_device_by: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Optional name filter | [optional] 
 **issuer** | **string**| Optional issuer filter | [optional] 
 **username** | **string**| Optional username filter | [optional] 

### Return type

[**TotpDeviceOptionalDto**](TotpDeviceOptionalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_totp_device_code**
> TotpDeviceCodeDto get_totp_device_code(id => $id, at => $at, min_seconds_until_expire => $min_seconds_until_expire)

Get a TOTP device code by device ID

Get Time-Based One-Time Password for a device by its ID.

### Example 
```perl
use Data::Dumper;
use MailSlurp::MFAControllerApi;
my $api_instance = MailSlurp::MFAControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of the TOTP device to get the code for
my $at = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional time to get code for. If not provided, current time is used.
my $min_seconds_until_expire = 5; # int | Optional minimum time until code expires. Will hold thread open until period reached.

eval { 
    my $result = $api_instance->get_totp_device_code(id => $id, at => $at, min_seconds_until_expire => $min_seconds_until_expire);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MFAControllerApi->get_totp_device_code: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of the TOTP device to get the code for | 
 **at** | **DateTime**| Optional time to get code for. If not provided, current time is used. | [optional] 
 **min_seconds_until_expire** | **int**| Optional minimum time until code expires. Will hold thread open until period reached. | [optional] [default to 5]

### Return type

[**TotpDeviceCodeDto**](TotpDeviceCodeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

