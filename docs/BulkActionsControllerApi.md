# MailSlurp::BulkActionsControllerApi

## Load the API package
```perl
use MailSlurp::Object::BulkActionsControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_create_inboxes**](BulkActionsControllerApi#bulk_create_inboxes) | **POST** /bulk/inboxes | Bulk create Inboxes (email addresses)
[**bulk_delete_inboxes**](BulkActionsControllerApi#bulk_delete_inboxes) | **DELETE** /bulk/inboxes | Bulk Delete Inboxes
[**bulk_send_emails**](BulkActionsControllerApi#bulk_send_emails) | **POST** /bulk/send | Bulk Send Emails


# **bulk_create_inboxes**
> ARRAY[InboxDto] bulk_create_inboxes(count => $count)

Bulk create Inboxes (email addresses)

### Example 
```perl
use Data::Dumper;
use MailSlurp::BulkActionsControllerApi;
my $api_instance = MailSlurp::BulkActionsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $count = 56; # int | Number of inboxes to be created in bulk

eval { 
    my $result = $api_instance->bulk_create_inboxes(count => $count);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BulkActionsControllerApi->bulk_create_inboxes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **int**| Number of inboxes to be created in bulk | 

### Return type

[**ARRAY[InboxDto]**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **bulk_delete_inboxes**
> bulk_delete_inboxes(request_body => $request_body)

Bulk Delete Inboxes

### Example 
```perl
use Data::Dumper;
use MailSlurp::BulkActionsControllerApi;
my $api_instance = MailSlurp::BulkActionsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $request_body = [MailSlurp::Object::ARRAY[string]->new()]; # ARRAY[string] | 

eval { 
    $api_instance->bulk_delete_inboxes(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling BulkActionsControllerApi->bulk_delete_inboxes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **bulk_send_emails**
> bulk_send_emails(bulk_send_email_options => $bulk_send_email_options)

Bulk Send Emails

### Example 
```perl
use Data::Dumper;
use MailSlurp::BulkActionsControllerApi;
my $api_instance = MailSlurp::BulkActionsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $bulk_send_email_options = MailSlurp::Object::BulkSendEmailOptions->new(); # BulkSendEmailOptions | 

eval { 
    $api_instance->bulk_send_emails(bulk_send_email_options => $bulk_send_email_options);
};
if ($@) {
    warn "Exception when calling BulkActionsControllerApi->bulk_send_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulk_send_email_options** | [**BulkSendEmailOptions**](BulkSendEmailOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

