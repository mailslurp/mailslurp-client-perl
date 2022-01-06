# MailSlurp::ExportControllerApi

## Load the API package
```perl
use MailSlurp::Object::ExportControllerApi;
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_entities**](ExportControllerApi#export_entities) | **GET** /export | Export inboxes link callable via browser
[**get_export_link**](ExportControllerApi#get_export_link) | **POST** /export | Get export link


# **export_entities**
> ARRAY[string] export_entities(export_type => $export_type, api_key => $api_key, output_format => $output_format, filter => $filter, list_separator_token => $list_separator_token, exclude_previously_exported => $exclude_previously_exported, created_earliest_time => $created_earliest_time, created_oldest_time => $created_oldest_time)

Export inboxes link callable via browser

### Example 
```perl
use Data::Dumper;
use MailSlurp::ExportControllerApi;
my $api_instance = MailSlurp::ExportControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $export_type = "export_type_example"; # string | 
my $api_key = "api_key_example"; # string | 
my $output_format = "output_format_example"; # string | 
my $filter = "filter_example"; # string | 
my $list_separator_token = "list_separator_token_example"; # string | 
my $exclude_previously_exported = null; # boolean | 
my $created_earliest_time = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $created_oldest_time = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 

eval { 
    my $result = $api_instance->export_entities(export_type => $export_type, api_key => $api_key, output_format => $output_format, filter => $filter, list_separator_token => $list_separator_token, exclude_previously_exported => $exclude_previously_exported, created_earliest_time => $created_earliest_time, created_oldest_time => $created_oldest_time);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExportControllerApi->export_entities: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **export_type** | **string**|  | 
 **api_key** | **string**|  | 
 **output_format** | **string**|  | 
 **filter** | **string**|  | [optional] 
 **list_separator_token** | **string**|  | [optional] 
 **exclude_previously_exported** | **boolean**|  | [optional] 
 **created_earliest_time** | **DateTime**|  | [optional] 
 **created_oldest_time** | **DateTime**|  | [optional] 

### Return type

**ARRAY[string]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_export_link**
> ExportLink get_export_link(export_type => $export_type, export_options => $export_options, api_key => $api_key)

Get export link

### Example 
```perl
use Data::Dumper;
use MailSlurp::ExportControllerApi;
my $api_instance = MailSlurp::ExportControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $export_type = "export_type_example"; # string | 
my $export_options = MailSlurp::Object::ExportOptions->new(); # ExportOptions | 
my $api_key = "api_key_example"; # string | 

eval { 
    my $result = $api_instance->get_export_link(export_type => $export_type, export_options => $export_options, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExportControllerApi->get_export_link: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **export_type** | **string**|  | 
 **export_options** | [**ExportOptions**](ExportOptions)|  | 
 **api_key** | **string**|  | [optional] 

### Return type

[**ExportLink**](ExportLink)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

