# MailSlurp::CampaignProbeControllerApi

## Load the API package
```perl
use MailSlurp::Object::CampaignProbeControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_campaign_probe**](CampaignProbeControllerApi#create_campaign_probe) | **POST** /campaign-probe/probes | Create campaign probe
[**delete_campaign_probe**](CampaignProbeControllerApi#delete_campaign_probe) | **DELETE** /campaign-probe/probes/{probeId} | Delete campaign probe
[**get_campaign_probe**](CampaignProbeControllerApi#get_campaign_probe) | **GET** /campaign-probe/probes/{probeId} | Get campaign probe
[**get_campaign_probe_insights**](CampaignProbeControllerApi#get_campaign_probe_insights) | **GET** /campaign-probe/probes/{probeId}/insights | Get campaign probe insights
[**get_campaign_probe_runs**](CampaignProbeControllerApi#get_campaign_probe_runs) | **GET** /campaign-probe/probes/{probeId}/runs | List campaign probe runs
[**get_campaign_probe_series**](CampaignProbeControllerApi#get_campaign_probe_series) | **GET** /campaign-probe/probes/{probeId}/series | Get campaign probe trend series
[**get_campaign_probes**](CampaignProbeControllerApi#get_campaign_probes) | **GET** /campaign-probe/probes | List campaign probes
[**run_campaign_probe_now**](CampaignProbeControllerApi#run_campaign_probe_now) | **POST** /campaign-probe/probes/{probeId}/run-now | Run campaign probe now
[**run_due_campaign_probes**](CampaignProbeControllerApi#run_due_campaign_probes) | **POST** /campaign-probe/probes/run-due | Run due campaign probes for user
[**update_campaign_probe**](CampaignProbeControllerApi#update_campaign_probe) | **PUT** /campaign-probe/probes/{probeId} | Update campaign probe


# **create_campaign_probe**
> CampaignProbeDto create_campaign_probe(create_campaign_probe_options => $create_campaign_probe_options)

Create campaign probe

### Example 
```perl
use Data::Dumper;
use MailSlurp::CampaignProbeControllerApi;
my $api_instance = MailSlurp::CampaignProbeControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_campaign_probe_options = MailSlurp::Object::CreateCampaignProbeOptions->new(); # CreateCampaignProbeOptions | 

