# MailSlurp::MissedSmsControllerApi

## Load the API package
```perl
use MailSlurp::Object::MissedSmsControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_missed_sms_messages**](MissedSmsControllerApi#get_all_missed_sms_messages) | **GET** /missed-sms | Get all missed SMS messages in paginated format
[**get_missed_sms_count**](MissedSmsControllerApi#get_missed_sms_count) | **GET** /missed-sms/count | Get missed SMS count
[**get_missed_sms_message**](MissedSmsControllerApi#get_missed_sms_message) | **GET** /missed-sms/{missedSmsId} | Get missed SMS content


# **get_all_missed_sms_messages**
> PageMissedSmsProjection get_all_missed_sms_messages(phone_number => $phone_number, page => $page, size => $size, sort => $sort, since => $since, before => $before, search => $search)

Get all missed SMS messages in paginated format

### Example 
```perl
use Data::Dumper;
use MailSlurp::MissedSmsControllerApi;
my $api_instance = MailSlurp::MissedSmsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $phone_number = null; # string | Optional receiving phone number to filter missed SMS for
my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter missed SMS after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter missed SMS before given date time
my $search = "search_example"; # string | Optional search filter

eval { 
    my $result = $api_instance->get_all_missed_sms_messages(phone_number => $phone_number, page => $page, size => $size, sort => $sort, since => $since, before => $before, search => $search);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MissedSmsControllerApi->get_all_missed_sms_messages: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number** | [**string**]()| Optional receiving phone number to filter missed SMS for | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter missed SMS after given date time | [optional] 
 **before** | **DateTime**| Optional filter missed SMS before given date time | [optional] 
 **search** | **string**| Optional search filter | [optional] 

### Return type

[**PageMissedSmsProjection**](PageMissedSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_missed_sms_count**
> CountDto get_missed_sms_count()

Get missed SMS count

### Example 
```perl
use Data::Dumper;
use MailSlurp::MissedSmsControllerApi;
my $api_instance = MailSlurp::MissedSmsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_missed_sms_count();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MissedSmsControllerApi->get_missed_sms_count: $@\n";
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

# **get_missed_sms_message**
> MissedSmsDto get_missed_sms_message(missed_sms_id => $missed_sms_id)

Get missed SMS content

Returns a missed SMS with full content.

### Example 
```perl
use Data::Dumper;
use MailSlurp::MissedSmsControllerApi;
my $api_instance = MailSlurp::MissedSmsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $missed_sms_id = null; # string | 

eval { 
    my $result = $api_instance->get_missed_sms_message(missed_sms_id => $missed_sms_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MissedSmsControllerApi->get_missed_sms_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **missed_sms_id** | [**string**]()|  | 

### Return type

[**MissedSmsDto**](MissedSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

