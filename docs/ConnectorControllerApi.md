# MailSlurp::ConnectorControllerApi

## Load the API package
```perl
use MailSlurp::Object::ConnectorControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_connector**](ConnectorControllerApi#create_connector) | **POST** /connectors | Create an inbox connector
[**create_connector_imap_connection**](ConnectorControllerApi#create_connector_imap_connection) | **POST** /connectors/{id}/imap | Create an inbox connector IMAP connection
[**create_connector_smtp_connection**](ConnectorControllerApi#create_connector_smtp_connection) | **POST** /connectors/{id}/smtp | Create an inbox connector SMTP connection
[**create_connector_sync_settings**](ConnectorControllerApi#create_connector_sync_settings) | **POST** /connectors/{id}/sync-settings | Create an inbox connector sync settings
[**create_connector_with_options**](ConnectorControllerApi#create_connector_with_options) | **POST** /connectors/withOptions | Create an inbox connector with options
[**delete_all_connector**](ConnectorControllerApi#delete_all_connector) | **DELETE** /connectors | Delete all inbox connectors
[**delete_connector**](ConnectorControllerApi#delete_connector) | **DELETE** /connectors/{id} | Delete an inbox connector
[**delete_connector_imap_connection**](ConnectorControllerApi#delete_connector_imap_connection) | **DELETE** /connectors/{id}/imap | Delete an inbox connector IMAP connection
[**delete_connector_smtp_connection**](ConnectorControllerApi#delete_connector_smtp_connection) | **DELETE** /connectors/{id}/smtp | Delete an inbox connector SMTP connection
[**delete_connector_sync_settings**](ConnectorControllerApi#delete_connector_sync_settings) | **DELETE** /connectors/{id}/sync-settings | Create an inbox connector sync settings
[**get_all_connector_events**](ConnectorControllerApi#get_all_connector_events) | **GET** /connectors/events | Get all inbox connector events
[**get_connector**](ConnectorControllerApi#get_connector) | **GET** /connectors/{id} | Get an inbox connector
[**get_connector_by_email_address**](ConnectorControllerApi#get_connector_by_email_address) | **GET** /connectors/by-email-address | Get connector by email address
[**get_connector_by_inbox_id**](ConnectorControllerApi#get_connector_by_inbox_id) | **GET** /connectors/by-inbox-id | Get connector by inbox ID
[**get_connector_by_name**](ConnectorControllerApi#get_connector_by_name) | **GET** /connectors/by-name | Get connector by name
[**get_connector_event**](ConnectorControllerApi#get_connector_event) | **GET** /connectors/events/{id} | Get an inbox connector event
[**get_connector_events**](ConnectorControllerApi#get_connector_events) | **GET** /connectors/{id}/events | Get an inbox connector events
[**get_connector_imap_connection**](ConnectorControllerApi#get_connector_imap_connection) | **GET** /connectors/{id}/imap | Get an inbox connector IMAP connection
[**get_connector_provider_settings**](ConnectorControllerApi#get_connector_provider_settings) | **GET** /connectors/provider-settings | Get SMTP and IMAP connection settings for common mail providers
[**get_connector_smtp_connection**](ConnectorControllerApi#get_connector_smtp_connection) | **GET** /connectors/{id}/smtp | Get an inbox connector SMTP connection
[**get_connector_sync_settings**](ConnectorControllerApi#get_connector_sync_settings) | **GET** /connectors/{id}/sync-settings | Get an inbox connector sync settings
[**get_connectors**](ConnectorControllerApi#get_connectors) | **GET** /connectors | Get inbox connectors
[**send_email_from_connector**](ConnectorControllerApi#send_email_from_connector) | **POST** /connectors/{id}/send | Send from an inbox connector
[**sync_connector**](ConnectorControllerApi#sync_connector) | **POST** /connectors/{id}/sync | Sync an inbox connector
[**test_connector_imap_connection**](ConnectorControllerApi#test_connector_imap_connection) | **POST** /connectors/{id}/imap/test | Test an inbox connector IMAP connection
[**test_connector_imap_connection_options**](ConnectorControllerApi#test_connector_imap_connection_options) | **POST** /connectors/connections/imap/test | Test an inbox connector IMAP connection options
[**test_connector_smtp_connection**](ConnectorControllerApi#test_connector_smtp_connection) | **POST** /connectors/{id}/smtp/test | Test an inbox connector SMTP connection
[**test_connector_smtp_connection_options**](ConnectorControllerApi#test_connector_smtp_connection_options) | **POST** /connectors/connections/smtp/test | Test an inbox connector SMTP connection options
[**update_connector**](ConnectorControllerApi#update_connector) | **PUT** /connectors/{id} | Update an inbox connector
[**update_connector_imap_connection**](ConnectorControllerApi#update_connector_imap_connection) | **PATCH** /connectors/{id}/imap | Update an inbox connector IMAP connection
[**update_connector_smtp_connection**](ConnectorControllerApi#update_connector_smtp_connection) | **PATCH** /connectors/{id}/smtp | Update an inbox connector SMTP connection


# **create_connector**
> ConnectorDto create_connector(create_connector_options => $create_connector_options, inbox_id => $inbox_id)

Create an inbox connector

Sync emails between external mailboxes and MailSlurp inboxes

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_connector_options = MailSlurp::Object::CreateConnectorOptions->new(); # CreateConnectorOptions | 
my $inbox_id = null; # string | Optional inbox ID to associate with the connector

eval { 
    my $result = $api_instance->create_connector(create_connector_options => $create_connector_options, inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->create_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_connector_options** | [**CreateConnectorOptions**](CreateConnectorOptions)|  | 
 **inbox_id** | [**string**]()| Optional inbox ID to associate with the connector | [optional] 

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_connector_imap_connection**
> ConnectorImapConnectionDto create_connector_imap_connection(id => $id, create_connector_imap_connection_options => $create_connector_imap_connection_options)

Create an inbox connector IMAP connection

Allows the reading of emails in an external mailbox and syncing to a MailSlurp inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 
my $create_connector_imap_connection_options = MailSlurp::Object::CreateConnectorImapConnectionOptions->new(); # CreateConnectorImapConnectionOptions | 

eval { 
    my $result = $api_instance->create_connector_imap_connection(id => $id, create_connector_imap_connection_options => $create_connector_imap_connection_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->create_connector_imap_connection: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 
 **create_connector_imap_connection_options** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions)|  | 

### Return type

[**ConnectorImapConnectionDto**](ConnectorImapConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_connector_smtp_connection**
> ConnectorSmtpConnectionDto create_connector_smtp_connection(id => $id, create_connector_smtp_connection_options => $create_connector_smtp_connection_options)

Create an inbox connector SMTP connection

Allows sending via connector and email is routed to connected inbox and sent via SMTP

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 
my $create_connector_smtp_connection_options = MailSlurp::Object::CreateConnectorSmtpConnectionOptions->new(); # CreateConnectorSmtpConnectionOptions | 

eval { 
    my $result = $api_instance->create_connector_smtp_connection(id => $id, create_connector_smtp_connection_options => $create_connector_smtp_connection_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->create_connector_smtp_connection: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 
 **create_connector_smtp_connection_options** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions)|  | 

### Return type

[**ConnectorSmtpConnectionDto**](ConnectorSmtpConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_connector_sync_settings**
> ConnectorSyncSettingsDto create_connector_sync_settings(id => $id, create_connector_sync_settings_options => $create_connector_sync_settings_options)

Create an inbox connector sync settings

Configure automatic pull or emails from external inboxes using an interval or schedule

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 
my $create_connector_sync_settings_options = MailSlurp::Object::CreateConnectorSyncSettingsOptions->new(); # CreateConnectorSyncSettingsOptions | 

eval { 
    my $result = $api_instance->create_connector_sync_settings(id => $id, create_connector_sync_settings_options => $create_connector_sync_settings_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->create_connector_sync_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 
 **create_connector_sync_settings_options** | [**CreateConnectorSyncSettingsOptions**](CreateConnectorSyncSettingsOptions)|  | 

### Return type

[**ConnectorSyncSettingsDto**](ConnectorSyncSettingsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_connector_with_options**
> ConnectorDto create_connector_with_options(create_connector_with_options => $create_connector_with_options, inbox_id => $inbox_id)

Create an inbox connector with options

Sync emails between external mailboxes and MailSlurp inboxes

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_connector_with_options = MailSlurp::Object::CreateConnectorWithOptions->new(); # CreateConnectorWithOptions | 
my $inbox_id = null; # string | Optional inbox ID to associate with the connector

eval { 
    my $result = $api_instance->create_connector_with_options(create_connector_with_options => $create_connector_with_options, inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->create_connector_with_options: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_connector_with_options** | [**CreateConnectorWithOptions**](CreateConnectorWithOptions)|  | 
 **inbox_id** | [**string**]()| Optional inbox ID to associate with the connector | [optional] 

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_all_connector**
> delete_all_connector()

Delete all inbox connectors

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    $api_instance->delete_all_connector();
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->delete_all_connector: $@\n";
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

# **delete_connector**
> delete_connector(id => $id)

Delete an inbox connector

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    $api_instance->delete_connector(id => $id);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->delete_connector: $@\n";
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

# **delete_connector_imap_connection**
> delete_connector_imap_connection(id => $id)

Delete an inbox connector IMAP connection

Delete IMAP connection for external inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    $api_instance->delete_connector_imap_connection(id => $id);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->delete_connector_imap_connection: $@\n";
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

# **delete_connector_smtp_connection**
> delete_connector_smtp_connection(id => $id)

Delete an inbox connector SMTP connection

Delete SMTP connection for external inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    $api_instance->delete_connector_smtp_connection(id => $id);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->delete_connector_smtp_connection: $@\n";
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

# **delete_connector_sync_settings**
> delete_connector_sync_settings(id => $id)

Create an inbox connector sync settings

Configure automatic pull or emails from external inboxes using an interval or schedule

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    $api_instance->delete_connector_sync_settings(id => $id);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->delete_connector_sync_settings: $@\n";
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

# **get_all_connector_events**
> PageConnectorEvents get_all_connector_events(id => $id, page => $page, size => $size, sort => $sort, since => $since, before => $before, event_type => $event_type)

Get all inbox connector events

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | Optional connector ID
my $page = 0; # int | Optional page index in connector list pagination
my $size = 20; # int | Optional page size in connector list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $event_type = "event_type_example"; # string | Filter by event type

eval { 
    my $result = $api_instance->get_all_connector_events(id => $id, page => $page, size => $size, sort => $sort, since => $since, before => $before, event_type => $event_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->get_all_connector_events: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| Optional connector ID | [optional] 
 **page** | **int**| Optional page index in connector list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in connector list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **event_type** | **string**| Filter by event type | [optional] 

### Return type

[**PageConnectorEvents**](PageConnectorEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_connector**
> ConnectorDto get_connector(id => $id)

Get an inbox connector

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    my $result = $api_instance->get_connector(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->get_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_connector_by_email_address**
> OptionalConnectorDto get_connector_by_email_address(email_address => $email_address)

Get connector by email address

Find an inbox connector by email address

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_address = "email_address_example"; # string | Email address to search for connector by

eval { 
    my $result = $api_instance->get_connector_by_email_address(email_address => $email_address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->get_connector_by_email_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **string**| Email address to search for connector by | 

### Return type

[**OptionalConnectorDto**](OptionalConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_connector_by_inbox_id**
> OptionalConnectorDto get_connector_by_inbox_id(inbox_id => $inbox_id)

Get connector by inbox ID

Find an inbox connector by inbox ID

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Inbox ID to search for connector by

eval { 
    my $result = $api_instance->get_connector_by_inbox_id(inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->get_connector_by_inbox_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Inbox ID to search for connector by | 

### Return type

[**OptionalConnectorDto**](OptionalConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_connector_by_name**
> OptionalConnectorDto get_connector_by_name(name => $name)

Get connector by name

Find an inbox connector by name

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $name = "name_example"; # string | Name to search for connector by

eval { 
    my $result = $api_instance->get_connector_by_name(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->get_connector_by_name: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name to search for connector by | 

### Return type

[**OptionalConnectorDto**](OptionalConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_connector_event**
> ConnectorEventDto get_connector_event(id => $id)

Get an inbox connector event

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    my $result = $api_instance->get_connector_event(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->get_connector_event: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

[**ConnectorEventDto**](ConnectorEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_connector_events**
> PageConnectorEvents get_connector_events(id => $id, page => $page, size => $size, sort => $sort, since => $since, before => $before, event_type => $event_type)

Get an inbox connector events

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 
my $page = 0; # int | Optional page index in connector list pagination
my $size = 20; # int | Optional page size in connector list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $event_type = "event_type_example"; # string | Filter by event type

eval { 
    my $result = $api_instance->get_connector_events(id => $id, page => $page, size => $size, sort => $sort, since => $since, before => $before, event_type => $event_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->get_connector_events: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 
 **page** | **int**| Optional page index in connector list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in connector list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **event_type** | **string**| Filter by event type | [optional] 

### Return type

[**PageConnectorEvents**](PageConnectorEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_connector_imap_connection**
> OptionalConnectorImapConnectionDto get_connector_imap_connection(id => $id)

Get an inbox connector IMAP connection

Get IMAP connection for external inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    my $result = $api_instance->get_connector_imap_connection(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->get_connector_imap_connection: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

[**OptionalConnectorImapConnectionDto**](OptionalConnectorImapConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_connector_provider_settings**
> ConnectorProviderSettingsDto get_connector_provider_settings()

Get SMTP and IMAP connection settings for common mail providers

Get common mail provider SMTP and IMAP connection settings

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_connector_provider_settings();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->get_connector_provider_settings: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConnectorProviderSettingsDto**](ConnectorProviderSettingsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_connector_smtp_connection**
> OptionalConnectorSmtpConnectionDto get_connector_smtp_connection(id => $id)

Get an inbox connector SMTP connection

Get SMTP connection for external inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    my $result = $api_instance->get_connector_smtp_connection(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->get_connector_smtp_connection: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

[**OptionalConnectorSmtpConnectionDto**](OptionalConnectorSmtpConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_connector_sync_settings**
> OptionalConnectorSyncSettingsDto get_connector_sync_settings(id => $id)

Get an inbox connector sync settings

Get sync settings for connection with external inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    my $result = $api_instance->get_connector_sync_settings(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->get_connector_sync_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

[**OptionalConnectorSyncSettingsDto**](OptionalConnectorSyncSettingsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_connectors**
> PageConnector get_connectors(page => $page, size => $size, sort => $sort, since => $since, before => $before)

Get inbox connectors

List inbox connectors that sync external emails to MailSlurp inboxes

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index in connector list pagination
my $size = 20; # int | Optional page size in connector list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_connectors(page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->get_connectors: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in connector list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in connector list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageConnector**](PageConnector)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_email_from_connector**
> SentEmailDto send_email_from_connector(id => $id, send_email_options => $send_email_options, use_fallback => $use_fallback)

Send from an inbox connector

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 
my $send_email_options = MailSlurp::Object::SendEmailOptions->new(); # SendEmailOptions | 
my $use_fallback = null; # boolean | 

eval { 
    my $result = $api_instance->send_email_from_connector(id => $id, send_email_options => $send_email_options, use_fallback => $use_fallback);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->send_email_from_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 
 **use_fallback** | **boolean**|  | [optional] 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sync_connector**
> ConnectorSyncRequestResult sync_connector(id => $id, since => $since, folder => $folder, logging => $logging)

Sync an inbox connector

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Date to request emails since
my $folder = "folder_example"; # string | Which folder to sync emails with
my $logging = null; # boolean | Enable or disable logging for the sync operation

eval { 
    my $result = $api_instance->sync_connector(id => $id, since => $since, folder => $folder, logging => $logging);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->sync_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 
 **since** | **DateTime**| Date to request emails since | [optional] 
 **folder** | **string**| Which folder to sync emails with | [optional] 
 **logging** | **boolean**| Enable or disable logging for the sync operation | [optional] 

### Return type

[**ConnectorSyncRequestResult**](ConnectorSyncRequestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_connector_imap_connection**
> ConnectorImapConnectionTestResult test_connector_imap_connection(id => $id, create_connector_imap_connection_options => $create_connector_imap_connection_options)

Test an inbox connector IMAP connection

Test the IMAP connection for a connector

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 
my $create_connector_imap_connection_options = MailSlurp::Object::CreateConnectorImapConnectionOptions->new(); # CreateConnectorImapConnectionOptions | 

eval { 
    my $result = $api_instance->test_connector_imap_connection(id => $id, create_connector_imap_connection_options => $create_connector_imap_connection_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->test_connector_imap_connection: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 
 **create_connector_imap_connection_options** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions)|  | [optional] 

### Return type

[**ConnectorImapConnectionTestResult**](ConnectorImapConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_connector_imap_connection_options**
> ConnectorImapConnectionTestResult test_connector_imap_connection_options(create_connector_imap_connection_options => $create_connector_imap_connection_options)

Test an inbox connector IMAP connection options

Test the IMAP connection options for a connector

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_connector_imap_connection_options = MailSlurp::Object::CreateConnectorImapConnectionOptions->new(); # CreateConnectorImapConnectionOptions | 

eval { 
    my $result = $api_instance->test_connector_imap_connection_options(create_connector_imap_connection_options => $create_connector_imap_connection_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->test_connector_imap_connection_options: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_connector_imap_connection_options** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions)|  | 

### Return type

[**ConnectorImapConnectionTestResult**](ConnectorImapConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_connector_smtp_connection**
> ConnectorSmtpConnectionTestResult test_connector_smtp_connection(id => $id, create_connector_smtp_connection_options => $create_connector_smtp_connection_options)

Test an inbox connector SMTP connection

Test the SMTP connection for a connector

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 
my $create_connector_smtp_connection_options = MailSlurp::Object::CreateConnectorSmtpConnectionOptions->new(); # CreateConnectorSmtpConnectionOptions | 

eval { 
    my $result = $api_instance->test_connector_smtp_connection(id => $id, create_connector_smtp_connection_options => $create_connector_smtp_connection_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->test_connector_smtp_connection: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 
 **create_connector_smtp_connection_options** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions)|  | [optional] 

### Return type

[**ConnectorSmtpConnectionTestResult**](ConnectorSmtpConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_connector_smtp_connection_options**
> ConnectorSmtpConnectionTestResult test_connector_smtp_connection_options(create_connector_smtp_connection_options => $create_connector_smtp_connection_options)

Test an inbox connector SMTP connection options

Test the SMTP connection options for a connector

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_connector_smtp_connection_options = MailSlurp::Object::CreateConnectorSmtpConnectionOptions->new(); # CreateConnectorSmtpConnectionOptions | 

eval { 
    my $result = $api_instance->test_connector_smtp_connection_options(create_connector_smtp_connection_options => $create_connector_smtp_connection_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->test_connector_smtp_connection_options: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_connector_smtp_connection_options** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions)|  | 

### Return type

[**ConnectorSmtpConnectionTestResult**](ConnectorSmtpConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_connector**
> ConnectorDto update_connector(id => $id, create_connector_options => $create_connector_options)

Update an inbox connector

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 
my $create_connector_options = MailSlurp::Object::CreateConnectorOptions->new(); # CreateConnectorOptions | 

eval { 
    my $result = $api_instance->update_connector(id => $id, create_connector_options => $create_connector_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->update_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 
 **create_connector_options** | [**CreateConnectorOptions**](CreateConnectorOptions)|  | 

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_connector_imap_connection**
> ConnectorImapConnectionDto update_connector_imap_connection(id => $id, create_connector_imap_connection_options => $create_connector_imap_connection_options)

Update an inbox connector IMAP connection

Update IMAP connection for external inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 
my $create_connector_imap_connection_options = MailSlurp::Object::CreateConnectorImapConnectionOptions->new(); # CreateConnectorImapConnectionOptions | 

eval { 
    my $result = $api_instance->update_connector_imap_connection(id => $id, create_connector_imap_connection_options => $create_connector_imap_connection_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->update_connector_imap_connection: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 
 **create_connector_imap_connection_options** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions)|  | 

### Return type

[**ConnectorImapConnectionDto**](ConnectorImapConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_connector_smtp_connection**
> ConnectorSmtpConnectionDto update_connector_smtp_connection(id => $id, create_connector_smtp_connection_options => $create_connector_smtp_connection_options)

Update an inbox connector SMTP connection

Update SMTP connection for external inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::ConnectorControllerApi;
my $api_instance = MailSlurp::ConnectorControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 
my $create_connector_smtp_connection_options = MailSlurp::Object::CreateConnectorSmtpConnectionOptions->new(); # CreateConnectorSmtpConnectionOptions | 

eval { 
    my $result = $api_instance->update_connector_smtp_connection(id => $id, create_connector_smtp_connection_options => $create_connector_smtp_connection_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->update_connector_smtp_connection: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 
 **create_connector_smtp_connection_options** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions)|  | 

### Return type

[**ConnectorSmtpConnectionDto**](ConnectorSmtpConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

