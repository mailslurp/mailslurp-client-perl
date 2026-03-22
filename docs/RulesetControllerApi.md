# MailSlurp::RulesetControllerApi

## Load the API package
```perl
use MailSlurp::Object::RulesetControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_ruleset**](RulesetControllerApi#create_new_ruleset) | **POST** /rulesets | Create a ruleset
[**delete_ruleset**](RulesetControllerApi#delete_ruleset) | **DELETE** /rulesets/{id} | Delete a ruleset
[**delete_rulesets**](RulesetControllerApi#delete_rulesets) | **DELETE** /rulesets | Delete rulesets
[**get_ruleset**](RulesetControllerApi#get_ruleset) | **GET** /rulesets/{id} | Get a ruleset
[**get_rulesets**](RulesetControllerApi#get_rulesets) | **GET** /rulesets | List rulesets block and allow lists
[**test_inbox_rulesets_for_inbox**](RulesetControllerApi#test_inbox_rulesets_for_inbox) | **PUT** /rulesets | Test inbox rulesets for inbox
[**test_new_ruleset**](RulesetControllerApi#test_new_ruleset) | **PATCH** /rulesets | Test new ruleset
[**test_ruleset**](RulesetControllerApi#test_ruleset) | **POST** /rulesets/{id}/test | Test a ruleset
[**test_ruleset_receiving**](RulesetControllerApi#test_ruleset_receiving) | **POST** /rulesets/test-receiving | Test receiving with rulesets
[**test_ruleset_sending**](RulesetControllerApi#test_ruleset_sending) | **POST** /rulesets/test-sending | Test sending with rulesets


# **create_new_ruleset**
> RulesetDto create_new_ruleset(create_ruleset_options => $create_ruleset_options, inbox_id => $inbox_id, phone_id => $phone_id)

Create a ruleset

Create a new inbox or phone number rule for forwarding, blocking, and allowing emails or SMS when sending and receiving

### Example 
```perl
use Data::Dumper;
use MailSlurp::RulesetControllerApi;
my $api_instance = MailSlurp::RulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_ruleset_options = MailSlurp::Object::CreateRulesetOptions->new(); # CreateRulesetOptions | 
my $inbox_id = null; # string | Inbox id to attach ruleset to
my $phone_id = null; # string | Phone id to attach ruleset to

