# MailSlurp::ExportControllerApi

## Load the API package
```perl
use MailSlurp::Object::ExportControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_entities**](ExportControllerApi#export_entities) | **GET** /export | Export inboxes link callable via browser
[**get_export_link**](ExportControllerApi#get_export_link) | **POST** /export | Get export link


# **export_entities**
> string export_entities(api_key => $api_key, export_type => $export_type, output_format => $output_format, created_earliest_time => $created_earliest_time, created_oldest_time => $created_oldest_time, exclude_previously_exported => $exclude_previously_exported, filter => $filter, list_separator_token => $list_separator_token)

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

my $api_key = "api_key_example"; # string | apiKey
my $export_type = "export_type_example"; # string | exportType
my $output_format = "output_format_example"; # string | outputFormat
my $created_earliest_time = DateTime->from_epoch(epoch => str2time('null')); # DateTime | createdEarliestTime
my $created_oldest_time = DateTime->from_epoch(epoch => str2time('null')); # DateTime | createdOldestTime
my $exclude_previously_exported = null; # boolean | excludePreviouslyExported
my $filter = "filter_example"; # string | filter
my $list_separator_token = "list_separator_token_example"; # string | listSeparatorToken

eval { 
    my $result = $api_instance->export_entities(api_key => $api_key, export_type => $export_type, output_format => $output_format, created_earliest_time => $created_earliest_time, created_oldest_time => $created_oldest_time, exclude_previously_exported => $exclude_previously_exported, filter => $filter, list_separator_token => $list_separator_token);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExportControllerApi->export_entities: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **string**| apiKey | 
 **export_type** | **string**| exportType | 
 **output_format** | **string**| outputFormat | 
 **created_earliest_time** | **DateTime**| createdEarliestTime | [optional] 
 **created_oldest_time** | **DateTime**| createdOldestTime | [optional] 
 **exclude_previously_exported** | **boolean**| excludePreviouslyExported | [optional] 
 **filter** | **string**| filter | [optional] 
 **list_separator_token** | **string**| listSeparatorToken | [optional] 

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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

my $export_type = "export_type_example"; # string | exportType
my $export_options = MailSlurp::Object::ExportOptions->new(); # ExportOptions | exportOptions
my $api_key = "api_key_example"; # string | apiKey

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
 **export_type** | **string**| exportType | 
 **export_options** | [**ExportOptions**](ExportOptions)| exportOptions | 
 **api_key** | **string**| apiKey | [optional] 

### Return type

[**ExportLink**](ExportLink)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

