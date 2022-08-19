# MailSlurp::WebhookControllerApi

## Load the API package
```perl
use MailSlurp::Object::WebhookControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_account_webhook**](WebhookControllerApi#create_account_webhook) | **POST** /webhooks | Attach a WebHook URL to an inbox
[**create_webhook**](WebhookControllerApi#create_webhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
[**create_webhook_for_phone_number**](WebhookControllerApi#create_webhook_for_phone_number) | **POST** /phone/numbers/{phoneNumberId}/webhooks | Attach a WebHook URL to a phone number
[**delete_all_webhooks**](WebhookControllerApi#delete_all_webhooks) | **DELETE** /webhooks | Delete all webhooks
[**delete_webhook**](WebhookControllerApi#delete_webhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
[**delete_webhook_by_id**](WebhookControllerApi#delete_webhook_by_id) | **DELETE** /webhooks/{webhookId} | Delete a webhook
[**get_all_webhook_results**](WebhookControllerApi#get_all_webhook_results) | **GET** /webhooks/results | Get results for all webhooks
[**get_all_webhooks**](WebhookControllerApi#get_all_webhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
[**get_inbox_webhooks_paginated**](WebhookControllerApi#get_inbox_webhooks_paginated) | **GET** /inboxes/{inboxId}/webhooks/paginated | Get paginated webhooks for an Inbox
[**get_json_schema_for_webhook_event**](WebhookControllerApi#get_json_schema_for_webhook_event) | **POST** /webhooks/schema | 
[**get_json_schema_for_webhook_payload**](WebhookControllerApi#get_json_schema_for_webhook_payload) | **POST** /webhooks/{webhookId}/schema | 
[**get_phone_number_webhooks_paginated**](WebhookControllerApi#get_phone_number_webhooks_paginated) | **GET** /phone/numbers/{phoneId}/webhooks/paginated | Get paginated webhooks for a phone number
[**get_test_webhook_payload**](WebhookControllerApi#get_test_webhook_payload) | **GET** /webhooks/test | 
[**get_test_webhook_payload_bounce**](WebhookControllerApi#get_test_webhook_payload_bounce) | **GET** /webhooks/test/email-bounce-payload | 
[**get_test_webhook_payload_bounce_recipient**](WebhookControllerApi#get_test_webhook_payload_bounce_recipient) | **GET** /webhooks/test/email-bounce-recipient-payload | 
[**get_test_webhook_payload_delivery_status**](WebhookControllerApi#get_test_webhook_payload_delivery_status) | **GET** /webhooks/test/delivery-status-payload | Get webhook test payload for delivery status event
[**get_test_webhook_payload_email_opened**](WebhookControllerApi#get_test_webhook_payload_email_opened) | **GET** /webhooks/test/email-opened-payload | 
[**get_test_webhook_payload_email_read**](WebhookControllerApi#get_test_webhook_payload_email_read) | **GET** /webhooks/test/email-read-payload | 
[**get_test_webhook_payload_for_webhook**](WebhookControllerApi#get_test_webhook_payload_for_webhook) | **POST** /webhooks/{webhookId}/example | 
[**get_test_webhook_payload_new_attachment**](WebhookControllerApi#get_test_webhook_payload_new_attachment) | **GET** /webhooks/test/new-attachment-payload | Get webhook test payload for new attachment event
[**get_test_webhook_payload_new_contact**](WebhookControllerApi#get_test_webhook_payload_new_contact) | **GET** /webhooks/test/new-contact-payload | Get webhook test payload for new contact event
[**get_test_webhook_payload_new_email**](WebhookControllerApi#get_test_webhook_payload_new_email) | **GET** /webhooks/test/new-email-payload | Get webhook test payload for new email event
[**get_test_webhook_payload_new_sms**](WebhookControllerApi#get_test_webhook_payload_new_sms) | **GET** /webhooks/test/new-sms-payload | Get webhook test payload for new sms event
[**get_webhook**](WebhookControllerApi#get_webhook) | **GET** /webhooks/{webhookId} | Get a webhook
[**get_webhook_result**](WebhookControllerApi#get_webhook_result) | **GET** /webhooks/results/{webhookResultId} | Get a webhook result for a webhook
[**get_webhook_results**](WebhookControllerApi#get_webhook_results) | **GET** /webhooks/{webhookId}/results | Get a webhook results for a webhook
[**get_webhook_results_unseen_error_count**](WebhookControllerApi#get_webhook_results_unseen_error_count) | **GET** /webhooks/results/unseen-count | Get count of unseen webhook results with error status
[**get_webhooks**](WebhookControllerApi#get_webhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all webhooks for an Inbox
[**redrive_webhook_result**](WebhookControllerApi#redrive_webhook_result) | **POST** /webhooks/results/{webhookResultId}/redrive | Get a webhook result and try to resend the original webhook payload
[**send_test_data**](WebhookControllerApi#send_test_data) | **POST** /webhooks/{webhookId}/test | Send webhook test data
[**update_webhook_headers**](WebhookControllerApi#update_webhook_headers) | **PUT** /webhooks/{webhookId}/headers | Update a webhook request headers
[**verify_webhook_signature**](WebhookControllerApi#verify_webhook_signature) | **POST** /webhooks/verify | Verify a webhook payload signature


# **create_account_webhook**
> WebhookDto create_account_webhook(create_webhook_options => $create_webhook_options)

Attach a WebHook URL to an inbox

Get notified of account level events such as bounce and bounce recipient.

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

my $create_webhook_options = MailSlurp::Object::CreateWebhookOptions->new(); # CreateWebhookOptions | 

eval { 
    my $result = $api_instance->create_account_webhook(create_webhook_options => $create_webhook_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->create_account_webhook: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_webhook_options** | [**CreateWebhookOptions**](CreateWebhookOptions)|  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_webhook**
> WebhookDto create_webhook(inbox_id => $inbox_id, create_webhook_options => $create_webhook_options)

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

my $inbox_id = null; # string | 
my $create_webhook_options = MailSlurp::Object::CreateWebhookOptions->new(); # CreateWebhookOptions | 

eval { 
    my $result = $api_instance->create_webhook(inbox_id => $inbox_id, create_webhook_options => $create_webhook_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->create_webhook: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()|  | 
 **create_webhook_options** | [**CreateWebhookOptions**](CreateWebhookOptions)|  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_webhook_for_phone_number**
> WebhookDto create_webhook_for_phone_number(phone_number_id => $phone_number_id, create_webhook_options => $create_webhook_options)

Attach a WebHook URL to a phone number

Get notified whenever a phone number receives an SMS via a WebHook URL.

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

my $phone_number_id = null; # string | 
my $create_webhook_options = MailSlurp::Object::CreateWebhookOptions->new(); # CreateWebhookOptions | 

eval { 
    my $result = $api_instance->create_webhook_for_phone_number(phone_number_id => $phone_number_id, create_webhook_options => $create_webhook_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->create_webhook_for_phone_number: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**string**]()|  | 
 **create_webhook_options** | [**CreateWebhookOptions**](CreateWebhookOptions)|  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_all_webhooks**
> delete_all_webhooks(before => $before)

Delete all webhooks

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

my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | before

eval { 
    $api_instance->delete_all_webhooks(before => $before);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->delete_all_webhooks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| before | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

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

my $inbox_id = null; # string | 
my $webhook_id = null; # string | 

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
 **inbox_id** | [**string**]()|  | 
 **webhook_id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_webhook_by_id**
> delete_webhook_by_id(webhook_id => $webhook_id)

Delete a webhook

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

my $webhook_id = null; # string | 

eval { 
    $api_instance->delete_webhook_by_id(webhook_id => $webhook_id);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->delete_webhook_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_webhook_results**
> PageWebhookResult get_all_webhook_results(page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before, unseen_only => $unseen_only)

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

my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $unseen_only = null; # boolean | Filter for unseen exceptions only

eval { 
    my $result = $api_instance->get_all_webhook_results(page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before, unseen_only => $unseen_only);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_all_webhook_results: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **unseen_only** | **boolean**| Filter for unseen exceptions only | [optional] 

### Return type

[**PageWebhookResult**](PageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_webhooks**
> PageWebhookProjection get_all_webhooks(page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, inbox_id => $inbox_id, phone_id => $phone_id, before => $before)

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

my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size for paginated result list.
my $sort = 'DESC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $inbox_id = null; # string | Filter by inboxId
my $phone_id = null; # string | Filter by phoneId
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_all_webhooks(page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, inbox_id => $inbox_id, phone_id => $phone_id, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_all_webhooks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;DESC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **inbox_id** | [**string**]()| Filter by inboxId | [optional] 
 **phone_id** | [**string**]()| Filter by phoneId | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_webhooks_paginated**
> PageWebhookProjection get_inbox_webhooks_paginated(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before)

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

my $inbox_id = null; # string | 
my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_inbox_webhooks_paginated(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_inbox_webhooks_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()|  | 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_json_schema_for_webhook_event**
> JSONSchemaDto get_json_schema_for_webhook_event(event => $event)



Get JSON Schema definition for webhook payload by event

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

my $event = "event_example"; # string | 

eval { 
    my $result = $api_instance->get_json_schema_for_webhook_event(event => $event);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_json_schema_for_webhook_event: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event** | **string**|  | 

### Return type

[**JSONSchemaDto**](JSONSchemaDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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

my $webhook_id = null; # string | 

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
 **webhook_id** | [**string**]()|  | 

### Return type

[**JSONSchemaDto**](JSONSchemaDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_phone_number_webhooks_paginated**
> PageWebhookProjection get_phone_number_webhooks_paginated(phone_id => $phone_id, page => $page, size => $size, sort => $sort, since => $since, before => $before)

Get paginated webhooks for a phone number

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

my $phone_id = null; # string | 
my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_phone_number_webhooks_paginated(phone_id => $phone_id, page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_phone_number_webhooks_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_id** | [**string**]()|  | 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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

my $event_name = "event_name_example"; # string | 

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
 **event_name** | **string**|  | [optional] 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_test_webhook_payload_bounce**
> WebhookBouncePayload get_test_webhook_payload_bounce()



Get webhook test payload for bounce

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
    my $result = $api_instance->get_test_webhook_payload_bounce();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_test_webhook_payload_bounce: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookBouncePayload**](WebhookBouncePayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_test_webhook_payload_bounce_recipient**
> WebhookBounceRecipientPayload get_test_webhook_payload_bounce_recipient()



Get webhook test payload for bounce recipient

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
    my $result = $api_instance->get_test_webhook_payload_bounce_recipient();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_test_webhook_payload_bounce_recipient: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookBounceRecipientPayload**](WebhookBounceRecipientPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_test_webhook_payload_delivery_status**
> WebhookDeliveryStatusPayload get_test_webhook_payload_delivery_status()

Get webhook test payload for delivery status event

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
    my $result = $api_instance->get_test_webhook_payload_delivery_status();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_test_webhook_payload_delivery_status: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookDeliveryStatusPayload**](WebhookDeliveryStatusPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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
 - **Accept**: */*

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
 - **Accept**: */*

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

my $webhook_id = null; # string | 

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
 **webhook_id** | [**string**]()|  | 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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
 - **Accept**: */*

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
 - **Accept**: */*

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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_test_webhook_payload_new_sms**
> WebhookNewSmsPayload get_test_webhook_payload_new_sms()

Get webhook test payload for new sms event

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
    my $result = $api_instance->get_test_webhook_payload_new_sms();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_test_webhook_payload_new_sms: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookNewSmsPayload**](WebhookNewSmsPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_webhook**
> WebhookDto get_webhook(webhook_id => $webhook_id)

Get a webhook

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

my $webhook_id = null; # string | 

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
 **webhook_id** | [**string**]()|  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_webhook_results**
> PageWebhookResult get_webhook_results(webhook_id => $webhook_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before, unseen_only => $unseen_only)

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
my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $unseen_only = null; # boolean | Filter for unseen exceptions only

eval { 
    my $result = $api_instance->get_webhook_results(webhook_id => $webhook_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before, unseen_only => $unseen_only);
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
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **unseen_only** | **boolean**| Filter for unseen exceptions only | [optional] 

### Return type

[**PageWebhookResult**](PageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_webhook_results_unseen_error_count**
> UnseenErrorCountDto get_webhook_results_unseen_error_count()

Get count of unseen webhook results with error status

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
    my $result = $api_instance->get_webhook_results_unseen_error_count();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->get_webhook_results_unseen_error_count: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UnseenErrorCountDto**](UnseenErrorCountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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

my $inbox_id = null; # string | 

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
 **inbox_id** | [**string**]()|  | 

### Return type

[**ARRAY[WebhookDto]**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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
 - **Accept**: */*

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

my $webhook_id = null; # string | 

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
 **webhook_id** | [**string**]()|  | 

### Return type

[**WebhookTestResult**](WebhookTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_webhook_headers**
> WebhookDto update_webhook_headers(webhook_id => $webhook_id, webhook_headers => $webhook_headers)

Update a webhook request headers

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

my $webhook_id = null; # string | 
my $webhook_headers = MailSlurp::Object::WebhookHeaders->new(); # WebhookHeaders | 

eval { 
    my $result = $api_instance->update_webhook_headers(webhook_id => $webhook_id, webhook_headers => $webhook_headers);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->update_webhook_headers: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**string**]()|  | 
 **webhook_headers** | [**WebhookHeaders**](WebhookHeaders)|  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **verify_webhook_signature**
> VerifyWebhookSignatureResults verify_webhook_signature(verify_webhook_signature_options => $verify_webhook_signature_options)

Verify a webhook payload signature

Verify a webhook payload using the messageId and signature. This allows you to be sure that MailSlurp sent the payload and not another server.

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

my $verify_webhook_signature_options = MailSlurp::Object::VerifyWebhookSignatureOptions->new(); # VerifyWebhookSignatureOptions | 

eval { 
    my $result = $api_instance->verify_webhook_signature(verify_webhook_signature_options => $verify_webhook_signature_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebhookControllerApi->verify_webhook_signature: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verify_webhook_signature_options** | [**VerifyWebhookSignatureOptions**](VerifyWebhookSignatureOptions)|  | 

### Return type

[**VerifyWebhookSignatureResults**](VerifyWebhookSignatureResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

