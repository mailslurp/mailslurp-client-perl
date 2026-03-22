# MailSlurp::DevicePreviewsControllerApi

## Load the API package
```perl
use MailSlurp::Object::DevicePreviewsControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_device_preview_run**](DevicePreviewsControllerApi#cancel_device_preview_run) | **POST** /emails/device-previews/{runId}/cancel | Cancel a running device preview run
[**create_device_preview_feedback**](DevicePreviewsControllerApi#create_device_preview_feedback) | **POST** /emails/device-previews/feedback | Create device preview feedback
[**create_device_preview_run**](DevicePreviewsControllerApi#create_device_preview_run) | **POST** /emails/{emailId}/device-previews | Create a new device preview run for an email
[**delete_device_preview_run**](DevicePreviewsControllerApi#delete_device_preview_run) | **DELETE** /emails/device-previews/{runId} | Delete local device preview run data
[**ensure_device_preview_run**](DevicePreviewsControllerApi#ensure_device_preview_run) | **PUT** /emails/{emailId}/device-previews/latest | Return active run for email or create one when none exists
[**get_device_preview_feedback**](DevicePreviewsControllerApi#get_device_preview_feedback) | **GET** /emails/device-previews/feedback/{feedbackId} | Get a single device preview feedback item
[**get_device_preview_feedback_items**](DevicePreviewsControllerApi#get_device_preview_feedback_items) | **GET** /emails/device-previews/feedback | List device preview feedback
[**get_device_preview_run**](DevicePreviewsControllerApi#get_device_preview_run) | **GET** /emails/device-previews/{runId} | Get device preview run status
[**get_device_preview_run_provider_progress**](DevicePreviewsControllerApi#get_device_preview_run_provider_progress) | **GET** /emails/device-previews/{runId}/providers/{provider} | Get provider-level progress for a device preview run
[**get_device_preview_run_results**](DevicePreviewsControllerApi#get_device_preview_run_results) | **GET** /emails/device-previews/{runId}/results | Get device preview run results
[**get_device_preview_run_screenshot**](DevicePreviewsControllerApi#get_device_preview_run_screenshot) | **GET** /emails/device-previews/{runId}/screenshots/{screenshotId}/image | Get a seeded device preview screenshot image
[**get_device_preview_runs**](DevicePreviewsControllerApi#get_device_preview_runs) | **GET** /emails/{emailId}/device-previews | List previous device preview runs for an email
[**get_device_preview_runs_for_account**](DevicePreviewsControllerApi#get_device_preview_runs_for_account) | **GET** /emails/device-previews | List previous device preview runs for account
[**get_device_preview_runs_offset_paginated**](DevicePreviewsControllerApi#get_device_preview_runs_offset_paginated) | **GET** /emails/{emailId}/device-previews/offset-paginated | List previous device preview runs for an email in paginated form
[**update_device_preview_feedback**](DevicePreviewsControllerApi#update_device_preview_feedback) | **PUT** /emails/device-previews/feedback/{feedbackId} | Update device preview feedback


# **cancel_device_preview_run**
> CancelDevicePreviewRunResult cancel_device_preview_run(run_id => $run_id, cancel_device_preview_run_options => $cancel_device_preview_run_options)

Cancel a running device preview run

### Example 
```perl
use Data::Dumper;
use MailSlurp::DevicePreviewsControllerApi;
my $api_instance = MailSlurp::DevicePreviewsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $run_id = null; # string | 
my $cancel_device_preview_run_options = MailSlurp::Object::CancelDevicePreviewRunOptions->new(); # CancelDevicePreviewRunOptions | 

