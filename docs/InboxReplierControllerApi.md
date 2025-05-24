# MailSlurp::InboxReplierControllerApi

## Load the API package
```perl
use MailSlurp::Object::InboxReplierControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_inbox_replier**](InboxReplierControllerApi#create_new_inbox_replier) | **POST** /repliers | Create an inbox replier
[**delete_inbox_replier**](InboxReplierControllerApi#delete_inbox_replier) | **DELETE** /repliers/{id} | Delete an inbox replier
[**delete_inbox_repliers**](InboxReplierControllerApi#delete_inbox_repliers) | **DELETE** /repliers | Delete inbox repliers
[**get_all_inbox_replier_events**](InboxReplierControllerApi#get_all_inbox_replier_events) | **GET** /repliers/events | Get inbox replier event list
[**get_inbox_replier**](InboxReplierControllerApi#get_inbox_replier) | **GET** /repliers/{id} | Get an inbox replier
[**get_inbox_replier_events**](InboxReplierControllerApi#get_inbox_replier_events) | **GET** /repliers/{id}/events | Get an inbox replier event list
[**get_inbox_repliers**](InboxReplierControllerApi#get_inbox_repliers) | **GET** /repliers | List inbox repliers
[**update_inbox_replier**](InboxReplierControllerApi#update_inbox_replier) | **PUT** /repliers/{id} | Update an inbox replier


# **create_new_inbox_replier**
> InboxReplierDto create_new_inbox_replier(create_inbox_replier_options => $create_inbox_replier_options)

Create an inbox replier

Create a new inbox rule for reply toing, blocking, and allowing emails when sending and receiving

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxReplierControllerApi;
my $api_instance = MailSlurp::InboxReplierControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_inbox_replier_options = MailSlurp::Object::CreateInboxReplierOptions->new(); # CreateInboxReplierOptions | 

eval { 
    my $result = $api_instance->create_new_inbox_replier(create_inbox_replier_options => $create_inbox_replier_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxReplierControllerApi->create_new_inbox_replier: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_inbox_replier_options** | [**CreateInboxReplierOptions**](CreateInboxReplierOptions)|  | 

### Return type

[**InboxReplierDto**](InboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_inbox_replier**
> delete_inbox_replier(id => $id)

Delete an inbox replier

Delete inbox replier

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxReplierControllerApi;
my $api_instance = MailSlurp::InboxReplierControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of inbox replier

eval { 
    $api_instance->delete_inbox_replier(id => $id);
};
if ($@) {
    warn "Exception when calling InboxReplierControllerApi->delete_inbox_replier: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of inbox replier | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_inbox_repliers**
> delete_inbox_repliers(inbox_id => $inbox_id)

Delete inbox repliers

Delete inbox repliers. Accepts optional inboxId filter.

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxReplierControllerApi;
my $api_instance = MailSlurp::InboxReplierControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Optional inbox id to attach replier to

eval { 
    $api_instance->delete_inbox_repliers(inbox_id => $inbox_id);
};
if ($@) {
    warn "Exception when calling InboxReplierControllerApi->delete_inbox_repliers: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Optional inbox id to attach replier to | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_inbox_replier_events**
> PageInboxReplierEvents get_all_inbox_replier_events(inbox_replier_id => $inbox_replier_id, inbox_id => $inbox_id, email_id => $email_id, sent_id => $sent_id, page => $page, size => $size, sort => $sort)

Get inbox replier event list

Get all inbox ruleset events

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxReplierControllerApi;
my $api_instance = MailSlurp::InboxReplierControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_replier_id = null; # string | ID of inbox replier
my $inbox_id = null; # string | ID of inbox
my $email_id = null; # string | ID of email
my $sent_id = null; # string | ID of sent
my $page = 0; # int | Optional page index in inbox replier event list pagination
my $size = 20; # int | Optional page size in inbox replier event list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_all_inbox_replier_events(inbox_replier_id => $inbox_replier_id, inbox_id => $inbox_id, email_id => $email_id, sent_id => $sent_id, page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxReplierControllerApi->get_all_inbox_replier_events: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_replier_id** | [**string**]()| ID of inbox replier | [optional] 
 **inbox_id** | [**string**]()| ID of inbox | [optional] 
 **email_id** | [**string**]()| ID of email | [optional] 
 **sent_id** | [**string**]()| ID of sent | [optional] 
 **page** | **int**| Optional page index in inbox replier event list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox replier event list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageInboxReplierEvents**](PageInboxReplierEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_replier**
> InboxReplierDto get_inbox_replier(id => $id)

Get an inbox replier

Get inbox ruleset

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxReplierControllerApi;
my $api_instance = MailSlurp::InboxReplierControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of inbox replier

eval { 
    my $result = $api_instance->get_inbox_replier(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxReplierControllerApi->get_inbox_replier: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of inbox replier | 

### Return type

[**InboxReplierDto**](InboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_replier_events**
> PageInboxReplierEvents get_inbox_replier_events(id => $id, page => $page, size => $size, sort => $sort)

Get an inbox replier event list

Get inbox ruleset events

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxReplierControllerApi;
my $api_instance = MailSlurp::InboxReplierControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of inbox replier
my $page = 0; # int | Optional page index in inbox replier event list pagination
my $size = 20; # int | Optional page size in inbox replier event list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_inbox_replier_events(id => $id, page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxReplierControllerApi->get_inbox_replier_events: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of inbox replier | 
 **page** | **int**| Optional page index in inbox replier event list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox replier event list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageInboxReplierEvents**](PageInboxReplierEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_repliers**
> PageInboxReplierDto get_inbox_repliers(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, since => $since, before => $before)

List inbox repliers

List all repliers attached to an inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxReplierControllerApi;
my $api_instance = MailSlurp::InboxReplierControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Optional inbox id to get repliers from
my $page = 0; # int | Optional page index in inbox replier list pagination
my $size = 20; # int | Optional page size in inbox replier list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_inbox_repliers(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxReplierControllerApi->get_inbox_repliers: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Optional inbox id to get repliers from | [optional] 
 **page** | **int**| Optional page index in inbox replier list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox replier list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageInboxReplierDto**](PageInboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_inbox_replier**
> InboxReplierDto update_inbox_replier(id => $id, update_inbox_replier_options => $update_inbox_replier_options)

Update an inbox replier

Update inbox ruleset

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxReplierControllerApi;
my $api_instance = MailSlurp::InboxReplierControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of inbox replier
my $update_inbox_replier_options = MailSlurp::Object::UpdateInboxReplierOptions->new(); # UpdateInboxReplierOptions | 

eval { 
    my $result = $api_instance->update_inbox_replier(id => $id, update_inbox_replier_options => $update_inbox_replier_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxReplierControllerApi->update_inbox_replier: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of inbox replier | 
 **update_inbox_replier_options** | [**UpdateInboxReplierOptions**](UpdateInboxReplierOptions)|  | 

### Return type

[**InboxReplierDto**](InboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

