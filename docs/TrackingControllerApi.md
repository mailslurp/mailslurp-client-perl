# MailSlurp::TrackingControllerApi

## Load the API package
```perl
use MailSlurp::Object::TrackingControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tracking_pixel**](TrackingControllerApi#create_tracking_pixel) | **POST** /tracking/pixels | Create tracking pixel
[**get_all_tracking_pixels**](TrackingControllerApi#get_all_tracking_pixels) | **GET** /tracking/pixels | Get tracking pixels
[**get_tracking_pixel**](TrackingControllerApi#get_tracking_pixel) | **GET** /tracking/pixels/{id} | Get pixel


# **create_tracking_pixel**
> TrackingPixelDto create_tracking_pixel(create_tracking_pixel_options => $create_tracking_pixel_options)

Create tracking pixel

Create a tracking pixel

### Example 
```perl
use Data::Dumper;
use MailSlurp::TrackingControllerApi;
my $api_instance = MailSlurp::TrackingControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_tracking_pixel_options = MailSlurp::Object::CreateTrackingPixelOptions->new(); # CreateTrackingPixelOptions | createTrackingPixelOptions

eval { 
    my $result = $api_instance->create_tracking_pixel(create_tracking_pixel_options => $create_tracking_pixel_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TrackingControllerApi->create_tracking_pixel: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_tracking_pixel_options** | [**CreateTrackingPixelOptions**](CreateTrackingPixelOptions)| createTrackingPixelOptions | 

### Return type

[**TrackingPixelDto**](TrackingPixelDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_tracking_pixels**
> PageTrackingPixelProjection get_all_tracking_pixels(page => $page, size => $size, sort => $sort)

Get tracking pixels

List tracking pixels in paginated form

### Example 
```perl
use Data::Dumper;
use MailSlurp::TrackingControllerApi;
my $api_instance = MailSlurp::TrackingControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_all_tracking_pixels(page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TrackingControllerApi->get_all_tracking_pixels: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_tracking_pixel**
> TrackingPixelDto get_tracking_pixel(id => $id)

Get pixel

### Example 
```perl
use Data::Dumper;
use MailSlurp::TrackingControllerApi;
my $api_instance = MailSlurp::TrackingControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | id

eval { 
    my $result = $api_instance->get_tracking_pixel(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TrackingControllerApi->get_tracking_pixel: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| id | 

### Return type

[**TrackingPixelDto**](TrackingPixelDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

