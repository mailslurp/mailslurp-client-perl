# MailSlurp::DomainMonitorControllerApi

## Load the API package
```perl
use MailSlurp::Object::DomainMonitorControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_domain_monitor**](DomainMonitorControllerApi#create_domain_monitor) | **POST** /domain-monitor/monitors | Create domain monitor
[**create_domain_monitor_alert_sink**](DomainMonitorControllerApi#create_domain_monitor_alert_sink) | **POST** /domain-monitor/monitors/{monitorId}/alert-sinks | Create alert sink for monitor
[**delete_domain_monitor**](DomainMonitorControllerApi#delete_domain_monitor) | **DELETE** /domain-monitor/monitors/{monitorId} | Delete domain monitor
[**delete_domain_monitor_alert_sink**](DomainMonitorControllerApi#delete_domain_monitor_alert_sink) | **DELETE** /domain-monitor/monitors/{monitorId}/alert-sinks/{sinkId} | Delete monitor alert sink
[**get_domain_monitor**](DomainMonitorControllerApi#get_domain_monitor) | **GET** /domain-monitor/monitors/{monitorId} | Get domain monitor
[**get_domain_monitor_alert_sinks**](DomainMonitorControllerApi#get_domain_monitor_alert_sinks) | **GET** /domain-monitor/monitors/{monitorId}/alert-sinks | List alert sinks for monitor
[**get_domain_monitor_insights**](DomainMonitorControllerApi#get_domain_monitor_insights) | **GET** /domain-monitor/monitors/{monitorId}/insights | Get monitor insights
[**get_domain_monitor_runs**](DomainMonitorControllerApi#get_domain_monitor_runs) | **GET** /domain-monitor/monitors/{monitorId}/runs | List monitor runs
[**get_domain_monitor_series**](DomainMonitorControllerApi#get_domain_monitor_series) | **GET** /domain-monitor/monitors/{monitorId}/series | Get monitor trend series
[**get_domain_monitors**](DomainMonitorControllerApi#get_domain_monitors) | **GET** /domain-monitor/monitors | List domain monitors
[**run_domain_monitor_now**](DomainMonitorControllerApi#run_domain_monitor_now) | **POST** /domain-monitor/monitors/{monitorId}/run-now | Run monitor now
[**run_due_domain_monitors**](DomainMonitorControllerApi#run_due_domain_monitors) | **POST** /domain-monitor/monitors/run-due | Run due monitors for user
[**update_domain_monitor**](DomainMonitorControllerApi#update_domain_monitor) | **PUT** /domain-monitor/monitors/{monitorId} | Update domain monitor


# **create_domain_monitor**
> DomainMonitorDto create_domain_monitor(create_domain_monitor_options => $create_domain_monitor_options)

Create domain monitor

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainMonitorControllerApi;
my $api_instance = MailSlurp::DomainMonitorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_domain_monitor_options = MailSlurp::Object::CreateDomainMonitorOptions->new(); # CreateDomainMonitorOptions | 

eval { 
    my $result = $api_instance->create_domain_monitor(create_domain_monitor_options => $create_domain_monitor_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainMonitorControllerApi->create_domain_monitor: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_domain_monitor_options** | [**CreateDomainMonitorOptions**](CreateDomainMonitorOptions)|  | 

### Return type

[**DomainMonitorDto**](DomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_domain_monitor_alert_sink**
> DomainMonitorAlertSinkDto create_domain_monitor_alert_sink(monitor_id => $monitor_id, create_domain_monitor_alert_sink_options => $create_domain_monitor_alert_sink_options)

Create alert sink for monitor

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainMonitorControllerApi;
my $api_instance = MailSlurp::DomainMonitorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $monitor_id = null; # string | 
my $create_domain_monitor_alert_sink_options = MailSlurp::Object::CreateDomainMonitorAlertSinkOptions->new(); # CreateDomainMonitorAlertSinkOptions | 

eval { 
    my $result = $api_instance->create_domain_monitor_alert_sink(monitor_id => $monitor_id, create_domain_monitor_alert_sink_options => $create_domain_monitor_alert_sink_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainMonitorControllerApi->create_domain_monitor_alert_sink: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitor_id** | [**string**]()|  | 
 **create_domain_monitor_alert_sink_options** | [**CreateDomainMonitorAlertSinkOptions**](CreateDomainMonitorAlertSinkOptions)|  | 

### Return type

[**DomainMonitorAlertSinkDto**](DomainMonitorAlertSinkDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_domain_monitor**
> delete_domain_monitor(monitor_id => $monitor_id)

Delete domain monitor

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainMonitorControllerApi;
my $api_instance = MailSlurp::DomainMonitorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $monitor_id = null; # string | 

eval { 
    $api_instance->delete_domain_monitor(monitor_id => $monitor_id);
};
if ($@) {
    warn "Exception when calling DomainMonitorControllerApi->delete_domain_monitor: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitor_id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_domain_monitor_alert_sink**
> delete_domain_monitor_alert_sink(monitor_id => $monitor_id, sink_id => $sink_id)

Delete monitor alert sink

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainMonitorControllerApi;
my $api_instance = MailSlurp::DomainMonitorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $monitor_id = null; # string | 
my $sink_id = null; # string | 

eval { 
    $api_instance->delete_domain_monitor_alert_sink(monitor_id => $monitor_id, sink_id => $sink_id);
};
if ($@) {
    warn "Exception when calling DomainMonitorControllerApi->delete_domain_monitor_alert_sink: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitor_id** | [**string**]()|  | 
 **sink_id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_domain_monitor**
> DomainMonitorDto get_domain_monitor(monitor_id => $monitor_id)

Get domain monitor

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainMonitorControllerApi;
my $api_instance = MailSlurp::DomainMonitorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $monitor_id = null; # string | 

eval { 
    my $result = $api_instance->get_domain_monitor(monitor_id => $monitor_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainMonitorControllerApi->get_domain_monitor: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitor_id** | [**string**]()|  | 

### Return type

[**DomainMonitorDto**](DomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_domain_monitor_alert_sinks**
> ARRAY[DomainMonitorAlertSinkDto] get_domain_monitor_alert_sinks(monitor_id => $monitor_id)

List alert sinks for monitor

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainMonitorControllerApi;
my $api_instance = MailSlurp::DomainMonitorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $monitor_id = null; # string | 

eval { 
    my $result = $api_instance->get_domain_monitor_alert_sinks(monitor_id => $monitor_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainMonitorControllerApi->get_domain_monitor_alert_sinks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitor_id** | [**string**]()|  | 

### Return type

[**ARRAY[DomainMonitorAlertSinkDto]**](DomainMonitorAlertSinkDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_domain_monitor_insights**
> DomainMonitorInsightsDto get_domain_monitor_insights(monitor_id => $monitor_id, since => $since, before => $before)

Get monitor insights

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainMonitorControllerApi;
my $api_instance = MailSlurp::DomainMonitorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $monitor_id = null; # string | 
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 

eval { 
    my $result = $api_instance->get_domain_monitor_insights(monitor_id => $monitor_id, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainMonitorControllerApi->get_domain_monitor_insights: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitor_id** | [**string**]()|  | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 

### Return type

[**DomainMonitorInsightsDto**](DomainMonitorInsightsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_domain_monitor_runs**
> ARRAY[DomainMonitorRunDto] get_domain_monitor_runs(monitor_id => $monitor_id, since => $since, before => $before, status => $status, limit => $limit)

List monitor runs

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainMonitorControllerApi;
my $api_instance = MailSlurp::DomainMonitorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $monitor_id = null; # string | 
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $status = "status_example"; # string | 
my $limit = 56; # int | 

eval { 
    my $result = $api_instance->get_domain_monitor_runs(monitor_id => $monitor_id, since => $since, before => $before, status => $status, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainMonitorControllerApi->get_domain_monitor_runs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitor_id** | [**string**]()|  | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **status** | **string**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**ARRAY[DomainMonitorRunDto]**](DomainMonitorRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_domain_monitor_series**
> DomainMonitorSeriesDto get_domain_monitor_series(monitor_id => $monitor_id, since => $since, before => $before, bucket => $bucket)

Get monitor trend series

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainMonitorControllerApi;
my $api_instance = MailSlurp::DomainMonitorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $monitor_id = null; # string | 
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $bucket = 'DAY'; # string | 

eval { 
    my $result = $api_instance->get_domain_monitor_series(monitor_id => $monitor_id, since => $since, before => $before, bucket => $bucket);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainMonitorControllerApi->get_domain_monitor_series: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitor_id** | [**string**]()|  | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **bucket** | **string**|  | [optional] [default to &#39;DAY&#39;]

### Return type

[**DomainMonitorSeriesDto**](DomainMonitorSeriesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_domain_monitors**
> ARRAY[DomainMonitorDto] get_domain_monitors()

List domain monitors

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainMonitorControllerApi;
my $api_instance = MailSlurp::DomainMonitorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_domain_monitors();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainMonitorControllerApi->get_domain_monitors: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[DomainMonitorDto]**](DomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **run_domain_monitor_now**
> DomainMonitorRunNowResult run_domain_monitor_now(monitor_id => $monitor_id)

Run monitor now

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainMonitorControllerApi;
my $api_instance = MailSlurp::DomainMonitorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $monitor_id = null; # string | 

eval { 
    my $result = $api_instance->run_domain_monitor_now(monitor_id => $monitor_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainMonitorControllerApi->run_domain_monitor_now: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitor_id** | [**string**]()|  | 

### Return type

[**DomainMonitorRunNowResult**](DomainMonitorRunNowResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **run_due_domain_monitors**
> DomainMonitorRunDueResult run_due_domain_monitors(max_runs => $max_runs)

Run due monitors for user

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainMonitorControllerApi;
my $api_instance = MailSlurp::DomainMonitorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $max_runs = 56; # int | 

eval { 
    my $result = $api_instance->run_due_domain_monitors(max_runs => $max_runs);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainMonitorControllerApi->run_due_domain_monitors: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **max_runs** | **int**|  | [optional] 

### Return type

[**DomainMonitorRunDueResult**](DomainMonitorRunDueResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_domain_monitor**
> DomainMonitorDto update_domain_monitor(monitor_id => $monitor_id, update_domain_monitor_options => $update_domain_monitor_options)

Update domain monitor

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainMonitorControllerApi;
my $api_instance = MailSlurp::DomainMonitorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $monitor_id = null; # string | 
my $update_domain_monitor_options = MailSlurp::Object::UpdateDomainMonitorOptions->new(); # UpdateDomainMonitorOptions | 

eval { 
    my $result = $api_instance->update_domain_monitor(monitor_id => $monitor_id, update_domain_monitor_options => $update_domain_monitor_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainMonitorControllerApi->update_domain_monitor: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitor_id** | [**string**]()|  | 
 **update_domain_monitor_options** | [**UpdateDomainMonitorOptions**](UpdateDomainMonitorOptions)|  | 

### Return type

[**DomainMonitorDto**](DomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

