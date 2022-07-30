# MailSlurp::PhoneControllerApi

## Load the API package
```perl
use MailSlurp::Object::PhoneControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_emergency_address**](PhoneControllerApi#create_emergency_address) | **POST** /phone/emergency-addresses | 
[**delete_emergency_address**](PhoneControllerApi#delete_emergency_address) | **DELETE** /phone/emergency-addresses/{addressId} | 
[**delete_phone_number**](PhoneControllerApi#delete_phone_number) | **DELETE** /phone/numbers/{phoneNumberId} | 
[**get_emergency_address**](PhoneControllerApi#get_emergency_address) | **GET** /phone/emergency-addresses/{addressId} | 
[**get_emergency_addresses**](PhoneControllerApi#get_emergency_addresses) | **GET** /phone/emergency-addresses | 
[**get_phone_number**](PhoneControllerApi#get_phone_number) | **GET** /phone/numbers/{phoneNumberId} | 
[**get_phone_numbers**](PhoneControllerApi#get_phone_numbers) | **GET** /phone/numbers | 
[**get_phone_plans**](PhoneControllerApi#get_phone_plans) | **GET** /phone/plans | 
[**test_phone_number_send_sms**](PhoneControllerApi#test_phone_number_send_sms) | **POST** /phone/numbers/{phoneNumberId}/test | 


# **create_emergency_address**
> EmergencyAddress create_emergency_address(create_emergency_address_options => $create_emergency_address_options)



### Example 
```perl
use Data::Dumper;
use MailSlurp::PhoneControllerApi;
my $api_instance = MailSlurp::PhoneControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_emergency_address_options = MailSlurp::Object::CreateEmergencyAddressOptions->new(); # CreateEmergencyAddressOptions | 

eval { 
    my $result = $api_instance->create_emergency_address(create_emergency_address_options => $create_emergency_address_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->create_emergency_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_emergency_address_options** | [**CreateEmergencyAddressOptions**](CreateEmergencyAddressOptions)|  | 

### Return type

[**EmergencyAddress**](EmergencyAddress)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_emergency_address**
> EmptyResponseDto delete_emergency_address(address_id => $address_id)



### Example 
```perl
use Data::Dumper;
use MailSlurp::PhoneControllerApi;
my $api_instance = MailSlurp::PhoneControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $address_id = null; # string | 

eval { 
    my $result = $api_instance->delete_emergency_address(address_id => $address_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->delete_emergency_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address_id** | [**string**]()|  | 

### Return type

[**EmptyResponseDto**](EmptyResponseDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_phone_number**
> delete_phone_number(phone_number_id => $phone_number_id)



### Example 
```perl
use Data::Dumper;
use MailSlurp::PhoneControllerApi;
my $api_instance = MailSlurp::PhoneControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $phone_number_id = null; # string | 

eval { 
    $api_instance->delete_phone_number(phone_number_id => $phone_number_id);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->delete_phone_number: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_emergency_address**
> EmergencyAddress get_emergency_address(address_id => $address_id)



### Example 
```perl
use Data::Dumper;
use MailSlurp::PhoneControllerApi;
my $api_instance = MailSlurp::PhoneControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $address_id = null; # string | 

eval { 
    my $result = $api_instance->get_emergency_address(address_id => $address_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->get_emergency_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address_id** | [**string**]()|  | 

### Return type

[**EmergencyAddress**](EmergencyAddress)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_emergency_addresses**
> ARRAY[EmergencyAddressDto] get_emergency_addresses()



### Example 
```perl
use Data::Dumper;
use MailSlurp::PhoneControllerApi;
my $api_instance = MailSlurp::PhoneControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_emergency_addresses();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->get_emergency_addresses: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[EmergencyAddressDto]**](EmergencyAddressDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_phone_number**
> PhoneNumberDto get_phone_number(phone_number_id => $phone_number_id)



### Example 
```perl
use Data::Dumper;
use MailSlurp::PhoneControllerApi;
my $api_instance = MailSlurp::PhoneControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $phone_number_id = null; # string | 

eval { 
    my $result = $api_instance->get_phone_number(phone_number_id => $phone_number_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->get_phone_number: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**string**]()|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_phone_numbers**
> PagePhoneNumberProjection get_phone_numbers(page => $page, size => $size, sort => $sort, since => $since, before => $before)



### Example 
```perl
use Data::Dumper;
use MailSlurp::PhoneControllerApi;
my $api_instance = MailSlurp::PhoneControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index for list pagination
my $size = 20; # int | Optional page size for list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_phone_numbers(page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->get_phone_numbers: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index for list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size for list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PagePhoneNumberProjection**](PagePhoneNumberProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_phone_plans**
> ARRAY[PhonePlanDto] get_phone_plans()



### Example 
```perl
use Data::Dumper;
use MailSlurp::PhoneControllerApi;
my $api_instance = MailSlurp::PhoneControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_phone_plans();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->get_phone_plans: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[PhonePlanDto]**](PhonePlanDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_phone_number_send_sms**
> test_phone_number_send_sms(phone_number_id => $phone_number_id, test_phone_number_options => $test_phone_number_options)



### Example 
```perl
use Data::Dumper;
use MailSlurp::PhoneControllerApi;
my $api_instance = MailSlurp::PhoneControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $phone_number_id = null; # string | 
my $test_phone_number_options = MailSlurp::Object::TestPhoneNumberOptions->new(); # TestPhoneNumberOptions | 

eval { 
    $api_instance->test_phone_number_send_sms(phone_number_id => $phone_number_id, test_phone_number_options => $test_phone_number_options);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->test_phone_number_send_sms: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**string**]()|  | 
 **test_phone_number_options** | [**TestPhoneNumberOptions**](TestPhoneNumberOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

