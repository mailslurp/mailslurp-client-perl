# MailSlurp::SmsControllerApi

## Load the API package
```perl
use MailSlurp::Object::SmsControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_sent_sms_message**](SmsControllerApi#delete_sent_sms_message) | **DELETE** /sms/sent/{sentSmsId} | Delete sent SMS message.
[**delete_sent_sms_messages**](SmsControllerApi#delete_sent_sms_messages) | **DELETE** /sms/sent | Delete all sent SMS messages
[**delete_sms_message**](SmsControllerApi#delete_sms_message) | **DELETE** /sms/{smsId} | Delete SMS message.
[**delete_sms_messages**](SmsControllerApi#delete_sms_messages) | **DELETE** /sms | Delete all SMS messages
[**get_all_sms_messages**](SmsControllerApi#get_all_sms_messages) | **GET** /sms | 
[**get_reply_for_sms_message**](SmsControllerApi#get_reply_for_sms_message) | **GET** /sms/{smsId}/reply | Get reply for an SMS message
[**get_sent_sms_count**](SmsControllerApi#get_sent_sms_count) | **GET** /sms/sent/count | Get sent SMS count
[**get_sent_sms_message**](SmsControllerApi#get_sent_sms_message) | **GET** /sms/sent/{sentSmsId} | Get sent SMS content including body. Expects sent SMS to exist by ID.
[**get_sent_sms_messages_paginated**](SmsControllerApi#get_sent_sms_messages_paginated) | **GET** /sms/sent | Get all SMS messages in all phone numbers in paginated form. .
[**get_sms_count**](SmsControllerApi#get_sms_count) | **GET** /sms/count | Get SMS count
[**get_sms_message**](SmsControllerApi#get_sms_message) | **GET** /sms/{smsId} | Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
[**get_unread_sms_count**](SmsControllerApi#get_unread_sms_count) | **GET** /sms/unreadCount | Get unread SMS count
[**reply_to_sms_message**](SmsControllerApi#reply_to_sms_message) | **POST** /sms/{smsId}/reply | Send a reply to a received SMS message. Replies are sent from the receiving number.
[**send_sms**](SmsControllerApi#send_sms) | **POST** /sms/send | 
[**set_sms_favourited**](SmsControllerApi#set_sms_favourited) | **PUT** /sms/{smsId}/favourite | 


# **delete_sent_sms_message**
> delete_sent_sms_message(sent_sms_id => $sent_sms_id)

Delete sent SMS message.

Delete a sent SMS message

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

my $sent_sms_id = null; # string | 

eval { 
    $api_instance->delete_sent_sms_message(sent_sms_id => $sent_sms_id);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->delete_sent_sms_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sent_sms_id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_sent_sms_messages**
> delete_sent_sms_messages(phone_number_id => $phone_number_id)

Delete all sent SMS messages

Delete all sent SMS messages or all messages for a given phone number

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
    $api_instance->delete_sent_sms_messages(phone_number_id => $phone_number_id);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->delete_sent_sms_messages: $@\n";
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

# **get_all_sms_messages**
> PageSmsProjection get_all_sms_messages(phone_number => $phone_number, page => $page, size => $size, sort => $sort, since => $since, before => $before, search => $search, favourite => $favourite, include => $include)



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
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter SMSs received after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter SMSs received before given date time
my $search = "search_example"; # string | Optional search filter
my $favourite = false; # boolean | Optionally filter results for favourites only
my $include = [("null")]; # ARRAY[string] | Optional list of IDs to include in result

eval { 
    my $result = $api_instance->get_all_sms_messages(phone_number => $phone_number, page => $page, size => $size, sort => $sort, since => $since, before => $before, search => $search, favourite => $favourite, include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->get_all_sms_messages: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number** | [**string**]()| Optional receiving phone number to filter SMS messages for | [optional] 
 **page** | **int**| Optional page index in SMS list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter SMSs received after given date time | [optional] 
 **before** | **DateTime**| Optional filter SMSs received before given date time | [optional] 
 **search** | **string**| Optional search filter | [optional] 
 **favourite** | **boolean**| Optionally filter results for favourites only | [optional] [default to false]
 **include** | [**ARRAY[string]**](string)| Optional list of IDs to include in result | [optional] 

### Return type

[**PageSmsProjection**](PageSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_reply_for_sms_message**
> ReplyForSms get_reply_for_sms_message(sms_id => $sms_id)

Get reply for an SMS message

Get reply for an SMS message.

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
    my $result = $api_instance->get_reply_for_sms_message(sms_id => $sms_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->get_reply_for_sms_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_id** | [**string**]()|  | 

### Return type

[**ReplyForSms**](ReplyForSms)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_sms_count**
> CountDto get_sent_sms_count()

Get sent SMS count

Get number of sent SMS

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


eval { 
    my $result = $api_instance->get_sent_sms_count();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->get_sent_sms_count: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_sms_message**
> SentSmsDto get_sent_sms_message(sent_sms_id => $sent_sms_id)

Get sent SMS content including body. Expects sent SMS to exist by ID.

Returns an SMS summary object with content.

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

my $sent_sms_id = null; # string | 

eval { 
    my $result = $api_instance->get_sent_sms_message(sent_sms_id => $sent_sms_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->get_sent_sms_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sent_sms_id** | [**string**]()|  | 

### Return type

[**SentSmsDto**](SentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_sms_messages_paginated**
> PageSentSmsProjection get_sent_sms_messages_paginated(phone_number => $phone_number, page => $page, size => $size, sort => $sort, since => $since, before => $before, search => $search)

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

my $phone_number = null; # string | Optional phone number to filter sent SMS messages for
my $page = 0; # int | Optional page index in SMS list pagination
my $size = 20; # int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter SMSs received after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter SMSs received before given date time
my $search = "search_example"; # string | Optional search filter

eval { 
    my $result = $api_instance->get_sent_sms_messages_paginated(phone_number => $phone_number, page => $page, size => $size, sort => $sort, since => $since, before => $before, search => $search);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->get_sent_sms_messages_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number** | [**string**]()| Optional phone number to filter sent SMS messages for | [optional] 
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

# **get_sms_count**
> CountDto get_sms_count()

Get SMS count

Get number of SMS

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


eval { 
    my $result = $api_instance->get_sms_count();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->get_sms_count: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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

# **get_unread_sms_count**
> UnreadCount get_unread_sms_count()

Get unread SMS count

Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response

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


eval { 
    my $result = $api_instance->get_unread_sms_count();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->get_unread_sms_count: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UnreadCount**](UnreadCount)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **reply_to_sms_message**
> SentSmsDto reply_to_sms_message(sms_id => $sms_id, sms_reply_options => $sms_reply_options)

Send a reply to a received SMS message. Replies are sent from the receiving number.

Reply to an SMS message.

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
my $sms_reply_options = MailSlurp::Object::SmsReplyOptions->new(); # SmsReplyOptions | 

eval { 
    my $result = $api_instance->reply_to_sms_message(sms_id => $sms_id, sms_reply_options => $sms_reply_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->reply_to_sms_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_id** | [**string**]()|  | 
 **sms_reply_options** | [**SmsReplyOptions**](SmsReplyOptions)|  | 

### Return type

[**SentSmsDto**](SentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_sms**
> SentSmsDto send_sms(sms_send_options => $sms_send_options, from_phone_number => $from_phone_number, from_phone_id => $from_phone_id)



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

my $sms_send_options = MailSlurp::Object::SmsSendOptions->new(); # SmsSendOptions | 
my $from_phone_number = "from_phone_number_example"; # string | Phone number to send from in E.164 format
my $from_phone_id = null; # string | Phone number ID to send from in UUID form

eval { 
    my $result = $api_instance->send_sms(sms_send_options => $sms_send_options, from_phone_number => $from_phone_number, from_phone_id => $from_phone_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->send_sms: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_send_options** | [**SmsSendOptions**](SmsSendOptions)|  | 
 **from_phone_number** | **string**| Phone number to send from in E.164 format | [optional] 
 **from_phone_id** | [**string**]()| Phone number ID to send from in UUID form | [optional] 

### Return type

[**SentSmsDto**](SentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **set_sms_favourited**
> SmsDto set_sms_favourited(sms_id => $sms_id, favourited => $favourited)



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

my $sms_id = null; # string | ID of SMS to set favourite state
my $favourited = null; # boolean | 

eval { 
    my $result = $api_instance->set_sms_favourited(sms_id => $sms_id, favourited => $favourited);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsControllerApi->set_sms_favourited: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_id** | [**string**]()| ID of SMS to set favourite state | 
 **favourited** | **boolean**|  | 

### Return type

[**SmsDto**](SmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

