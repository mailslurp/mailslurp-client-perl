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
[**get_inbox_forwarder**](InboxForwarderControllerApi#get_inbox_forwarder) | **GET** /forwarders/{id} | Get an inbox forwarder
[**get_inbox_forwarders**](InboxForwarderControllerApi#get_inbox_forwarders) | **GET** /forwarders | List inbox forwarders
[**test_inbox_forwarder**](InboxForwarderControllerApi#test_inbox_forwarder) | **POST** /forwarders/{id}/test | Test an inbox forwarder
[**test_inbox_forwarders_for_inbox**](InboxForwarderControllerApi#test_inbox_forwarders_for_inbox) | **PUT** /forwarders | Test inbox forwarders for inbox
[**test_new_inbox_forwarder**](InboxForwarderControllerApi#test_new_inbox_forwarder) | **PATCH** /forwarders | Test new inbox forwarder


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

my $create_inbox_forwarder_options = MailSlurp::Object::CreateInboxForwarderOptions->new(); # CreateInboxForwarderOptions | createInboxForwarderOptions
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
 **create_inbox_forwarder_options** | [**CreateInboxForwarderOptions**](CreateInboxForwarderOptions)| createInboxForwarderOptions | 
 **inbox_id** | [**string**]()| Inbox id to attach forwarder to | [optional] 

### Return type

[**InboxForwarderDto**](InboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

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

# **get_inbox_forwarder**
> InboxForwarderDto get_inbox_forwarder(id => $id)

Get an inbox forwarder

Get inbox ruleset

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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_forwarders**
> PageInboxForwarderDto get_inbox_forwarders(inbox_id => $inbox_id, page => $page, search_filter => $search_filter, size => $size, sort => $sort)

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
my $search_filter = "search_filter_example"; # string | Optional search filter
my $size = 20; # int | Optional page size in inbox forwarder list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_inbox_forwarders(inbox_id => $inbox_id, page => $page, search_filter => $search_filter, size => $size, sort => $sort);
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
 **search_filter** | **string**| Optional search filter | [optional] 
 **size** | **int**| Optional page size in inbox forwarder list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageInboxForwarderDto**](PageInboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
my $inbox_forwarder_test_options = MailSlurp::Object::InboxForwarderTestOptions->new(); # InboxForwarderTestOptions | inboxForwarderTestOptions

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
 **inbox_forwarder_test_options** | [**InboxForwarderTestOptions**](InboxForwarderTestOptions)| inboxForwarderTestOptions | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

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
my $inbox_forwarder_test_options = MailSlurp::Object::InboxForwarderTestOptions->new(); # InboxForwarderTestOptions | inboxForwarderTestOptions

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
 **inbox_forwarder_test_options** | [**InboxForwarderTestOptions**](InboxForwarderTestOptions)| inboxForwarderTestOptions | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

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

my $test_new_inbox_forwarder_options = MailSlurp::Object::TestNewInboxForwarderOptions->new(); # TestNewInboxForwarderOptions | testNewInboxForwarderOptions

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
 **test_new_inbox_forwarder_options** | [**TestNewInboxForwarderOptions**](TestNewInboxForwarderOptions)| testNewInboxForwarderOptions | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