eval { 
    my $result = $api_instance->cancel_device_preview_run(run_id => $run_id, cancel_device_preview_run_options => $cancel_device_preview_run_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicePreviewsControllerApi->cancel_device_preview_run: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_id** | [**string**]()|  | 
 **cancel_device_preview_run_options** | [**CancelDevicePreviewRunOptions**](CancelDevicePreviewRunOptions)|  | [optional] 

### Return type

[**CancelDevicePreviewRunResult**](CancelDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_device_preview_feedback**
> DevicePreviewFeedbackDto create_device_preview_feedback(create_device_preview_feedback_options => $create_device_preview_feedback_options)

Create device preview feedback

### Example 
```perl
use Data::Dumper;
use MailSlurp::DevicePreviewsControllerApi;
my $api_instance = MailSlurp::DevicePreviewsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_device_preview_feedback_options = MailSlurp::Object::CreateDevicePreviewFeedbackOptions->new(); # CreateDevicePreviewFeedbackOptions | 

eval { 
    my $result = $api_instance->create_device_preview_feedback(create_device_preview_feedback_options => $create_device_preview_feedback_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicePreviewsControllerApi->create_device_preview_feedback: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_device_preview_feedback_options** | [**CreateDevicePreviewFeedbackOptions**](CreateDevicePreviewFeedbackOptions)|  | 

### Return type

[**DevicePreviewFeedbackDto**](DevicePreviewFeedbackDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_device_preview_run**
> CreateDevicePreviewRunResult create_device_preview_run(email_id => $email_id, create_device_preview_options => $create_device_preview_options)

Create a new device preview run for an email

### Example 
```perl
use Data::Dumper;
use MailSlurp::DevicePreviewsControllerApi;
my $api_instance = MailSlurp::DevicePreviewsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 
my $create_device_preview_options = MailSlurp::Object::CreateDevicePreviewOptions->new(); # CreateDevicePreviewOptions | 

eval { 
    my $result = $api_instance->create_device_preview_run(email_id => $email_id, create_device_preview_options => $create_device_preview_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicePreviewsControllerApi->create_device_preview_run: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | 
 **create_device_preview_options** | [**CreateDevicePreviewOptions**](CreateDevicePreviewOptions)|  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_device_preview_run**
> DeleteDevicePreviewRunResult delete_device_preview_run(run_id => $run_id)

Delete local device preview run data

### Example 
```perl
use Data::Dumper;
use MailSlurp::DevicePreviewsControllerApi;
my $api_instance = MailSlurp::DevicePreviewsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $run_id = null; # string | 

eval { 
    my $result = $api_instance->delete_device_preview_run(run_id => $run_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicePreviewsControllerApi->delete_device_preview_run: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_id** | [**string**]()|  | 

### Return type

[**DeleteDevicePreviewRunResult**](DeleteDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **ensure_device_preview_run**
> CreateDevicePreviewRunResult ensure_device_preview_run(email_id => $email_id, create_device_preview_options => $create_device_preview_options)

Return active run for email or create one when none exists

### Example 
```perl
use Data::Dumper;
use MailSlurp::DevicePreviewsControllerApi;
my $api_instance = MailSlurp::DevicePreviewsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 
my $create_device_preview_options = MailSlurp::Object::CreateDevicePreviewOptions->new(); # CreateDevicePreviewOptions | 

eval { 
    my $result = $api_instance->ensure_device_preview_run(email_id => $email_id, create_device_preview_options => $create_device_preview_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicePreviewsControllerApi->ensure_device_preview_run: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | 
 **create_device_preview_options** | [**CreateDevicePreviewOptions**](CreateDevicePreviewOptions)|  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_device_preview_feedback**
> DevicePreviewFeedbackDto get_device_preview_feedback(feedback_id => $feedback_id)

Get a single device preview feedback item

### Example 
```perl
use Data::Dumper;
use MailSlurp::DevicePreviewsControllerApi;
my $api_instance = MailSlurp::DevicePreviewsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $feedback_id = null; # string | 

eval { 
    my $result = $api_instance->get_device_preview_feedback(feedback_id => $feedback_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicePreviewsControllerApi->get_device_preview_feedback: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedback_id** | [**string**]()|  | 

### Return type

[**DevicePreviewFeedbackDto**](DevicePreviewFeedbackDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_device_preview_feedback_items**
> DevicePreviewFeedbackListDto get_device_preview_feedback_items(page => $page, size => $size, source => $source, run_id => $run_id, status => $status, provider => $provider, category => $category, search => $search)

List device preview feedback

### Example 
```perl
use Data::Dumper;
use MailSlurp::DevicePreviewsControllerApi;
my $api_instance = MailSlurp::DevicePreviewsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 56; # int | 
my $size = 56; # int | 
my $source = "source_example"; # string | 
my $run_id = null; # string | 
my $status = "status_example"; # string | 
my $provider = "provider_example"; # string | 
my $category = "category_example"; # string | 
my $search = "search_example"; # string | 

eval { 
    my $result = $api_instance->get_device_preview_feedback_items(page => $page, size => $size, source => $source, run_id => $run_id, status => $status, provider => $provider, category => $category, search => $search);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicePreviewsControllerApi->get_device_preview_feedback_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] 
 **size** | **int**|  | [optional] 
 **source** | **string**|  | [optional] 
 **run_id** | [**string**]()|  | [optional] 
 **status** | **string**|  | [optional] 
 **provider** | **string**|  | [optional] 
 **category** | **string**|  | [optional] 
 **search** | **string**|  | [optional] 

### Return type

[**DevicePreviewFeedbackListDto**](DevicePreviewFeedbackListDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_device_preview_run**
> DevicePreviewRunDto get_device_preview_run(run_id => $run_id)

Get device preview run status

### Example 
```perl
use Data::Dumper;
use MailSlurp::DevicePreviewsControllerApi;
my $api_instance = MailSlurp::DevicePreviewsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $run_id = null; # string | 

eval { 
    my $result = $api_instance->get_device_preview_run(run_id => $run_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicePreviewsControllerApi->get_device_preview_run: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_id** | [**string**]()|  | 

### Return type

[**DevicePreviewRunDto**](DevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_device_preview_run_provider_progress**
> DevicePreviewProviderProgressDto get_device_preview_run_provider_progress(run_id => $run_id, provider => $provider)

Get provider-level progress for a device preview run

### Example 
```perl
use Data::Dumper;
use MailSlurp::DevicePreviewsControllerApi;
my $api_instance = MailSlurp::DevicePreviewsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $run_id = null; # string | 
my $provider = "provider_example"; # string | 

eval { 
    my $result = $api_instance->get_device_preview_run_provider_progress(run_id => $run_id, provider => $provider);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicePreviewsControllerApi->get_device_preview_run_provider_progress: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_id** | [**string**]()|  | 
 **provider** | **string**|  | 

### Return type

[**DevicePreviewProviderProgressDto**](DevicePreviewProviderProgressDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_device_preview_run_results**
> DevicePreviewRunResultsDto get_device_preview_run_results(run_id => $run_id)

Get device preview run results

### Example 
```perl
use Data::Dumper;
use MailSlurp::DevicePreviewsControllerApi;
my $api_instance = MailSlurp::DevicePreviewsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $run_id = null; # string | 

eval { 
    my $result = $api_instance->get_device_preview_run_results(run_id => $run_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicePreviewsControllerApi->get_device_preview_run_results: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_id** | [**string**]()|  | 

### Return type

[**DevicePreviewRunResultsDto**](DevicePreviewRunResultsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_device_preview_run_screenshot**
> string get_device_preview_run_screenshot(run_id => $run_id, screenshot_id => $screenshot_id)

Get a seeded device preview screenshot image

### Example 
```perl
use Data::Dumper;
use MailSlurp::DevicePreviewsControllerApi;
my $api_instance = MailSlurp::DevicePreviewsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $run_id = null; # string | 
my $screenshot_id = null; # string | 

eval { 
    my $result = $api_instance->get_device_preview_run_screenshot(run_id => $run_id, screenshot_id => $screenshot_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicePreviewsControllerApi->get_device_preview_run_screenshot: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_id** | [**string**]()|  | 
 **screenshot_id** | [**string**]()|  | 

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_device_preview_runs**
> ARRAY[DevicePreviewRunDto] get_device_preview_runs(email_id => $email_id, limit => $limit)

List previous device preview runs for an email

### Example 
```perl
use Data::Dumper;
use MailSlurp::DevicePreviewsControllerApi;
my $api_instance = MailSlurp::DevicePreviewsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 
my $limit = 50; # int | 

eval { 
    my $result = $api_instance->get_device_preview_runs(email_id => $email_id, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicePreviewsControllerApi->get_device_preview_runs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | 
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**ARRAY[DevicePreviewRunDto]**](DevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_device_preview_runs_for_account**
> ARRAY[DevicePreviewRunDto] get_device_preview_runs_for_account(limit => $limit)

List previous device preview runs for account

### Example 
```perl
use Data::Dumper;
use MailSlurp::DevicePreviewsControllerApi;
my $api_instance = MailSlurp::DevicePreviewsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $limit = 50; # int | 

eval { 
    my $result = $api_instance->get_device_preview_runs_for_account(limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicePreviewsControllerApi->get_device_preview_runs_for_account: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**ARRAY[DevicePreviewRunDto]**](DevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_device_preview_runs_offset_paginated**
> PageDevicePreviewRunProjection get_device_preview_runs_offset_paginated(email_id => $email_id, page => $page, size => $size, sort => $sort)

List previous device preview runs for an email in paginated form

### Example 
```perl
use Data::Dumper;
use MailSlurp::DevicePreviewsControllerApi;
my $api_instance = MailSlurp::DevicePreviewsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 
my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size for paginated result list.
my $sort = 'DESC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_device_preview_runs_offset_paginated(email_id => $email_id, page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicePreviewsControllerApi->get_device_preview_runs_offset_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;DESC&#39;]

### Return type

[**PageDevicePreviewRunProjection**](PageDevicePreviewRunProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_device_preview_feedback**
> DevicePreviewFeedbackDto update_device_preview_feedback(feedback_id => $feedback_id, update_device_preview_feedback_options => $update_device_preview_feedback_options)

Update device preview feedback

### Example 
```perl
use Data::Dumper;
use MailSlurp::DevicePreviewsControllerApi;
my $api_instance = MailSlurp::DevicePreviewsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $feedback_id = null; # string | 
my $update_device_preview_feedback_options = MailSlurp::Object::UpdateDevicePreviewFeedbackOptions->new(); # UpdateDevicePreviewFeedbackOptions | 

eval { 
    my $result = $api_instance->update_device_preview_feedback(feedback_id => $feedback_id, update_device_preview_feedback_options => $update_device_preview_feedback_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicePreviewsControllerApi->update_device_preview_feedback: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedback_id** | [**string**]()|  | 
 **update_device_preview_feedback_options** | [**UpdateDevicePreviewFeedbackOptions**](UpdateDevicePreviewFeedbackOptions)|  | 

### Return type

[**DevicePreviewFeedbackDto**](DevicePreviewFeedbackDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

