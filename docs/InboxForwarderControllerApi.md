# MailSlurp::InboxForwarderControllerApi

## Load the API package
```perl
use MailSlurp::Object::InboxForwarderControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_inbox_forwarder**](InboxForwarderControllerApi#create_new_inbox_forwarder) | **POST** /forwarders | Create an inbox forwarder
[**delete_inbox_forwarder**](InboxForwarderControllerApi#delete_inbox_forwarder) | **DELETE** /forwarders/{id} | Delete an inbox forwarder
[**delete_inbox_forwarders**](InboxForwarderControllerApi#delete_inbox_forwarders) | **DELETE** /forwarders | Delete inbox forwarders
[**get_all_inbox_forwarder_events**](InboxForwarderControllerApi#get_all_inbox_forwarder_events) | **GET** /forwarders/events | Get all inbox forwarder events
[**get_forwarder_event**](InboxForwarderControllerApi#get_forwarder_event) | **GET** /forwarders/events/{eventId} | Get a forwarder event
[**get_inbox_forwarder**](InboxForwarderControllerApi#get_inbox_forwarder) | **GET** /forwarders/{id} | Get an inbox forwarder
[**get_inbox_forwarder_event**](InboxForwarderControllerApi#get_inbox_forwarder_event) | **GET** /forwarders/{id}/events/{eventId} | Get an inbox forwarder event
[**get_inbox_forwarder_events**](InboxForwarderControllerApi#get_inbox_forwarder_events) | **GET** /forwarders/{id}/events | Get an inbox forwarder event list
[**get_inbox_forwarders**](InboxForwarderControllerApi#get_inbox_forwarders) | **GET** /forwarders | List inbox forwarders
[**test_inbox_forwarder**](InboxForwarderControllerApi#test_inbox_forwarder) | **POST** /forwarders/{id}/test | Test an inbox forwarder
[**test_inbox_forwarders_for_inbox**](InboxForwarderControllerApi#test_inbox_forwarders_for_inbox) | **PUT** /forwarders | Test inbox forwarders for inbox
[**test_new_inbox_forwarder**](InboxForwarderControllerApi#test_new_inbox_forwarder) | **PATCH** /forwarders | Test new inbox forwarder
[**update_inbox_forwarder**](InboxForwarderControllerApi#update_inbox_forwarder) | **PUT** /forwarders/{id} | Update an inbox forwarder


# **create_new_inbox_forwarder**
> InboxForwarderDto create_new_inbox_forwarder(create_inbox_forwarder_options => $create_inbox_forwarder_options, inbox_id => $inbox_id)

Create an inbox forwarder

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxForwarderControllerApi;
my $api_instance = MailSlurp::InboxForwarderControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_inbox_forwarder_options = MailSlurp::Object::CreateInboxForwarderOptions->new(); # CreateInboxForwarderOptions | 
my $inbox_id = null; # string | Inbox id to attach forwarder to

eval { 
    my $result = $api_instance->create_new_inbox_forwarder(create_inbox_forwarder_options => $create_inbox_forwarder_options, inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxForwarderControllerApi->create_new_inbox_forwarder: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_inbox_forwarder_options** | [**CreateInboxForwarderOptions**](CreateInboxForwarderOptions)|  | 
 **inbox_id** | [**string**]()| Inbox id to attach forwarder to | [optional] 

### Return type

[**InboxForwarderDto**](InboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_inbox_forwarder**
> delete_inbox_forwarder(id => $id)

Delete an inbox forwarder

Delete inbox forwarder

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxForwarderControllerApi;
my $api_instance = MailSlurp::InboxForwarderControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of inbox forwarder

eval { 
    $api_instance->delete_inbox_forwarder(id => $id);
};
if ($@) {
    warn "Exception when calling InboxForwarderControllerApi->delete_inbox_forwarder: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of inbox forwarder | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_inbox_forwarders**
> delete_inbox_forwarders(inbox_id => $inbox_id)

Delete inbox forwarders

Delete inbox forwarders. Accepts optional inboxId filter.

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxForwarderControllerApi;
my $api_instance = MailSlurp::InboxForwarderControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Optional inbox id to attach forwarder to

eval { 
    $api_instance->delete_inbox_forwarders(inbox_id => $inbox_id);
};
if ($@) {
    warn "Exception when calling InboxForwarderControllerApi->delete_inbox_forwarders: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Optional inbox id to attach forwarder to | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_inbox_forwarder_events**
> PageInboxForwarderEvents get_all_inbox_forwarder_events(page => $page, size => $size, inbox_id => $inbox_id, email_id => $email_id, sent_id => $sent_id, sort => $sort)

Get all inbox forwarder events

Get all inbox forwarder events

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxForwarderControllerApi;
my $api_instance = MailSlurp::InboxForwarderControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index in inbox forwarder event list pagination
my $size = 20; # int | Optional page size in inbox forwarder event list pagination
my $inbox_id = null; # string | Optional inbox ID to filter for
my $email_id = null; # string | Optional email ID to filter for
my $sent_id = null; # string | Optional sent ID to filter for
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_all_inbox_forwarder_events(page => $page, size => $size, inbox_id => $inbox_id, email_id => $email_id, sent_id => $sent_id, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxForwarderControllerApi->get_all_inbox_forwarder_events: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox forwarder event list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox forwarder event list pagination | [optional] [default to 20]
 **inbox_id** | [**string**]()| Optional inbox ID to filter for | [optional] 
 **email_id** | [**string**]()| Optional email ID to filter for | [optional] 
 **sent_id** | [**string**]()| Optional sent ID to filter for | [optional] 
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageInboxForwarderEvents**](PageInboxForwarderEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_forwarder_event**
> InboxForwarderEventDto get_forwarder_event(event_id => $event_id)

Get a forwarder event

Get forwarder event

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxForwarderControllerApi;
my $api_instance = MailSlurp::InboxForwarderControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $event_id = null; # string | ID of inbox forwarder event

eval { 
    my $result = $api_instance->get_forwarder_event(event_id => $event_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxForwarderControllerApi->get_forwarder_event: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_id** | [**string**]()| ID of inbox forwarder event | 

### Return type

[**InboxForwarderEventDto**](InboxForwarderEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_forwarder**
> InboxForwarderDto get_inbox_forwarder(id => $id)

Get an inbox forwarder

Get inbox forwarder

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxForwarderControllerApi;
my $api_instance = MailSlurp::InboxForwarderControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of inbox forwarder

eval { 
    my $result = $api_instance->get_inbox_forwarder(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxForwarderControllerApi->get_inbox_forwarder: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of inbox forwarder | 

### Return type

[**InboxForwarderDto**](InboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_forwarder_event**
> InboxForwarderEventDto get_inbox_forwarder_event(id => $id, event_id => $event_id)

Get an inbox forwarder event

Get inbox forwarder event

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxForwarderControllerApi;
my $api_instance = MailSlurp::InboxForwarderControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of inbox forwarder
my $event_id = null; # string | ID of inbox forwarder event

eval { 
    my $result = $api_instance->get_inbox_forwarder_event(id => $id, event_id => $event_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxForwarderControllerApi->get_inbox_forwarder_event: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of inbox forwarder | 
 **event_id** | [**string**]()| ID of inbox forwarder event | 

### Return type

[**InboxForwarderEventDto**](InboxForwarderEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_forwarder_events**
> PageInboxForwarderEvents get_inbox_forwarder_events(id => $id, page => $page, size => $size, sort => $sort)

Get an inbox forwarder event list

Get inbox forwarder events

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxForwarderControllerApi;
my $api_instance = MailSlurp::InboxForwarderControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of inbox forwarder
my $page = 0; # int | Optional page index in inbox forwarder event list pagination
my $size = 20; # int | Optional page size in inbox forwarder event list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_inbox_forwarder_events(id => $id, page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxForwarderControllerApi->get_inbox_forwarder_events: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of inbox forwarder | 
 **page** | **int**| Optional page index in inbox forwarder event list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox forwarder event list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageInboxForwarderEvents**](PageInboxForwarderEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_forwarders**
> PageInboxForwarderDto get_inbox_forwarders(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before)

List inbox forwarders

List all forwarders attached to an inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxForwarderControllerApi;
my $api_instance = MailSlurp::InboxForwarderControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Optional inbox id to get forwarders from
my $page = 0; # int | Optional page index in inbox forwarder list pagination
my $size = 20; # int | Optional page size in inbox forwarder list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_inbox_forwarders(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxForwarderControllerApi->get_inbox_forwarders: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Optional inbox id to get forwarders from | [optional] 
 **page** | **int**| Optional page index in inbox forwarder list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox forwarder list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageInboxForwarderDto**](PageInboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_inbox_forwarder**
> InboxForwarderTestResult test_inbox_forwarder(id => $id, inbox_forwarder_test_options => $inbox_forwarder_test_options)

Test an inbox forwarder

Test an inbox forwarder

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxForwarderControllerApi;
my $api_instance = MailSlurp::InboxForwarderControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of inbox forwarder
my $inbox_forwarder_test_options = MailSlurp::Object::InboxForwarderTestOptions->new(); # InboxForwarderTestOptions | 

eval { 
    my $result = $api_instance->test_inbox_forwarder(id => $id, inbox_forwarder_test_options => $inbox_forwarder_test_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxForwarderControllerApi->test_inbox_forwarder: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of inbox forwarder | 
 **inbox_forwarder_test_options** | [**InboxForwarderTestOptions**](InboxForwarderTestOptions)|  | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_inbox_forwarders_for_inbox**
> InboxForwarderTestResult test_inbox_forwarders_for_inbox(inbox_id => $inbox_id, inbox_forwarder_test_options => $inbox_forwarder_test_options)

Test inbox forwarders for inbox

Test inbox forwarders for inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxForwarderControllerApi;
my $api_instance = MailSlurp::InboxForwarderControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | ID of inbox
my $inbox_forwarder_test_options = MailSlurp::Object::InboxForwarderTestOptions->new(); # InboxForwarderTestOptions | 

eval { 
    my $result = $api_instance->test_inbox_forwarders_for_inbox(inbox_id => $inbox_id, inbox_forwarder_test_options => $inbox_forwarder_test_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxForwarderControllerApi->test_inbox_forwarders_for_inbox: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of inbox | 
 **inbox_forwarder_test_options** | [**InboxForwarderTestOptions**](InboxForwarderTestOptions)|  | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_new_inbox_forwarder**
> InboxForwarderTestResult test_new_inbox_forwarder(test_new_inbox_forwarder_options => $test_new_inbox_forwarder_options)

Test new inbox forwarder

Test new inbox forwarder

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxForwarderControllerApi;
my $api_instance = MailSlurp::InboxForwarderControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_new_inbox_forwarder_options = MailSlurp::Object::TestNewInboxForwarderOptions->new(); # TestNewInboxForwarderOptions | 

eval { 
    my $result = $api_instance->test_new_inbox_forwarder(test_new_inbox_forwarder_options => $test_new_inbox_forwarder_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxForwarderControllerApi->test_new_inbox_forwarder: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_new_inbox_forwarder_options** | [**TestNewInboxForwarderOptions**](TestNewInboxForwarderOptions)|  | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_inbox_forwarder**
> InboxForwarderDto update_inbox_forwarder(id => $id, create_inbox_forwarder_options => $create_inbox_forwarder_options)

Update an inbox forwarder

Update inbox forwarder

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxForwarderControllerApi;
my $api_instance = MailSlurp::InboxForwarderControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of inbox forwarder
my $create_inbox_forwarder_options = MailSlurp::Object::CreateInboxForwarderOptions->new(); # CreateInboxForwarderOptions | 

eval { 
    my $result = $api_instance->update_inbox_forwarder(id => $id, create_inbox_forwarder_options => $create_inbox_forwarder_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxForwarderControllerApi->update_inbox_forwarder: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of inbox forwarder | 
 **create_inbox_forwarder_options** | [**CreateInboxForwarderOptions**](CreateInboxForwarderOptions)|  | 

### Return type

[**InboxForwarderDto**](InboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

