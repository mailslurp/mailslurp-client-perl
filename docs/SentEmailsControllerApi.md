# MailSlurp::SentEmailsControllerApi

## Load the API package
```perl
use MailSlurp::Object::SentEmailsControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_all_sent_emails**](SentEmailsControllerApi#delete_all_sent_emails) | **DELETE** /sent | Delete all sent email receipts
[**delete_sent_email**](SentEmailsControllerApi#delete_sent_email) | **DELETE** /sent/{id} | Delete sent email receipt
[**get_all_sent_tracking_pixels**](SentEmailsControllerApi#get_all_sent_tracking_pixels) | **GET** /sent/tracking-pixels | 
[**get_raw_sent_email_contents**](SentEmailsControllerApi#get_raw_sent_email_contents) | **GET** /sent/{emailId}/raw | Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
[**get_raw_sent_email_json**](SentEmailsControllerApi#get_raw_sent_email_json) | **GET** /sent/{emailId}/raw/json | Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
[**get_sent_delivery_status**](SentEmailsControllerApi#get_sent_delivery_status) | **GET** /sent/delivery-status/{deliveryId} | 
[**get_sent_delivery_statuses**](SentEmailsControllerApi#get_sent_delivery_statuses) | **GET** /sent/delivery-status | 
[**get_sent_delivery_statuses_by_sent_id**](SentEmailsControllerApi#get_sent_delivery_statuses_by_sent_id) | **GET** /sent/{sentId}/delivery-status | 
[**get_sent_email**](SentEmailsControllerApi#get_sent_email) | **GET** /sent/{id} | Get sent email receipt
[**get_sent_email_html_content**](SentEmailsControllerApi#get_sent_email_html_content) | **GET** /sent/{id}/html | Get sent email HTML content
[**get_sent_email_preview_ur_ls**](SentEmailsControllerApi#get_sent_email_preview_ur_ls) | **GET** /sent/{id}/urls | Get sent email URL for viewing in browser or downloading
[**get_sent_email_tracking_pixels**](SentEmailsControllerApi#get_sent_email_tracking_pixels) | **GET** /sent/{id}/tracking-pixels | 
[**get_sent_emails**](SentEmailsControllerApi#get_sent_emails) | **GET** /sent | Get all sent emails in paginated form
[**get_sent_emails_with_queue_results**](SentEmailsControllerApi#get_sent_emails_with_queue_results) | **GET** /sent/queue-results | Get results of email sent with queues in paginated form
[**get_sent_organization_emails**](SentEmailsControllerApi#get_sent_organization_emails) | **GET** /sent/organization | 
[**wait_for_delivery_statuses**](SentEmailsControllerApi#wait_for_delivery_statuses) | **GET** /sent/delivery-status/wait-for | 


# **delete_all_sent_emails**
> delete_all_sent_emails()

Delete all sent email receipts

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


eval { 
    $api_instance->delete_all_sent_emails();
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->delete_all_sent_emails: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_sent_email**
> delete_sent_email(id => $id)

Delete sent email receipt

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

my $id = null; # string | 

eval { 
    $api_instance->delete_sent_email(id => $id);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->delete_sent_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_sent_tracking_pixels**
> PageTrackingPixelProjection get_all_sent_tracking_pixels(page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before)



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
my $size = 20; # int | Optional page size in sent email tracking pixel list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_all_sent_tracking_pixels(page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before);
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
 **size** | **int**| Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_raw_sent_email_contents**
> string get_raw_sent_email_contents(email_id => $email_id)

Get raw sent email string. Returns unparsed raw SMTP message with headers and body.

Returns a raw, unparsed, and unprocessed sent email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawSentEmailJson endpoint

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

my $email_id = null; # string | ID of email

eval { 
    my $result = $api_instance->get_raw_sent_email_contents(email_id => $email_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->get_raw_sent_email_contents: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email | 

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_raw_sent_email_json**
> RawEmailJson get_raw_sent_email_json(email_id => $email_id)

Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.

Returns a raw, unparsed, and unprocessed sent email wrapped in a JSON response object for easier handling when compared with the getRawSentEmail text/plain response

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

my $email_id = null; # string | ID of email

eval { 
    my $result = $api_instance->get_raw_sent_email_json(email_id => $email_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->get_raw_sent_email_json: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email | 

### Return type

[**RawEmailJson**](RawEmailJson)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_delivery_status**
> DeliveryStatusDto get_sent_delivery_status(delivery_id => $delivery_id)



Get a sent email delivery status

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

my $delivery_id = null; # string | 

eval { 
    my $result = $api_instance->get_sent_delivery_status(delivery_id => $delivery_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->get_sent_delivery_status: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_id** | [**string**]()|  | 

### Return type

[**DeliveryStatusDto**](DeliveryStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_delivery_statuses**
> PageDeliveryStatus get_sent_delivery_statuses(page => $page, size => $size, sort => $sort, since => $since, before => $before)



Get all sent email delivery statuses

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

my $page = 0; # int | Optional page index in delivery status list pagination
my $size = 20; # int | Optional page size in delivery status list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_sent_delivery_statuses(page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->get_sent_delivery_statuses: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in delivery status list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in delivery status list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageDeliveryStatus**](PageDeliveryStatus)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_delivery_statuses_by_sent_id**
> PageDeliveryStatus get_sent_delivery_statuses_by_sent_id(sent_id => $sent_id, page => $page, size => $size, sort => $sort, since => $since, before => $before)



Get all sent email delivery statuses

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

my $sent_id = null; # string | 
my $page = 0; # int | Optional page index in delivery status list pagination
my $size = 20; # int | Optional page size in delivery status list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_sent_delivery_statuses_by_sent_id(sent_id => $sent_id, page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->get_sent_delivery_statuses_by_sent_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sent_id** | [**string**]()|  | 
 **page** | **int**| Optional page index in delivery status list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in delivery status list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageDeliveryStatus**](PageDeliveryStatus)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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

my $id = null; # string | 

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
 **id** | [**string**]()|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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

my $id = null; # string | 

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
 **id** | [**string**]()|  | 

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_email_preview_ur_ls**
> EmailPreviewUrls get_sent_email_preview_ur_ls(id => $id)

Get sent email URL for viewing in browser or downloading

Get a list of URLs for sent email content as text/html or raw SMTP message for viewing the message in a browser.

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

my $id = null; # string | 

eval { 
    my $result = $api_instance->get_sent_email_preview_ur_ls(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->get_sent_email_preview_ur_ls: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

[**EmailPreviewUrls**](EmailPreviewUrls)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_email_tracking_pixels**
> PageTrackingPixelProjection get_sent_email_tracking_pixels(id => $id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before)



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

my $id = null; # string | 
my $page = 0; # int | Optional page index in sent email tracking pixel list pagination
my $size = 20; # int | Optional page size in sent email tracking pixel list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_sent_email_tracking_pixels(id => $id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->get_sent_email_tracking_pixels: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 
 **page** | **int**| Optional page index in sent email tracking pixel list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_emails**
> PageSentEmailProjection get_sent_emails(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before)

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
my $size = 20; # int | Optional page size in inbox sent email list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_sent_emails(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before);
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
 **size** | **int**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_emails_with_queue_results**
> PageSentEmailWithQueueProjection get_sent_emails_with_queue_results(page => $page, size => $size, sort => $sort, since => $since, before => $before)

Get results of email sent with queues in paginated form

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

my $page = 0; # int | Optional page index in inbox sent email list pagination
my $size = 20; # int | Optional page size in inbox sent email list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_sent_emails_with_queue_results(page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->get_sent_emails_with_queue_results: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageSentEmailWithQueueProjection**](PageSentEmailWithQueueProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_sent_organization_emails**
> PageSentEmailProjection get_sent_organization_emails(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before)



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
my $size = 20; # int | Optional page size in sent email list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_sent_organization_emails(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before);
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
 **size** | **int**| Optional page size in sent email list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **wait_for_delivery_statuses**
> DeliveryStatusDto wait_for_delivery_statuses(sent_id => $sent_id, inbox_id => $inbox_id, timeout => $timeout, index => $index, since => $since, before => $before)



Wait for delivery statuses

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

my $sent_id = null; # string | Optional sent email ID filter
my $inbox_id = null; # string | Optional inbox ID filter
my $timeout = 789; # int | Optional timeout milliseconds
my $index = 56; # int | Zero based index of the delivery status to wait for. If 1 delivery status already and you want to wait for the 2nd pass index=1
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->wait_for_delivery_statuses(sent_id => $sent_id, inbox_id => $inbox_id, timeout => $timeout, index => $index, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SentEmailsControllerApi->wait_for_delivery_statuses: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sent_id** | [**string**]()| Optional sent email ID filter | [optional] 
 **inbox_id** | [**string**]()| Optional inbox ID filter | [optional] 
 **timeout** | **int**| Optional timeout milliseconds | [optional] 
 **index** | **int**| Zero based index of the delivery status to wait for. If 1 delivery status already and you want to wait for the 2nd pass index&#x3D;1 | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**DeliveryStatusDto**](DeliveryStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