eval { 
    my $result = $api_instance->create_new_ruleset(create_ruleset_options => $create_ruleset_options, inbox_id => $inbox_id, phone_id => $phone_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RulesetControllerApi->create_new_ruleset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_ruleset_options** | [**CreateRulesetOptions**](CreateRulesetOptions)|  | 
 **inbox_id** | [**string**]()| Inbox id to attach ruleset to | [optional] 
 **phone_id** | [**string**]()| Phone id to attach ruleset to | [optional] 

### Return type

[**RulesetDto**](RulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_ruleset**
> delete_ruleset(id => $id)

Delete a ruleset

Delete ruleset

### Example 
```perl
use Data::Dumper;
use MailSlurp::RulesetControllerApi;
my $api_instance = MailSlurp::RulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of ruleset

eval { 
    $api_instance->delete_ruleset(id => $id);
};
if ($@) {
    warn "Exception when calling RulesetControllerApi->delete_ruleset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of ruleset | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_rulesets**
> delete_rulesets(inbox_id => $inbox_id, phone_id => $phone_id)

Delete rulesets

Delete rulesets. Accepts optional inboxId or phoneId filters.

### Example 
```perl
use Data::Dumper;
use MailSlurp::RulesetControllerApi;
my $api_instance = MailSlurp::RulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Optional inbox id to attach ruleset to
my $phone_id = null; # string | 

eval { 
    $api_instance->delete_rulesets(inbox_id => $inbox_id, phone_id => $phone_id);
};
if ($@) {
    warn "Exception when calling RulesetControllerApi->delete_rulesets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Optional inbox id to attach ruleset to | [optional] 
 **phone_id** | [**string**]()|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_ruleset**
> RulesetDto get_ruleset(id => $id)

Get a ruleset

Get ruleset

### Example 
```perl
use Data::Dumper;
use MailSlurp::RulesetControllerApi;
my $api_instance = MailSlurp::RulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of ruleset

eval { 
    my $result = $api_instance->get_ruleset(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RulesetControllerApi->get_ruleset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of ruleset | 

### Return type

[**RulesetDto**](RulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_rulesets**
> PageRulesetDto get_rulesets(inbox_id => $inbox_id, phone_id => $phone_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before)

List rulesets block and allow lists

List all rulesets attached to an inbox or phone or account

### Example 
```perl
use Data::Dumper;
use MailSlurp::RulesetControllerApi;
my $api_instance = MailSlurp::RulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Optional inbox id to get rulesets from
my $phone_id = null; # string | Optional phone id to get rulesets from
my $page = 0; # int | Optional page index in inbox ruleset list pagination
my $size = 20; # int | Optional page size in inbox ruleset list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_rulesets(inbox_id => $inbox_id, phone_id => $phone_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RulesetControllerApi->get_rulesets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Optional inbox id to get rulesets from | [optional] 
 **phone_id** | [**string**]()| Optional phone id to get rulesets from | [optional] 
 **page** | **int**| Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageRulesetDto**](PageRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_inbox_rulesets_for_inbox**
> InboxRulesetTestResult test_inbox_rulesets_for_inbox(inbox_id => $inbox_id, ruleset_test_options => $ruleset_test_options)

Test inbox rulesets for inbox

Test inbox rulesets for inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::RulesetControllerApi;
my $api_instance = MailSlurp::RulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | ID of inbox
my $ruleset_test_options = MailSlurp::Object::RulesetTestOptions->new(); # RulesetTestOptions | 

eval { 
    my $result = $api_instance->test_inbox_rulesets_for_inbox(inbox_id => $inbox_id, ruleset_test_options => $ruleset_test_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RulesetControllerApi->test_inbox_rulesets_for_inbox: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of inbox | 
 **ruleset_test_options** | [**RulesetTestOptions**](RulesetTestOptions)|  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_new_ruleset**
> InboxRulesetTestResult test_new_ruleset(test_new_inbox_ruleset_options => $test_new_inbox_ruleset_options)

Test new ruleset

Test new ruleset

### Example 
```perl
use Data::Dumper;
use MailSlurp::RulesetControllerApi;
my $api_instance = MailSlurp::RulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_new_inbox_ruleset_options = MailSlurp::Object::TestNewInboxRulesetOptions->new(); # TestNewInboxRulesetOptions | 

eval { 
    my $result = $api_instance->test_new_ruleset(test_new_inbox_ruleset_options => $test_new_inbox_ruleset_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RulesetControllerApi->test_new_ruleset: $@\n";
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

# **test_ruleset**
> InboxRulesetTestResult test_ruleset(id => $id, ruleset_test_options => $ruleset_test_options)

Test a ruleset

Test an inbox or phone ruleset

### Example 
```perl
use Data::Dumper;
use MailSlurp::RulesetControllerApi;
my $api_instance = MailSlurp::RulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of ruleset
my $ruleset_test_options = MailSlurp::Object::RulesetTestOptions->new(); # RulesetTestOptions | 

eval { 
    my $result = $api_instance->test_ruleset(id => $id, ruleset_test_options => $ruleset_test_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RulesetControllerApi->test_ruleset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of ruleset | 
 **ruleset_test_options** | [**RulesetTestOptions**](RulesetTestOptions)|  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_ruleset_receiving**
> TestRulesetReceivingResult test_ruleset_receiving(test_ruleset_receiving_options => $test_ruleset_receiving_options)

Test receiving with rulesets

Test whether inbound emails from an email address would be blocked or allowed by inbox rulesets or test if phone number can receive SMS

### Example 
```perl
use Data::Dumper;
use MailSlurp::RulesetControllerApi;
my $api_instance = MailSlurp::RulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_ruleset_receiving_options = MailSlurp::Object::TestRulesetReceivingOptions->new(); # TestRulesetReceivingOptions | 

eval { 
    my $result = $api_instance->test_ruleset_receiving(test_ruleset_receiving_options => $test_ruleset_receiving_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RulesetControllerApi->test_ruleset_receiving: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_ruleset_receiving_options** | [**TestRulesetReceivingOptions**](TestRulesetReceivingOptions)|  | 

### Return type

[**TestRulesetReceivingResult**](TestRulesetReceivingResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_ruleset_sending**
> TestRulesetSendingResult test_ruleset_sending(test_inbox_ruleset_sending_options => $test_inbox_ruleset_sending_options)

Test sending with rulesets

Test whether outbound emails to an email address would be blocked or allowed by inbox rulesets or whether a phone number can send SMS

### Example 
```perl
use Data::Dumper;
use MailSlurp::RulesetControllerApi;
my $api_instance = MailSlurp::RulesetControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_inbox_ruleset_sending_options = MailSlurp::Object::TestInboxRulesetSendingOptions->new(); # TestInboxRulesetSendingOptions | 

eval { 
    my $result = $api_instance->test_ruleset_sending(test_inbox_ruleset_sending_options => $test_inbox_ruleset_sending_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RulesetControllerApi->test_ruleset_sending: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_inbox_ruleset_sending_options** | [**TestInboxRulesetSendingOptions**](TestInboxRulesetSendingOptions)|  | 

### Return type

[**TestRulesetSendingResult**](TestRulesetSendingResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

