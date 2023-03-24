# MailSlurp::SmsControllerApi

## Load the API package
```perl
use MailSlurp::Object::SmsControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_sms_message**](SmsControllerApi#delete_sms_message) | **DELETE** /sms/{smsId} | Delete SMS message.
[**delete_sms_messages**](SmsControllerApi#delete_sms_messages) | **DELETE** /sms | Delete all SMS messages
[**get_sms_message**](SmsControllerApi#get_sms_message) | **GET** /sms/{smsId} | Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
[**get_sms_messages_paginated**](SmsControllerApi#get_sms_messages_paginated) | **GET** /sms | Get all SMS messages in all phone numbers in paginated form. .


# **delete_sms_message**
> delete_sms_message(sms_id => $sms_id)

Delete SMS message.

Delete an SMS message

### Example 
```perl
use Data::Dumper;
use MailSlurp::SmsControllerApi;
my $api_instance = MailSlurp::SmsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $sms_id = null; # string | 

eval { 
    $api_instance->delete_sms_message(sms_id => $sms_id);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->delete_sms_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_sms_messages**
> delete_sms_messages(phone_number_id => $phone_number_id)

Delete all SMS messages

Delete all SMS messages or all messages for a given phone number

### Example 
```perl
use Data::Dumper;
use MailSlurp::SmsControllerApi;
my $api_instance = MailSlurp::SmsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $phone_number_id = null; # string | 

eval { 
    $api_instance->delete_sms_messages(phone_number_id => $phone_number_id);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->delete_sms_messages: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**string**]()|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sms_message**
> SmsDto get_sms_message(sms_id => $sms_id)

Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.

Returns a SMS summary object with content.

### Example 
```perl
use Data::Dumper;
use MailSlurp::SmsControllerApi;
my $api_instance = MailSlurp::SmsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $sms_id = null; # string | 

eval { 
    my $result = $api_instance->get_sms_message(sms_id => $sms_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->get_sms_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_id** | [**string**]()|  | 

### Return type

[**SmsDto**](SmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sms_messages_paginated**
> PageSmsProjection get_sms_messages_paginated(phone_number => $phone_number, page => $page, size => $size, sort => $sort, unread_only => $unread_only, since => $since, before => $before)

Get all SMS messages in all phone numbers in paginated form. .

By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages

### Example 
```perl
use Data::Dumper;
use MailSlurp::SmsControllerApi;
my $api_instance = MailSlurp::SmsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $phone_number = null; # string | Optional receiving phone number to filter SMS messages for
my $page = 0; # int | Optional page index in SMS list pagination
my $size = 20; # int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $unread_only = false; # boolean | Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter SMSs received after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter SMSs received before given date time

eval { 
    my $result = $api_instance->get_sms_messages_paginated(phone_number => $phone_number, page => $page, size => $size, sort => $sort, unread_only => $unread_only, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->get_sms_messages_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number** | [**string**]()| Optional receiving phone number to filter SMS messages for | [optional] 
 **page** | **int**| Optional page index in SMS list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **unread_only** | **boolean**| Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]
 **since** | **DateTime**| Optional filter SMSs received after given date time | [optional] 
 **before** | **DateTime**| Optional filter SMSs received before given date time | [optional] 

### Return type

[**PageSmsProjection**](PageSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

