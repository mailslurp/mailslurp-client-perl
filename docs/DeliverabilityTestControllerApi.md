# MailSlurp::DeliverabilityTestControllerApi

## Load the API package
```perl
use MailSlurp::Object::DeliverabilityTestControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_deliverability_simulation_job**](DeliverabilityTestControllerApi#cancel_deliverability_simulation_job) | **POST** /test/deliverability/{testId}/simulation-jobs/{jobId}/cancel | Cancel deliverability simulation job
[**create_deliverability_simulation_job**](DeliverabilityTestControllerApi#create_deliverability_simulation_job) | **POST** /test/deliverability/{testId}/simulation-jobs | Create deliverability simulation job
[**create_deliverability_test**](DeliverabilityTestControllerApi#create_deliverability_test) | **POST** /test/deliverability | Create deliverability/load test
[**delete_deliverability_test**](DeliverabilityTestControllerApi#delete_deliverability_test) | **DELETE** /test/deliverability/{testId} | Delete deliverability/load test
[**duplicate_deliverability_test**](DeliverabilityTestControllerApi#duplicate_deliverability_test) | **POST** /test/deliverability/{testId}/duplicate | Duplicate deliverability/load test
[**export_deliverability_test_report**](DeliverabilityTestControllerApi#export_deliverability_test_report) | **GET** /test/deliverability/{testId}/report/export | Export deliverability/load test report as PDF
[**export_deliverability_test_results**](DeliverabilityTestControllerApi#export_deliverability_test_results) | **GET** /test/deliverability/{testId}/results/export | Export deliverability/load test entity results as CSV
[**get_deliverability_analytics_series**](DeliverabilityTestControllerApi#get_deliverability_analytics_series) | **GET** /test/deliverability/analytics/series | Get deliverability analytics time series
[**get_deliverability_failure_hotspots**](DeliverabilityTestControllerApi#get_deliverability_failure_hotspots) | **GET** /test/deliverability/analytics/hotspots | Get deliverability failure hotspots
[**get_deliverability_simulation_job**](DeliverabilityTestControllerApi#get_deliverability_simulation_job) | **GET** /test/deliverability/{testId}/simulation-jobs/{jobId} | Get deliverability simulation job
[**get_deliverability_simulation_job_events**](DeliverabilityTestControllerApi#get_deliverability_simulation_job_events) | **GET** /test/deliverability/{testId}/simulation-jobs/{jobId}/events | Get deliverability simulation job events
[**get_deliverability_test**](DeliverabilityTestControllerApi#get_deliverability_test) | **GET** /test/deliverability/{testId} | Get deliverability/load test
[**get_deliverability_test_results**](DeliverabilityTestControllerApi#get_deliverability_test_results) | **GET** /test/deliverability/{testId}/results | Get deliverability/load test entity results
[**get_deliverability_tests**](DeliverabilityTestControllerApi#get_deliverability_tests) | **GET** /test/deliverability | List deliverability/load tests
[**get_latest_deliverability_simulation_job**](DeliverabilityTestControllerApi#get_latest_deliverability_simulation_job) | **GET** /test/deliverability/{testId}/simulation-jobs/latest | Get latest deliverability simulation job
[**pause_deliverability_simulation_job**](DeliverabilityTestControllerApi#pause_deliverability_simulation_job) | **POST** /test/deliverability/{testId}/simulation-jobs/{jobId}/pause | Pause deliverability simulation job
[**pause_deliverability_test**](DeliverabilityTestControllerApi#pause_deliverability_test) | **POST** /test/deliverability/{testId}/pause | Pause deliverability/load test
[**poll_deliverability_test_status**](DeliverabilityTestControllerApi#poll_deliverability_test_status) | **GET** /test/deliverability/{testId}/status | Poll deliverability/load test status
[**resume_deliverability_simulation_job**](DeliverabilityTestControllerApi#resume_deliverability_simulation_job) | **POST** /test/deliverability/{testId}/simulation-jobs/{jobId}/resume | Resume deliverability simulation job
[**start_deliverability_test**](DeliverabilityTestControllerApi#start_deliverability_test) | **POST** /test/deliverability/{testId}/start | Start or resume deliverability/load test
[**stop_deliverability_test**](DeliverabilityTestControllerApi#stop_deliverability_test) | **POST** /test/deliverability/{testId}/stop | Stop deliverability/load test
[**update_deliverability_test**](DeliverabilityTestControllerApi#update_deliverability_test) | **PATCH** /test/deliverability/{testId} | Update deliverability/load test


# **cancel_deliverability_simulation_job**
> DeliverabilitySimulationJobDto cancel_deliverability_simulation_job(test_id => $test_id, job_id => $job_id)

Cancel deliverability simulation job

Cancel a running or paused simulation job.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 
my $job_id = null; # string | 

eval { 
    my $result = $api_instance->cancel_deliverability_simulation_job(test_id => $test_id, job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->cancel_deliverability_simulation_job: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 
 **job_id** | [**string**]()|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_deliverability_simulation_job**
> DeliverabilitySimulationJobDto create_deliverability_simulation_job(test_id => $test_id, create_deliverability_simulation_job_options => $create_deliverability_simulation_job_options)

Create deliverability simulation job

Create and start a simulation job for a running deliverability test. Only one active simulation job is allowed per user.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 
my $create_deliverability_simulation_job_options = MailSlurp::Object::CreateDeliverabilitySimulationJobOptions->new(); # CreateDeliverabilitySimulationJobOptions | 

eval { 
    my $result = $api_instance->create_deliverability_simulation_job(test_id => $test_id, create_deliverability_simulation_job_options => $create_deliverability_simulation_job_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->create_deliverability_simulation_job: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 
 **create_deliverability_simulation_job_options** | [**CreateDeliverabilitySimulationJobOptions**](CreateDeliverabilitySimulationJobOptions)|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_deliverability_test**
> DeliverabilityTestDto create_deliverability_test(create_deliverability_test_options => $create_deliverability_test_options)

Create deliverability/load test

Create a deliverability test for inboxes or phone numbers using ALL, PATTERN, or EXPLICIT selector scope.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_deliverability_test_options = MailSlurp::Object::CreateDeliverabilityTestOptions->new(); # CreateDeliverabilityTestOptions | 

eval { 
    my $result = $api_instance->create_deliverability_test(create_deliverability_test_options => $create_deliverability_test_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->create_deliverability_test: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_deliverability_test_options** | [**CreateDeliverabilityTestOptions**](CreateDeliverabilityTestOptions)|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_deliverability_test**
> DeleteResult delete_deliverability_test(test_id => $test_id)

Delete deliverability/load test

Delete test and all persisted entity-level results.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 

eval { 
    my $result = $api_instance->delete_deliverability_test(test_id => $test_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->delete_deliverability_test: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 

### Return type

[**DeleteResult**](DeleteResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **duplicate_deliverability_test**
> DeliverabilityTestDto duplicate_deliverability_test(test_id => $test_id)

Duplicate deliverability/load test

Create a fresh deliverability test using an existing test configuration, including selector scope, exclusions, and expectations.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 

eval { 
    my $result = $api_instance->duplicate_deliverability_test(test_id => $test_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->duplicate_deliverability_test: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **export_deliverability_test_report**
> export_deliverability_test_report(test_id => $test_id)

Export deliverability/load test report as PDF

Export a PDF report for a terminal deliverability test (COMPLETE, FAILED, or STOPPED), including configuration, summary outcomes, and detailed entity-level results.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 

eval { 
    $api_instance->export_deliverability_test_report(test_id => $test_id);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->export_deliverability_test_report: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **export_deliverability_test_results**
> export_deliverability_test_results(test_id => $test_id, matched => $matched)

Export deliverability/load test entity results as CSV

Export per-entity deliverability results including expectation-level pass/fail counts. The latest status is evaluated with the same polling safeguards before export.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 
my $matched = null; # boolean | 

eval { 
    $api_instance->export_deliverability_test_results(test_id => $test_id, matched => $matched);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->export_deliverability_test_results: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 
 **matched** | **boolean**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_deliverability_analytics_series**
> DeliverabilityAnalyticsSeriesDto get_deliverability_analytics_series(since => $since, before => $before, scope => $scope, bucket => $bucket, run_limit => $run_limit)

Get deliverability analytics time series

Compare deliverability runs over a time range with bucketed chart metrics and run-level rows for table views.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $scope = "scope_example"; # string | 
my $bucket = 'DAY'; # string | 
my $run_limit = 56; # int | 

eval { 
    my $result = $api_instance->get_deliverability_analytics_series(since => $since, before => $before, scope => $scope, bucket => $bucket, run_limit => $run_limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->get_deliverability_analytics_series: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **scope** | **string**|  | [optional] 
 **bucket** | **string**|  | [optional] [default to &#39;DAY&#39;]
 **run_limit** | **int**|  | [optional] 

### Return type

[**DeliverabilityAnalyticsSeriesDto**](DeliverabilityAnalyticsSeriesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_deliverability_failure_hotspots**
> DeliverabilityFailureHotspotsDto get_deliverability_failure_hotspots(since => $since, before => $before, scope => $scope, limit => $limit)

Get deliverability failure hotspots

Find commonly failing entities and phone country/variant dimensions across deliverability runs in a time range.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $scope = "scope_example"; # string | 
my $limit = 56; # int | 

eval { 
    my $result = $api_instance->get_deliverability_failure_hotspots(since => $since, before => $before, scope => $scope, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->get_deliverability_failure_hotspots: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **scope** | **string**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**DeliverabilityFailureHotspotsDto**](DeliverabilityFailureHotspotsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_deliverability_simulation_job**
> DeliverabilitySimulationJobDto get_deliverability_simulation_job(test_id => $test_id, job_id => $job_id)

Get deliverability simulation job

Get simulation job status and progress counters.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 
my $job_id = null; # string | 

eval { 
    my $result = $api_instance->get_deliverability_simulation_job(test_id => $test_id, job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->get_deliverability_simulation_job: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 
 **job_id** | [**string**]()|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_deliverability_simulation_job_events**
> DeliverabilitySimulationJobEventPageDto get_deliverability_simulation_job_events(test_id => $test_id, job_id => $job_id, page => $page, size => $size, sort => $sort)

Get deliverability simulation job events

Get paged simulation events including send successes and failures.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 
my $job_id = null; # string | 
my $page = 0; # int | 
my $size = 20; # int | 
my $sort = 'DESC'; # string | 

eval { 
    my $result = $api_instance->get_deliverability_simulation_job_events(test_id => $test_id, job_id => $job_id, page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->get_deliverability_simulation_job_events: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 
 **job_id** | [**string**]()|  | 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]
 **sort** | **string**|  | [optional] [default to &#39;DESC&#39;]

### Return type

[**DeliverabilitySimulationJobEventPageDto**](DeliverabilitySimulationJobEventPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_deliverability_test**
> DeliverabilityTestDto get_deliverability_test(test_id => $test_id)

Get deliverability/load test

Get deliverability test configuration and latest progress counters.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 

eval { 
    my $result = $api_instance->get_deliverability_test(test_id => $test_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->get_deliverability_test: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_deliverability_test_results**
> DeliverabilityEntityResultPageDto get_deliverability_test_results(test_id => $test_id, matched => $matched, page => $page, size => $size, sort => $sort)

Get deliverability/load test entity results

Get paged per-entity expectation results with optional matched/unmatched filtering.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 
my $matched = null; # boolean | 
my $page = 0; # int | 
my $size = 20; # int | 
my $sort = 'ASC'; # string | 

eval { 
    my $result = $api_instance->get_deliverability_test_results(test_id => $test_id, matched => $matched, page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->get_deliverability_test_results: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 
 **matched** | **boolean**|  | [optional] 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]
 **sort** | **string**|  | [optional] [default to &#39;ASC&#39;]

### Return type

[**DeliverabilityEntityResultPageDto**](DeliverabilityEntityResultPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_deliverability_tests**
> DeliverabilityTestPageDto get_deliverability_tests(page => $page, size => $size, sort => $sort)

List deliverability/load tests

List deliverability tests for the authenticated account.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Page index
my $size = 20; # int | Page size
my $sort = 'DESC'; # string | Sort direction

eval { 
    my $result = $api_instance->get_deliverability_tests(page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->get_deliverability_tests: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page index | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 20]
 **sort** | **string**| Sort direction | [optional] [default to &#39;DESC&#39;]

### Return type

[**DeliverabilityTestPageDto**](DeliverabilityTestPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_latest_deliverability_simulation_job**
> DeliverabilitySimulationJobDto get_latest_deliverability_simulation_job(test_id => $test_id)

Get latest deliverability simulation job

Get the most recent simulation job for a deliverability test.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 

eval { 
    my $result = $api_instance->get_latest_deliverability_simulation_job(test_id => $test_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->get_latest_deliverability_simulation_job: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **pause_deliverability_simulation_job**
> DeliverabilitySimulationJobDto pause_deliverability_simulation_job(test_id => $test_id, job_id => $job_id)

Pause deliverability simulation job

Pause a running simulation job.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 
my $job_id = null; # string | 

eval { 
    my $result = $api_instance->pause_deliverability_simulation_job(test_id => $test_id, job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->pause_deliverability_simulation_job: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 
 **job_id** | [**string**]()|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **pause_deliverability_test**
> DeliverabilityTestDto pause_deliverability_test(test_id => $test_id)

Pause deliverability/load test

Pause a RUNNING or SCHEDULED deliverability test.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 

eval { 
    my $result = $api_instance->pause_deliverability_test(test_id => $test_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->pause_deliverability_test: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **poll_deliverability_test_status**
> DeliverabilityPollStatusResultDto poll_deliverability_test_status(test_id => $test_id)

Poll deliverability/load test status

Poll test progress. Evaluation is throttled with a 5-second cache window to protect backing data stores.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 

eval { 
    my $result = $api_instance->poll_deliverability_test_status(test_id => $test_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->poll_deliverability_test_status: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 

### Return type

[**DeliverabilityPollStatusResultDto**](DeliverabilityPollStatusResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **resume_deliverability_simulation_job**
> DeliverabilitySimulationJobDto resume_deliverability_simulation_job(test_id => $test_id, job_id => $job_id)

Resume deliverability simulation job

Resume a paused simulation job.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 
my $job_id = null; # string | 

eval { 
    my $result = $api_instance->resume_deliverability_simulation_job(test_id => $test_id, job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->resume_deliverability_simulation_job: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 
 **job_id** | [**string**]()|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **start_deliverability_test**
> DeliverabilityTestDto start_deliverability_test(test_id => $test_id)

Start or resume deliverability/load test

Start a CREATED test or resume a PAUSED/SCHEDULED test.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 

eval { 
    my $result = $api_instance->start_deliverability_test(test_id => $test_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->start_deliverability_test: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **stop_deliverability_test**
> DeliverabilityTestDto stop_deliverability_test(test_id => $test_id)

Stop deliverability/load test

Stop a deliverability test and mark it terminal.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 

eval { 
    my $result = $api_instance->stop_deliverability_test(test_id => $test_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->stop_deliverability_test: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_deliverability_test**
> DeliverabilityTestDto update_deliverability_test(test_id => $test_id, update_deliverability_test_options => $update_deliverability_test_options)

Update deliverability/load test

Update metadata, timeout, and expectations for a non-running non-terminal test.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DeliverabilityTestControllerApi;
my $api_instance = MailSlurp::DeliverabilityTestControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $test_id = null; # string | 
my $update_deliverability_test_options = MailSlurp::Object::UpdateDeliverabilityTestOptions->new(); # UpdateDeliverabilityTestOptions | 

eval { 
    my $result = $api_instance->update_deliverability_test(test_id => $test_id, update_deliverability_test_options => $update_deliverability_test_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DeliverabilityTestControllerApi->update_deliverability_test: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_id** | [**string**]()|  | 
 **update_deliverability_test_options** | [**UpdateDeliverabilityTestOptions**](UpdateDeliverabilityTestOptions)|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

