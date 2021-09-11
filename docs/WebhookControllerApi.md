# MailSlurp::WebhookControllerApi

## Load the API package
```perl
use MailSlurp::Object::WebhookControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook**](WebhookControllerApi#create_webhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
[**delete_webhook**](WebhookControllerApi#delete_webhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
[**get_all_webhook_results**](WebhookControllerApi#get_all_webhook_results) | **GET** /webhooks/results | Get results for all webhooks
[**get_all_webhooks**](WebhookControllerApi#get_all_webhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
[**get_inbox_webhooks_paginated**](WebhookControllerApi#get_inbox_webhooks_paginated) | **GET** /inboxes/{inboxId}/webhooks/paginated | Get paginated webhooks for an Inbox
[**get_json_schema_for_webhook_payload**](WebhookControllerApi#get_json_schema_for_webhook_payload) | **POST** /webhooks/{webhookId}/schema | Get JSON Schema definition for webhook payload
[**get_test_webhook_payload**](WebhookControllerApi#get_test_webhook_payload) | **GET** /webhooks/test | Get test webhook payload example. Response content depends on eventName passed. Uses &#x60;EMAIL_RECEIVED&#x60; as default.
[**get_test_webhook_payload_email_opened**](WebhookControllerApi#get_test_webhook_payload_email_opened) | **GET** /webhooks/test/email-opened-payload | Get webhook test payload for email opened event
[**get_test_webhook_payload_email_read**](WebhookControllerApi#get_test_webhook_payload_email_read) | **GET** /webhooks/test/email-read-payload | Get webhook test payload for email opened event
[**get_test_webhook_payload_for_webhook**](WebhookControllerApi#get_test_webhook_payload_for_webhook) | **POST** /webhooks/{webhookId}/example | Get example payload for webhook
[**get_test_webhook_payload_new_attachment**](WebhookControllerApi#get_test_webhook_payload_new_attachment) | **GET** /webhooks/test/new-attachment-payload | Get webhook test payload for new attachment event
[**get_test_webhook_payload_new_contact**](WebhookControllerApi#get_test_webhook_payload_new_contact) | **GET** /webhooks/test/new-contact-payload | Get webhook test payload for new contact event
[**get_test_webhook_payload_new_email**](WebhookControllerApi#get_test_webhook_payload_new_email) | **GET** /webhooks/test/new-email-payload | Get webhook test payload for new email event
[**get_webhook**](WebhookControllerApi#get_webhook) | **GET** /webhooks/{webhookId} | Get a webhook for an Inbox
[**get_webhook_result**](WebhookControllerApi#get_webhook_result) | **GET** /webhooks/results/{webhookResultId} | Get a webhook result for a webhook
[**get_webhook_results**](WebhookControllerApi#get_webhook_results) | **GET** /webhooks/{webhookId}/results | Get a webhook results for a webhook
[**get_webhooks**](WebhookControllerApi#get_webhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all webhooks for an Inbox
[**redrive_webhook_result**](WebhookControllerApi#redrive_webhook_result) | **POST** /webhooks/results/{webhookResultId}/redrive | Get a webhook result and try to resend the original webhook payload
[**send_test_data**](WebhookControllerApi#send_test_data) | **POST** /webhooks/{webhookId}/test | Send webhook test data


# **create_webhook**
> WebhookDto create_webhook(inbox_id => $inbox_id, webhook_options => $webhook_options)

Attach a WebHook URL to an inbox

Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | inboxId
my $webhook_options = MailSlurp::Object::CreateWebhookOptions->new(); # CreateWebhookOptions | webhookOptions

eval { 
    my $result = $api_instance->create_webhook(inbox_id => $inbox_id, webhook_options => $webhook_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->create_webhook: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| inboxId | 
 **webhook_options** | [**CreateWebhookOptions**](CreateWebhookOptions)| webhookOptions | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_webhook**
> delete_webhook(inbox_id => $inbox_id, webhook_id => $webhook_id)

Delete and disable a Webhook for an Inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | inboxId
my $webhook_id = null; # string | webhookId

eval { 
    $api_instance->delete_webhook(inbox_id => $inbox_id, webhook_id => $webhook_id);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->delete_webhook: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| inboxId | 
 **webhook_id** | [**string**]()| webhookId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_webhook_results**
> PageWebhookResult get_all_webhook_results(before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort)

Get results for all webhooks

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $page = 0; # int | Optional page index in list pagination
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_all_webhook_results(before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_all_webhook_results: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageWebhookResult**](PageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_webhooks**
> PageWebhookProjection get_all_webhooks(before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort)

List Webhooks Paginated

List webhooks in paginated form. Allows for page index, page size, and sort direction.

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $page = 0; # int | Optional page index in list pagination
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $size = 20; # int | Optional page size for paginated result list.
my $sort = 'DESC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_all_webhooks(before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_all_webhooks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **int**| Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;DESC&#39;]

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_webhooks_paginated**
> PageWebhookProjection get_inbox_webhooks_paginated(inbox_id => $inbox_id, before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort)

Get paginated webhooks for an Inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | inboxId
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $page = 0; # int | Optional page index in list pagination
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_inbox_webhooks_paginated(inbox_id => $inbox_id, before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_inbox_webhooks_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| inboxId | 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_json_schema_for_webhook_payload**
> JSONSchemaDto get_json_schema_for_webhook_payload(webhook_id => $webhook_id)

Get JSON Schema definition for webhook payload

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $webhook_id = null; # string | webhookId

eval { 
    my $result = $api_instance->get_json_schema_for_webhook_payload(webhook_id => $webhook_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_json_schema_for_webhook_payload: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**string**]()| webhookId | 

### Return type

[**JSONSchemaDto**](JSONSchemaDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_test_webhook_payload**
> AbstractWebhookPayload get_test_webhook_payload(event_name => $event_name)

Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $event_name = "event_name_example"; # string | eventName

eval { 
    my $result = $api_instance->get_test_webhook_payload(event_name => $event_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_test_webhook_payload: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_name** | **string**| eventName | [optional] 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_test_webhook_payload_email_opened**
> WebhookEmailOpenedPayload get_test_webhook_payload_email_opened()

Get webhook test payload for email opened event

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_test_webhook_payload_email_opened();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_test_webhook_payload_email_opened: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookEmailOpenedPayload**](WebhookEmailOpenedPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_test_webhook_payload_email_read**
> WebhookEmailReadPayload get_test_webhook_payload_email_read()

Get webhook test payload for email opened event

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_test_webhook_payload_email_read();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_test_webhook_payload_email_read: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookEmailReadPayload**](WebhookEmailReadPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_test_webhook_payload_for_webhook**
> AbstractWebhookPayload get_test_webhook_payload_for_webhook(webhook_id => $webhook_id)

Get example payload for webhook

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $webhook_id = null; # string | webhookId

eval { 
    my $result = $api_instance->get_test_webhook_payload_for_webhook(webhook_id => $webhook_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_test_webhook_payload_for_webhook: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**string**]()| webhookId | 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_test_webhook_payload_new_attachment**
> WebhookNewAttachmentPayload get_test_webhook_payload_new_attachment()

Get webhook test payload for new attachment event

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_test_webhook_payload_new_attachment();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_test_webhook_payload_new_attachment: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookNewAttachmentPayload**](WebhookNewAttachmentPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_test_webhook_payload_new_contact**
> WebhookNewContactPayload get_test_webhook_payload_new_contact()

Get webhook test payload for new contact event

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_test_webhook_payload_new_contact();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_test_webhook_payload_new_contact: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookNewContactPayload**](WebhookNewContactPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_test_webhook_payload_new_email**
> WebhookNewEmailPayload get_test_webhook_payload_new_email()

Get webhook test payload for new email event

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_test_webhook_payload_new_email();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_test_webhook_payload_new_email: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookNewEmailPayload**](WebhookNewEmailPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_webhook**
> WebhookDto get_webhook(webhook_id => $webhook_id)

Get a webhook for an Inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $webhook_id = null; # string | webhookId

eval { 
    my $result = $api_instance->get_webhook(webhook_id => $webhook_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_webhook: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**string**]()| webhookId | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_webhook_result**
> WebhookResultDto get_webhook_result(webhook_result_id => $webhook_result_id)

Get a webhook result for a webhook

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $webhook_result_id = null; # string | Webhook Result ID

eval { 
    my $result = $api_instance->get_webhook_result(webhook_result_id => $webhook_result_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_webhook_result: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_result_id** | [**string**]()| Webhook Result ID | 

### Return type

[**WebhookResultDto**](WebhookResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_webhook_results**
> PageWebhookResult get_webhook_results(webhook_id => $webhook_id, before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort)

Get a webhook results for a webhook

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $webhook_id = null; # string | ID of webhook to get results for
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $page = 0; # int | Optional page index in list pagination
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_webhook_results(webhook_id => $webhook_id, before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_webhook_results: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**string**]()| ID of webhook to get results for | 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageWebhookResult**](PageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_webhooks**
> ARRAY[WebhookDto] get_webhooks(inbox_id => $inbox_id)

Get all webhooks for an Inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | inboxId

eval { 
    my $result = $api_instance->get_webhooks(inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_webhooks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| inboxId | 

### Return type

[**ARRAY[WebhookDto]**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **redrive_webhook_result**
> WebhookRedriveResult redrive_webhook_result(webhook_result_id => $webhook_result_id)

Get a webhook result and try to resend the original webhook payload

Allows you to resend a webhook payload that was already sent. Webhooks that fail are retried automatically for 24 hours and then put in a dead letter queue. You can retry results manually using this method.

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $webhook_result_id = null; # string | Webhook Result ID

eval { 
    my $result = $api_instance->redrive_webhook_result(webhook_result_id => $webhook_result_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->redrive_webhook_result: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_result_id** | [**string**]()| Webhook Result ID | 

### Return type

[**WebhookRedriveResult**](WebhookRedriveResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_test_data**
> WebhookTestResult send_test_data(webhook_id => $webhook_id)

Send webhook test data

### Example 
```perl
use Data::Dumper;
use MailSlurp::WebhookControllerApi;
my $api_instance = MailSlurp::WebhookControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $webhook_id = null; # string | webhookId

eval { 
    my $result = $api_instance->send_test_data(webhook_id => $webhook_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->send_test_data: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**string**]()| webhookId | 

### Return type

[**WebhookTestResult**](WebhookTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

