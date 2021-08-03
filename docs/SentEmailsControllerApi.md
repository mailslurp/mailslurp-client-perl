# MailSlurp::SentEmailsControllerApi

## Load the API package
```perl
use MailSlurp::Object::SentEmailsControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_sent_tracking_pixels**](SentEmailsControllerApi#get_all_sent_tracking_pixels) | **GET** /sent/tracking-pixels | Get all sent email tracking pixels in paginated form
[**get_sent_email**](SentEmailsControllerApi#get_sent_email) | **GET** /sent/{id} | Get sent email receipt
[**get_sent_email_html_content**](SentEmailsControllerApi#get_sent_email_html_content) | **GET** /sent/{id}/html | Get sent email HTML content
[**get_sent_email_tracking_pixels**](SentEmailsControllerApi#get_sent_email_tracking_pixels) | **GET** /sent/{id}/tracking-pixels | Get all tracking pixels for a sent email in paginated form
[**get_sent_emails**](SentEmailsControllerApi#get_sent_emails) | **GET** /sent | Get all sent emails in paginated form
[**get_sent_organization_emails**](SentEmailsControllerApi#get_sent_organization_emails) | **GET** /sent/organization | Get all sent organization emails in paginated form


# **get_all_sent_tracking_pixels**
> PageTrackingPixelProjection get_all_sent_tracking_pixels(page => $page, search_filter => $search_filter, size => $size, sort => $sort)

Get all sent email tracking pixels in paginated form

### Example 
```perl
use Data::Dumper;
use MailSlurp::SentEmailsControllerApi;
my $api_instance = MailSlurp::SentEmailsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index in sent email tracking pixel list pagination
my $search_filter = "search_filter_example"; # string | Optional search filter
my $size = 20; # int | Optional page size in sent email tracking pixel list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_all_sent_tracking_pixels(page => $page, search_filter => $search_filter, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->get_all_sent_tracking_pixels: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in sent email tracking pixel list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter | [optional] 
 **size** | **int**| Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_email**
> SentEmailDto get_sent_email(id => $id)

Get sent email receipt

### Example 
```perl
use Data::Dumper;
use MailSlurp::SentEmailsControllerApi;
my $api_instance = MailSlurp::SentEmailsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | id

eval { 
    my $result = $api_instance->get_sent_email(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->get_sent_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| id | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_email_html_content**
> string get_sent_email_html_content(id => $id)

Get sent email HTML content

### Example 
```perl
use Data::Dumper;
use MailSlurp::SentEmailsControllerApi;
my $api_instance = MailSlurp::SentEmailsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | id

eval { 
    my $result = $api_instance->get_sent_email_html_content(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->get_sent_email_html_content: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| id | 

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_email_tracking_pixels**
> PageTrackingPixelProjection get_sent_email_tracking_pixels(id => $id, page => $page, search_filter => $search_filter, size => $size, sort => $sort)

Get all tracking pixels for a sent email in paginated form

### Example 
```perl
use Data::Dumper;
use MailSlurp::SentEmailsControllerApi;
my $api_instance = MailSlurp::SentEmailsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | id
my $page = 0; # int | Optional page index in sent email tracking pixel list pagination
my $search_filter = "search_filter_example"; # string | Optional search filter
my $size = 20; # int | Optional page size in sent email tracking pixel list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_sent_email_tracking_pixels(id => $id, page => $page, search_filter => $search_filter, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->get_sent_email_tracking_pixels: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| id | 
 **page** | **int**| Optional page index in sent email tracking pixel list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter | [optional] 
 **size** | **int**| Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_emails**
> PageSentEmailProjection get_sent_emails(inbox_id => $inbox_id, page => $page, search_filter => $search_filter, size => $size, sort => $sort)

Get all sent emails in paginated form

### Example 
```perl
use Data::Dumper;
use MailSlurp::SentEmailsControllerApi;
my $api_instance = MailSlurp::SentEmailsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Optional inboxId to filter sender of sent emails by
my $page = 0; # int | Optional page index in inbox sent email list pagination
my $search_filter = "search_filter_example"; # string | Optional search filter
my $size = 20; # int | Optional page size in inbox sent email list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_sent_emails(inbox_id => $inbox_id, page => $page, search_filter => $search_filter, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->get_sent_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **int**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter | [optional] 
 **size** | **int**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_organization_emails**
> PageSentEmailProjection get_sent_organization_emails(inbox_id => $inbox_id, page => $page, search_filter => $search_filter, size => $size, sort => $sort)

Get all sent organization emails in paginated form

### Example 
```perl
use Data::Dumper;
use MailSlurp::SentEmailsControllerApi;
my $api_instance = MailSlurp::SentEmailsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Optional inboxId to filter sender of sent emails by
my $page = 0; # int | Optional page index in sent email list pagination
my $search_filter = "search_filter_example"; # string | Optional search filter
my $size = 20; # int | Optional page size in sent email list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_sent_organization_emails(inbox_id => $inbox_id, page => $page, search_filter => $search_filter, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->get_sent_organization_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **int**| Optional page index in sent email list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter | [optional] 
 **size** | **int**| Optional page size in sent email list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