eval { 
    my $result = $api_instance->create_campaign_probe(create_campaign_probe_options => $create_campaign_probe_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignProbeControllerApi->create_campaign_probe: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_campaign_probe_options** | [**CreateCampaignProbeOptions**](CreateCampaignProbeOptions)|  | 

### Return type

[**CampaignProbeDto**](CampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_campaign_probe**
> delete_campaign_probe(probe_id => $probe_id)

Delete campaign probe

### Example 
```perl
use Data::Dumper;
use MailSlurp::CampaignProbeControllerApi;
my $api_instance = MailSlurp::CampaignProbeControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $probe_id = null; # string | 

eval { 
    $api_instance->delete_campaign_probe(probe_id => $probe_id);
};
if ($@) {
    warn "Exception when calling CampaignProbeControllerApi->delete_campaign_probe: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probe_id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_campaign_probe**
> CampaignProbeDto get_campaign_probe(probe_id => $probe_id)

Get campaign probe

### Example 
```perl
use Data::Dumper;
use MailSlurp::CampaignProbeControllerApi;
my $api_instance = MailSlurp::CampaignProbeControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $probe_id = null; # string | 

eval { 
    my $result = $api_instance->get_campaign_probe(probe_id => $probe_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignProbeControllerApi->get_campaign_probe: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probe_id** | [**string**]()|  | 

### Return type

[**CampaignProbeDto**](CampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_campaign_probe_insights**
> CampaignProbeInsightsDto get_campaign_probe_insights(probe_id => $probe_id, since => $since, before => $before)

Get campaign probe insights

### Example 
```perl
use Data::Dumper;
use MailSlurp::CampaignProbeControllerApi;
my $api_instance = MailSlurp::CampaignProbeControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $probe_id = null; # string | 
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 

eval { 
    my $result = $api_instance->get_campaign_probe_insights(probe_id => $probe_id, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignProbeControllerApi->get_campaign_probe_insights: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probe_id** | [**string**]()|  | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 

### Return type

[**CampaignProbeInsightsDto**](CampaignProbeInsightsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_campaign_probe_runs**
> ARRAY[CampaignProbeRunDto] get_campaign_probe_runs(probe_id => $probe_id, since => $since, before => $before, status => $status, limit => $limit)

List campaign probe runs

### Example 
```perl
use Data::Dumper;
use MailSlurp::CampaignProbeControllerApi;
my $api_instance = MailSlurp::CampaignProbeControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $probe_id = null; # string | 
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $status = "status_example"; # string | 
my $limit = 56; # int | 

eval { 
    my $result = $api_instance->get_campaign_probe_runs(probe_id => $probe_id, since => $since, before => $before, status => $status, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignProbeControllerApi->get_campaign_probe_runs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probe_id** | [**string**]()|  | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **status** | **string**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**ARRAY[CampaignProbeRunDto]**](CampaignProbeRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_campaign_probe_series**
> CampaignProbeSeriesDto get_campaign_probe_series(probe_id => $probe_id, since => $since, before => $before, bucket => $bucket)

Get campaign probe trend series

### Example 
```perl
use Data::Dumper;
use MailSlurp::CampaignProbeControllerApi;
my $api_instance = MailSlurp::CampaignProbeControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $probe_id = null; # string | 
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $bucket = 'DAY'; # string | 

eval { 
    my $result = $api_instance->get_campaign_probe_series(probe_id => $probe_id, since => $since, before => $before, bucket => $bucket);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignProbeControllerApi->get_campaign_probe_series: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probe_id** | [**string**]()|  | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **bucket** | **string**|  | [optional] [default to &#39;DAY&#39;]

### Return type

[**CampaignProbeSeriesDto**](CampaignProbeSeriesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_campaign_probes**
> ARRAY[CampaignProbeDto] get_campaign_probes()

List campaign probes

### Example 
```perl
use Data::Dumper;
use MailSlurp::CampaignProbeControllerApi;
my $api_instance = MailSlurp::CampaignProbeControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_campaign_probes();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignProbeControllerApi->get_campaign_probes: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CampaignProbeDto]**](CampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **run_campaign_probe_now**
> CampaignProbeRunNowResult run_campaign_probe_now(probe_id => $probe_id, create_campaign_probe_run_options => $create_campaign_probe_run_options)

Run campaign probe now

### Example 
```perl
use Data::Dumper;
use MailSlurp::CampaignProbeControllerApi;
my $api_instance = MailSlurp::CampaignProbeControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $probe_id = null; # string | 
my $create_campaign_probe_run_options = MailSlurp::Object::CreateCampaignProbeRunOptions->new(); # CreateCampaignProbeRunOptions | 

eval { 
    my $result = $api_instance->run_campaign_probe_now(probe_id => $probe_id, create_campaign_probe_run_options => $create_campaign_probe_run_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignProbeControllerApi->run_campaign_probe_now: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probe_id** | [**string**]()|  | 
 **create_campaign_probe_run_options** | [**CreateCampaignProbeRunOptions**](CreateCampaignProbeRunOptions)|  | 

### Return type

[**CampaignProbeRunNowResult**](CampaignProbeRunNowResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **run_due_campaign_probes**
> CampaignProbeRunDueResult run_due_campaign_probes(max_runs => $max_runs)

Run due campaign probes for user

### Example 
```perl
use Data::Dumper;
use MailSlurp::CampaignProbeControllerApi;
my $api_instance = MailSlurp::CampaignProbeControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $max_runs = 56; # int | 

eval { 
    my $result = $api_instance->run_due_campaign_probes(max_runs => $max_runs);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignProbeControllerApi->run_due_campaign_probes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **max_runs** | **int**|  | [optional] 

### Return type

[**CampaignProbeRunDueResult**](CampaignProbeRunDueResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_campaign_probe**
> CampaignProbeDto update_campaign_probe(probe_id => $probe_id, update_campaign_probe_options => $update_campaign_probe_options)

Update campaign probe

### Example 
```perl
use Data::Dumper;
use MailSlurp::CampaignProbeControllerApi;
my $api_instance = MailSlurp::CampaignProbeControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $probe_id = null; # string | 
my $update_campaign_probe_options = MailSlurp::Object::UpdateCampaignProbeOptions->new(); # UpdateCampaignProbeOptions | 

eval { 
    my $result = $api_instance->update_campaign_probe(probe_id => $probe_id, update_campaign_probe_options => $update_campaign_probe_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignProbeControllerApi->update_campaign_probe: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probe_id** | [**string**]()|  | 
 **update_campaign_probe_options** | [**UpdateCampaignProbeOptions**](UpdateCampaignProbeOptions)|  | 

### Return type

[**CampaignProbeDto**](CampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

