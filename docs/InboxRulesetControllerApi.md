# MailSlurp::InboxRulesetControllerApi

## Load the API package
```perl
use MailSlurp::Object::InboxRulesetControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_inbox_ruleset**](InboxRulesetControllerApi#create_new_inbox_ruleset) | **POST** /rulesets | Create an inbox ruleset
[**delete_inbox_ruleset**](InboxRulesetControllerApi#delete_inbox_ruleset) | **DELETE** /rulesets/{id} | Delete an inbox ruleset
[**delete_inbox_rulesets**](InboxRulesetControllerApi#delete_inbox_rulesets) | **DELETE** /rulesets | Delete inbox rulesets
[**get_inbox_ruleset**](InboxRulesetControllerApi#get_inbox_ruleset) | **GET** /rulesets/{id} | Get an inbox ruleset
[**get_inbox_rulesets**](InboxRulesetControllerApi#get_inbox_rulesets) | **GET** /rulesets | List inbox rulesets
[**test_inbox_ruleset**](InboxRulesetControllerApi#test_inbox_ruleset) | **POST** /rulesets/{id}/test | Test an inbox ruleset
[**test_inbox_rulesets_for_inbox**](InboxRulesetControllerApi#test_inbox_rulesets_for_inbox) | **PUT** /rulesets | Test inbox rulesets for inbox
[**test_new_inbox_ruleset**](InboxRulesetControllerApi#test_new_inbox_ruleset) | **PATCH** /rulesets | Test new inbox ruleset


# **create_new_inbox_ruleset**
> InboxRulesetDto create_new_inbox_ruleset(create_inbox_ruleset_options => $create_inbox_ruleset_options, inbox_id => $inbox_id)

Create an inbox ruleset

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxRulesetControllerApi;
my $api_instance = MailSlurp::InboxRulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_inbox_ruleset_options = MailSlurp::Object::CreateInboxRulesetOptions->new(); # CreateInboxRulesetOptions | 
my $inbox_id = null; # string | Inbox id to attach ruleset to

eval { 
    my $result = $api_instance->create_new_inbox_ruleset(create_inbox_ruleset_options => $create_inbox_ruleset_options, inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxRulesetControllerApi->create_new_inbox_ruleset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_inbox_ruleset_options** | [**CreateInboxRulesetOptions**](CreateInboxRulesetOptions)|  | 
 **inbox_id** | [**string**]()| Inbox id to attach ruleset to | [optional] 

### Return type

[**InboxRulesetDto**](InboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_inbox_ruleset**
> delete_inbox_ruleset(id => $id)

Delete an inbox ruleset

Delete inbox ruleset

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxRulesetControllerApi;
my $api_instance = MailSlurp::InboxRulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of inbox ruleset

eval { 
    $api_instance->delete_inbox_ruleset(id => $id);
};
if ($@) {
    warn "Exception when calling InboxRulesetControllerApi->delete_inbox_ruleset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of inbox ruleset | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_inbox_rulesets**
> delete_inbox_rulesets(inbox_id => $inbox_id)

Delete inbox rulesets

Delete inbox rulesets. Accepts optional inboxId filter.

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxRulesetControllerApi;
my $api_instance = MailSlurp::InboxRulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Optional inbox id to attach ruleset to

eval { 
    $api_instance->delete_inbox_rulesets(inbox_id => $inbox_id);
};
if ($@) {
    warn "Exception when calling InboxRulesetControllerApi->delete_inbox_rulesets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Optional inbox id to attach ruleset to | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_ruleset**
> InboxRulesetDto get_inbox_ruleset(id => $id)

Get an inbox ruleset

Get inbox ruleset

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxRulesetControllerApi;
my $api_instance = MailSlurp::InboxRulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of inbox ruleset

eval { 
    my $result = $api_instance->get_inbox_ruleset(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxRulesetControllerApi->get_inbox_ruleset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of inbox ruleset | 

### Return type

[**InboxRulesetDto**](InboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_rulesets**
> PageInboxRulesetDto get_inbox_rulesets(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before)

List inbox rulesets

List all rulesets attached to an inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxRulesetControllerApi;
my $api_instance = MailSlurp::InboxRulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Optional inbox id to get rulesets from
my $page = 0; # int | Optional page index in inbox ruleset list pagination
my $size = 20; # int | Optional page size in inbox ruleset list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_inbox_rulesets(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxRulesetControllerApi->get_inbox_rulesets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Optional inbox id to get rulesets from | [optional] 
 **page** | **int**| Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageInboxRulesetDto**](PageInboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_inbox_ruleset**
> InboxRulesetTestResult test_inbox_ruleset(id => $id, inbox_ruleset_test_options => $inbox_ruleset_test_options)

Test an inbox ruleset

Test an inbox ruleset

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxRulesetControllerApi;
my $api_instance = MailSlurp::InboxRulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of inbox ruleset
my $inbox_ruleset_test_options = MailSlurp::Object::InboxRulesetTestOptions->new(); # InboxRulesetTestOptions | 

eval { 
    my $result = $api_instance->test_inbox_ruleset(id => $id, inbox_ruleset_test_options => $inbox_ruleset_test_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxRulesetControllerApi->test_inbox_ruleset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of inbox ruleset | 
 **inbox_ruleset_test_options** | [**InboxRulesetTestOptions**](InboxRulesetTestOptions)|  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_inbox_rulesets_for_inbox**
> InboxRulesetTestResult test_inbox_rulesets_for_inbox(inbox_id => $inbox_id, inbox_ruleset_test_options => $inbox_ruleset_test_options)

Test inbox rulesets for inbox

Test inbox rulesets for inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxRulesetControllerApi;
my $api_instance = MailSlurp::InboxRulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | ID of inbox
my $inbox_ruleset_test_options = MailSlurp::Object::InboxRulesetTestOptions->new(); # InboxRulesetTestOptions | 

eval { 
    my $result = $api_instance->test_inbox_rulesets_for_inbox(inbox_id => $inbox_id, inbox_ruleset_test_options => $inbox_ruleset_test_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxRulesetControllerApi->test_inbox_rulesets_for_inbox: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of inbox | 
 **inbox_ruleset_test_options** | [**InboxRulesetTestOptions**](InboxRulesetTestOptions)|  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_new_inbox_ruleset**
> InboxRulesetTestResult test_new_inbox_ruleset(test_new_inbox_ruleset_options => $test_new_inbox_ruleset_options)

Test new inbox ruleset

Test new inbox ruleset

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxRulesetControllerApi;
my $api_instance = MailSlurp::InboxRulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_new_inbox_ruleset_options = MailSlurp::Object::TestNewInboxRulesetOptions->new(); # TestNewInboxRulesetOptions | 

eval { 
    my $result = $api_instance->test_new_inbox_ruleset(test_new_inbox_ruleset_options => $test_new_inbox_ruleset_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxRulesetControllerApi->test_new_inbox_ruleset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_new_inbox_ruleset_options** | [**TestNewInboxRulesetOptions**](TestNewInboxRulesetOptions)|  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

