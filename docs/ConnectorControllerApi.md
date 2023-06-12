# MailSlurp::ConnectorControllerApi

## Load the API package
```perl
use MailSlurp::Object::ConnectorControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_connector**](ConnectorControllerApi#create_connector) | **POST** /connectors | Create an inbox connector
[**delete_connector**](ConnectorControllerApi#delete_connector) | **DELETE** /connectors/{id} | Delete an inbox connector
[**get_all_connector_sync_events**](ConnectorControllerApi#get_all_connector_sync_events) | **GET** /connectors/events | Get all inbox connector sync events
[**get_connector**](ConnectorControllerApi#get_connector) | **GET** /connectors/{id} | Get an inbox connector
[**get_connector_sync_event**](ConnectorControllerApi#get_connector_sync_event) | **GET** /connectors/events/{id} | Get an inbox connector sync event
[**get_connector_sync_events**](ConnectorControllerApi#get_connector_sync_events) | **GET** /connectors/{id}/events | Get an inbox connector sync events
[**get_connectors**](ConnectorControllerApi#get_connectors) | **GET** /connectors | Get inbox connectors
[**sync_connector**](ConnectorControllerApi#sync_connector) | **POST** /connectors/{id}/sync | Sync an inbox connector
[**update_connector**](ConnectorControllerApi#update_connector) | **PUT** /connectors/{id} | Update an inbox connector


# **create_connector**
> ConnectorDto create_connector(create_connector_options => $create_connector_options)

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

eval { 
    my $result = $api_instance->create_connector(create_connector_options => $create_connector_options);
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

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

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

# **get_all_connector_sync_events**
> PageConnectorSyncEvents get_all_connector_sync_events(page => $page, size => $size, sort => $sort, since => $since, before => $before)

Get all inbox connector sync events

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
    my $result = $api_instance->get_all_connector_sync_events(page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->get_all_connector_sync_events: $@\n";
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

[**PageConnectorSyncEvents**](PageConnectorSyncEvents)

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

# **get_connector_sync_event**
> ConnectorSyncEventDto get_connector_sync_event(id => $id)

Get an inbox connector sync event

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
    my $result = $api_instance->get_connector_sync_event(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->get_connector_sync_event: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

[**ConnectorSyncEventDto**](ConnectorSyncEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_connector_sync_events**
> PageConnectorSyncEvents get_connector_sync_events(id => $id, page => $page, size => $size, sort => $sort, since => $since, before => $before)

Get an inbox connector sync events

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

eval { 
    my $result = $api_instance->get_connector_sync_events(id => $id, page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorControllerApi->get_connector_sync_events: $@\n";
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

### Return type

[**PageConnectorSyncEvents**](PageConnectorSyncEvents)

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

# **sync_connector**
> ConnectorSyncRequestResult sync_connector(id => $id)

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

eval { 
    my $result = $api_instance->sync_connector(id => $id);
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

### Return type

[**ConnectorSyncRequestResult**](ConnectorSyncRequestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
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

