# MailSlurp::PhoneControllerApi

## Load the API package
```perl
use MailSlurp::Object::PhoneControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_emergency_address**](PhoneControllerApi#create_emergency_address) | **POST** /phone/emergency-addresses | Create an emergency address
[**create_phone_number**](PhoneControllerApi#create_phone_number) | **POST** /phone | Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.
[**delete_emergency_address**](PhoneControllerApi#delete_emergency_address) | **DELETE** /phone/emergency-addresses/{addressId} | Delete an emergency address
[**delete_phone_number**](PhoneControllerApi#delete_phone_number) | **DELETE** /phone/numbers/{phoneNumberId} | Delete a phone number
[**get_all_phone_message_threads**](PhoneControllerApi#get_all_phone_message_threads) | **GET** /phone/numbers/message-threads | Get the latest messages for all phones
[**get_consent_status**](PhoneControllerApi#get_consent_status) | **GET** /phone/consent | Get consent status
[**get_emergency_address**](PhoneControllerApi#get_emergency_address) | **GET** /phone/emergency-addresses/{addressId} | Get an emergency address
[**get_emergency_addresses**](PhoneControllerApi#get_emergency_addresses) | **GET** /phone/emergency-addresses | Get emergency addresses
[**get_phone_message_thread_items**](PhoneControllerApi#get_phone_message_thread_items) | **GET** /phone/numbers/{phoneNumberId}/message-threads/{otherNumber} | Get messages in a phone thread
[**get_phone_message_threads**](PhoneControllerApi#get_phone_message_threads) | **GET** /phone/numbers/{phoneNumberId}/message-threads | Get the latest message preview for a thread
[**get_phone_number**](PhoneControllerApi#get_phone_number) | **GET** /phone/numbers/{phoneNumberId} | Get a phone number by ID
[**get_phone_number_by_name**](PhoneControllerApi#get_phone_number_by_name) | **GET** /phone/numbers/by-name | Get a phone number by name
[**get_phone_number_by_phone_number**](PhoneControllerApi#get_phone_number_by_phone_number) | **GET** /phone/numbers/by-phone-number | Get a phone number by phone number
[**get_phone_numbers**](PhoneControllerApi#get_phone_numbers) | **GET** /phone/numbers | Get phone numbers
[**get_phone_plans**](PhoneControllerApi#get_phone_plans) | **GET** /phone/plans | Get phone plans
[**get_phone_plans_availability**](PhoneControllerApi#get_phone_plans_availability) | **GET** /phone/plans/availability | Get phone plans availability
[**get_sent_sms_by_phone_number**](PhoneControllerApi#get_sent_sms_by_phone_number) | **GET** /phone/numbers/{phoneNumberId}/sms-sent | List sent TXT messages for a phone number
[**get_sms_by_phone_number**](PhoneControllerApi#get_sms_by_phone_number) | **GET** /phone/numbers/{phoneNumberId}/sms | List SMS messages for a phone number
[**send_sms_from_phone_number**](PhoneControllerApi#send_sms_from_phone_number) | **POST** /phone/numbers/{phoneNumberId}/sms | Send TXT message from a phone number
[**set_consent_status**](PhoneControllerApi#set_consent_status) | **POST** /phone/consent | Set consent status
[**set_phone_favourited**](PhoneControllerApi#set_phone_favourited) | **PUT** /phone/numbers/{phoneNumberId}/favourite | Set phone favourited state
[**test_phone_number_send_sms**](PhoneControllerApi#test_phone_number_send_sms) | **POST** /phone/numbers/{phoneNumberId}/test | Test sending an SMS to a number
[**update_phone_number**](PhoneControllerApi#update_phone_number) | **PUT** /phone/numbers/{phoneNumberId} | Update a phone number
[**validate_phone_number**](PhoneControllerApi#validate_phone_number) | **POST** /phone/validate | Verify validity of a phone number


# **create_emergency_address**
> EmergencyAddress create_emergency_address(create_emergency_address_options => $create_emergency_address_options)

Create an emergency address

Add an emergency address to a phone number

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

# **create_phone_number**
> PhoneNumberDto create_phone_number(create_phone_number_options => $create_phone_number_options)

Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.

Create new phone number

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

my $create_phone_number_options = MailSlurp::Object::CreatePhoneNumberOptions->new(); # CreatePhoneNumberOptions | 

eval { 
    my $result = $api_instance->create_phone_number(create_phone_number_options => $create_phone_number_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->create_phone_number: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_phone_number_options** | [**CreatePhoneNumberOptions**](CreatePhoneNumberOptions)|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_emergency_address**
> EmptyResponseDto delete_emergency_address(address_id => $address_id)

Delete an emergency address

Delete an emergency address

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

Delete a phone number

Remove phone number from account

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

# **get_all_phone_message_threads**
> PagePhoneMessageThreadProjection get_all_phone_message_threads(page => $page, size => $size)

Get the latest messages for all phones

List all message threads for all phones

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

my $page = 0; # int | 
my $size = 20; # int | 

eval { 
    my $result = $api_instance->get_all_phone_message_threads(page => $page, size => $size);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->get_all_phone_message_threads: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadProjection**](PagePhoneMessageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_consent_status**
> ConsentStatusDto get_consent_status()

Get consent status

Get the status of phone usage consent

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
    my $result = $api_instance->get_consent_status();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->get_consent_status: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConsentStatusDto**](ConsentStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_emergency_address**
> EmergencyAddress get_emergency_address(address_id => $address_id)

Get an emergency address

Fetch an emergency address by ID

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

Get emergency addresses

List emergency addresses

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

# **get_phone_message_thread_items**
> PagePhoneMessageThreadItemProjection get_phone_message_thread_items(phone_number_id => $phone_number_id, other_number => $other_number, page => $page, size => $size)

Get messages in a phone thread

List message thread messages for a phone message thread

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
my $other_number = "other_number_example"; # string | 
my $page = 0; # int | 
my $size = 20; # int | 

eval { 
    my $result = $api_instance->get_phone_message_thread_items(phone_number_id => $phone_number_id, other_number => $other_number, page => $page, size => $size);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->get_phone_message_thread_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**string**]()|  | 
 **other_number** | **string**|  | 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadItemProjection**](PagePhoneMessageThreadItemProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_phone_message_threads**
> PagePhoneMessageThreadProjection get_phone_message_threads(phone_number_id => $phone_number_id, page => $page, size => $size)

Get the latest message preview for a thread

List message threads for a phone

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
my $page = 0; # int | 
my $size = 20; # int | 

eval { 
    my $result = $api_instance->get_phone_message_threads(phone_number_id => $phone_number_id, page => $page, size => $size);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->get_phone_message_threads: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**string**]()|  | 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadProjection**](PagePhoneMessageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_phone_number**
> PhoneNumberDto get_phone_number(phone_number_id => $phone_number_id)

Get a phone number by ID

Get a phone number by ID

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

# **get_phone_number_by_name**
> PhoneNumberDto get_phone_number_by_name()

Get a phone number by name

Get a phone number by name

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
    my $result = $api_instance->get_phone_number_by_name();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->get_phone_number_by_name: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_phone_number_by_phone_number**
> PhoneNumberDto get_phone_number_by_phone_number()

Get a phone number by phone number

Get a phone number by phone number

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
    my $result = $api_instance->get_phone_number_by_phone_number();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->get_phone_number_by_phone_number: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_phone_numbers**
> PagePhoneNumberProjection get_phone_numbers(phone_country => $phone_country, page => $page, size => $size, sort => $sort, since => $since, before => $before, search => $search, include => $include, favourite => $favourite)

Get phone numbers

List phone numbers for account

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

my $phone_country = "phone_country_example"; # string | Optional phone country
my $page = 0; # int | Optional page index for list pagination
my $size = 20; # int | Optional page size for list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $search = "search_example"; # string | Optional search filter
my $include = [("null")]; # ARRAY[string] | Optional phoneIds to include in result
my $favourite = false; # boolean | Optionally filter results for favourites only

eval { 
    my $result = $api_instance->get_phone_numbers(phone_country => $phone_country, page => $page, size => $size, sort => $sort, since => $since, before => $before, search => $search, include => $include, favourite => $favourite);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->get_phone_numbers: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_country** | **string**| Optional phone country | [optional] 
 **page** | **int**| Optional page index for list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size for list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **search** | **string**| Optional search filter | [optional] 
 **include** | [**ARRAY[string]**](string)| Optional phoneIds to include in result | [optional] 
 **favourite** | **boolean**| Optionally filter results for favourites only | [optional] [default to false]

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

Get phone plans

Get phone number plans

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

# **get_phone_plans_availability**
> PhonePlanAvailability get_phone_plans_availability()

Get phone plans availability

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
    my $result = $api_instance->get_phone_plans_availability();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->get_phone_plans_availability: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PhonePlanAvailability**](PhonePlanAvailability)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_sms_by_phone_number**
> PageSentSmsProjection get_sent_sms_by_phone_number(phone_number_id => $phone_number_id, page => $page, size => $size, sort => $sort, since => $since, before => $before, search => $search)

List sent TXT messages for a phone number

Get sent SMS messages for a phone number

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
my $page = 0; # int | Optional page index in SMS list pagination
my $size = 20; # int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter SMSs received after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter SMSs received before given date time
my $search = "search_example"; # string | Optional search filter

eval { 
    my $result = $api_instance->get_sent_sms_by_phone_number(phone_number_id => $phone_number_id, page => $page, size => $size, sort => $sort, since => $since, before => $before, search => $search);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->get_sent_sms_by_phone_number: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**string**]()|  | 
 **page** | **int**| Optional page index in SMS list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter SMSs received after given date time | [optional] 
 **before** | **DateTime**| Optional filter SMSs received before given date time | [optional] 
 **search** | **string**| Optional search filter | [optional] 

### Return type

[**PageSentSmsProjection**](PageSentSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sms_by_phone_number**
> PageSmsProjection get_sms_by_phone_number(phone_number_id => $phone_number_id, page => $page, size => $size, sort => $sort, unread_only => $unread_only, since => $since, before => $before, search => $search, favourite => $favourite)

List SMS messages for a phone number

Get SMS messages for a phone number

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
my $page = 0; # int | Optional page index in SMS list pagination
my $size = 20; # int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $unread_only = false; # boolean | Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter SMSs received after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter SMSs received before given date time
my $search = "search_example"; # string | Optional search filter
my $favourite = false; # boolean | Optionally filter results for favourites only

eval { 
    my $result = $api_instance->get_sms_by_phone_number(phone_number_id => $phone_number_id, page => $page, size => $size, sort => $sort, unread_only => $unread_only, since => $since, before => $before, search => $search, favourite => $favourite);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->get_sms_by_phone_number: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**string**]()|  | 
 **page** | **int**| Optional page index in SMS list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **unread_only** | **boolean**| Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]
 **since** | **DateTime**| Optional filter SMSs received after given date time | [optional] 
 **before** | **DateTime**| Optional filter SMSs received before given date time | [optional] 
 **search** | **string**| Optional search filter | [optional] 
 **favourite** | **boolean**| Optionally filter results for favourites only | [optional] [default to false]

### Return type

[**PageSmsProjection**](PageSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_sms_from_phone_number**
> SentSmsDto send_sms_from_phone_number(phone_number_id => $phone_number_id, sms_send_options => $sms_send_options)

Send TXT message from a phone number

Send SMS from a phone number

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
my $sms_send_options = MailSlurp::Object::SmsSendOptions->new(); # SmsSendOptions | 

eval { 
    my $result = $api_instance->send_sms_from_phone_number(phone_number_id => $phone_number_id, sms_send_options => $sms_send_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->send_sms_from_phone_number: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**string**]()|  | 
 **sms_send_options** | [**SmsSendOptions**](SmsSendOptions)|  | 

### Return type

[**SentSmsDto**](SentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **set_consent_status**
> ConsentStatusDto set_consent_status(agree => $agree)

Set consent status

Give or revoke consent for phone usage

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

my $agree = null; # boolean | 

eval { 
    my $result = $api_instance->set_consent_status(agree => $agree);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->set_consent_status: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agree** | **boolean**|  | 

### Return type

[**ConsentStatusDto**](ConsentStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **set_phone_favourited**
> PhoneNumberDto set_phone_favourited(phone_number_id => $phone_number_id, set_phone_favourited_options => $set_phone_favourited_options)

Set phone favourited state

Set and return new favorite state for a phone

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

my $phone_number_id = null; # string | ID of phone to set favourite state
my $set_phone_favourited_options = MailSlurp::Object::SetPhoneFavouritedOptions->new(); # SetPhoneFavouritedOptions | 

eval { 
    my $result = $api_instance->set_phone_favourited(phone_number_id => $phone_number_id, set_phone_favourited_options => $set_phone_favourited_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->set_phone_favourited: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**string**]()| ID of phone to set favourite state | 
 **set_phone_favourited_options** | [**SetPhoneFavouritedOptions**](SetPhoneFavouritedOptions)|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_phone_number_send_sms**
> test_phone_number_send_sms(phone_number_id => $phone_number_id, test_phone_number_options => $test_phone_number_options, x_test_id => $x_test_id)

Test sending an SMS to a number

Test a phone number by sending an SMS to it

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
my $x_test_id = "x_test_id_example"; # string | 

eval { 
    $api_instance->test_phone_number_send_sms(phone_number_id => $phone_number_id, test_phone_number_options => $test_phone_number_options, x_test_id => $x_test_id);
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
 **x_test_id** | **string**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_phone_number**
> PhoneNumberDto update_phone_number(phone_number_id => $phone_number_id, update_phone_number_options => $update_phone_number_options)

Update a phone number

Set field for phone number

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

my $phone_number_id = null; # string | ID of phone to set favourite state
my $update_phone_number_options = MailSlurp::Object::UpdatePhoneNumberOptions->new(); # UpdatePhoneNumberOptions | 

eval { 
    my $result = $api_instance->update_phone_number(phone_number_id => $phone_number_id, update_phone_number_options => $update_phone_number_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->update_phone_number: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**string**]()| ID of phone to set favourite state | 
 **update_phone_number_options** | [**UpdatePhoneNumberOptions**](UpdatePhoneNumberOptions)|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validate_phone_number**
> PhoneNumberValidationDto validate_phone_number(validate_phone_number_options => $validate_phone_number_options)

Verify validity of a phone number

Validate a phone number

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

my $validate_phone_number_options = MailSlurp::Object::ValidatePhoneNumberOptions->new(); # ValidatePhoneNumberOptions | 

eval { 
    my $result = $api_instance->validate_phone_number(validate_phone_number_options => $validate_phone_number_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PhoneControllerApi->validate_phone_number: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validate_phone_number_options** | [**ValidatePhoneNumberOptions**](ValidatePhoneNumberOptions)|  | 

### Return type

[**PhoneNumberValidationDto**](PhoneNumberValidationDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

