# MailSlurp::SseControllerApi

## Load the API package
```perl
use MailSlurp::Object::SseControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**stream_events**](SseControllerApi#stream_events) | **GET** /sse | 


# **stream_events**
> ARRAY[string] stream_events(x_api_key => $x_api_key)



### Example 
```perl
use Data::Dumper;
use MailSlurp::SseControllerApi;
my $api_instance = MailSlurp::SseControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $x_api_key = "x_api_key_example"; # string | 

eval { 
    my $result = $api_instance->stream_events(x_api_key => $x_api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SseControllerApi->stream_events: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_api_key** | **string**|  | 

### Return type

**ARRAY[string]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

