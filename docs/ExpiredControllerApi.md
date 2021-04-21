# MailSlurp::ExpiredControllerApi

## Load the API package
```perl
use MailSlurp::Object::ExpiredControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_expiration_defaults**](ExpiredControllerApi#get_expiration_defaults) | **GET** /expired/defaults | Get default expiration settings
[**get_expired_inbox_by_inbox_id**](ExpiredControllerApi#get_expired_inbox_by_inbox_id) | **GET** /expired/inbox/{inboxId} | Get expired inbox record for a previously existing inbox
[**get_expired_inbox_record**](ExpiredControllerApi#get_expired_inbox_record) | **GET** /expired/{expiredId} | Get an expired inbox record
[**get_expired_inboxes**](ExpiredControllerApi#get_expired_inboxes) | **GET** /expired | List records of expired inboxes


# **get_expiration_defaults**
> ExpirationDefaults get_expiration_defaults()

Get default expiration settings

Return default times used for inbox expiration

### Example 
```perl
use Data::Dumper;
use MailSlurp::ExpiredControllerApi;
my $api_instance = MailSlurp::ExpiredControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_expiration_defaults();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExpiredControllerApi->get_expiration_defaults: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ExpirationDefaults**](ExpirationDefaults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_expired_inbox_by_inbox_id**
> ExpiredInboxDto get_expired_inbox_by_inbox_id(inbox_id => $inbox_id)

Get expired inbox record for a previously existing inbox

Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId

### Example 
```perl
use Data::Dumper;
use MailSlurp::ExpiredControllerApi;
my $api_instance = MailSlurp::ExpiredControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | ID of inbox you want to retrieve (not the inbox ID)

eval { 
    my $result = $api_instance->get_expired_inbox_by_inbox_id(inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExpiredControllerApi->get_expired_inbox_by_inbox_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of inbox you want to retrieve (not the inbox ID) | 

### Return type

[**ExpiredInboxDto**](ExpiredInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_expired_inbox_record**
> ExpiredInboxDto get_expired_inbox_record(expired_id => $expired_id)

Get an expired inbox record

Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties

### Example 
```perl
use Data::Dumper;
use MailSlurp::ExpiredControllerApi;
my $api_instance = MailSlurp::ExpiredControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $expired_id = null; # string | ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId)

eval { 
    my $result = $api_instance->get_expired_inbox_record(expired_id => $expired_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExpiredControllerApi->get_expired_inbox_record: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expired_id** | [**string**]()| ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId) | 

### Return type

[**ExpiredInboxDto**](ExpiredInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_expired_inboxes**
> PageExpiredInboxRecordProjection get_expired_inboxes(page => $page, size => $size, sort => $sort)

List records of expired inboxes

Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties

### Example 
```perl
use Data::Dumper;
use MailSlurp::ExpiredControllerApi;
my $api_instance = MailSlurp::ExpiredControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index in inbox sent email list pagination
my $size = 20; # int | Optional page size in inbox sent email list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_expired_inboxes(page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExpiredControllerApi->get_expired_inboxes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageExpiredInboxRecordProjection**](PageExpiredInboxRecordProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

