# MailSlurp::ImapControllerApi

## Load the API package
```perl
use MailSlurp::Object::ImapControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imap_server_fetch**](ImapControllerApi#imap_server_fetch) | **POST** /imap/server/fetch | Fetch message in an inbox
[**imap_server_get**](ImapControllerApi#imap_server_get) | **POST** /imap/server/get | Get a message by email ID
[**imap_server_list**](ImapControllerApi#imap_server_list) | **POST** /imap/server/list | List messages in an inbox
[**imap_server_mailbox**](ImapControllerApi#imap_server_mailbox) | **POST** /imap/server/mailbox | Create a new mailbox if possible
[**imap_server_search**](ImapControllerApi#imap_server_search) | **POST** /imap/server/search | Search messages in an inbox
[**imap_server_status**](ImapControllerApi#imap_server_status) | **POST** /imap/server/status | Get status for mailbox
[**imap_server_update_flags**](ImapControllerApi#imap_server_update_flags) | **POST** /imap/server/update-flags | 


# **imap_server_fetch**
> ImapServerFetchResult imap_server_fetch(seq_num => $seq_num, inbox_id => $inbox_id)

Fetch message in an inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::ImapControllerApi;
my $api_instance = MailSlurp::ImapControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $seq_num = 789; # int | 
my $inbox_id = null; # string | Inbox ID to search

eval { 
    my $result = $api_instance->imap_server_fetch(seq_num => $seq_num, inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ImapControllerApi->imap_server_fetch: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seq_num** | **int**|  | 
 **inbox_id** | [**string**]()| Inbox ID to search | [optional] 

### Return type

[**ImapServerFetchResult**](ImapServerFetchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imap_server_get**
> ImapServerGetResult imap_server_get(email_id => $email_id, inbox_id => $inbox_id)

Get a message by email ID

### Example 
```perl
use Data::Dumper;
use MailSlurp::ImapControllerApi;
my $api_instance = MailSlurp::ImapControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | Email ID to get
my $inbox_id = null; # string | Inbox ID to search

eval { 
    my $result = $api_instance->imap_server_get(email_id => $email_id, inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ImapControllerApi->imap_server_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| Email ID to get | 
 **inbox_id** | [**string**]()| Inbox ID to search | [optional] 

### Return type

[**ImapServerGetResult**](ImapServerGetResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imap_server_list**
> ImapServerListResult imap_server_list(imap_server_list_options => $imap_server_list_options, inbox_id => $inbox_id)

List messages in an inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::ImapControllerApi;
my $api_instance = MailSlurp::ImapControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $imap_server_list_options = MailSlurp::Object::ImapServerListOptions->new(); # ImapServerListOptions | 
my $inbox_id = null; # string | Inbox ID to list

eval { 
    my $result = $api_instance->imap_server_list(imap_server_list_options => $imap_server_list_options, inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ImapControllerApi->imap_server_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imap_server_list_options** | [**ImapServerListOptions**](ImapServerListOptions)|  | 
 **inbox_id** | [**string**]()| Inbox ID to list | [optional] 

### Return type

[**ImapServerListResult**](ImapServerListResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imap_server_mailbox**
> ImapServerMailboxResult imap_server_mailbox(name => $name)

Create a new mailbox if possible

### Example 
```perl
use Data::Dumper;
use MailSlurp::ImapControllerApi;
my $api_instance = MailSlurp::ImapControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $name = "name_example"; # string | Inbox email address to create

eval { 
    my $result = $api_instance->imap_server_mailbox(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ImapControllerApi->imap_server_mailbox: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Inbox email address to create | 

### Return type

[**ImapServerMailboxResult**](ImapServerMailboxResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imap_server_search**
> ImapServerSearchResult imap_server_search(imap_server_search_options => $imap_server_search_options, inbox_id => $inbox_id)

Search messages in an inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::ImapControllerApi;
my $api_instance = MailSlurp::ImapControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $imap_server_search_options = MailSlurp::Object::ImapServerSearchOptions->new(); # ImapServerSearchOptions | 
my $inbox_id = null; # string | Inbox ID to search

eval { 
    my $result = $api_instance->imap_server_search(imap_server_search_options => $imap_server_search_options, inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ImapControllerApi->imap_server_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imap_server_search_options** | [**ImapServerSearchOptions**](ImapServerSearchOptions)|  | 
 **inbox_id** | [**string**]()| Inbox ID to search | [optional] 

### Return type

[**ImapServerSearchResult**](ImapServerSearchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imap_server_status**
> ImapServerStatusResult imap_server_status(imap_server_status_options => $imap_server_status_options, inbox_id => $inbox_id)

Get status for mailbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::ImapControllerApi;
my $api_instance = MailSlurp::ImapControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $imap_server_status_options = MailSlurp::Object::ImapServerStatusOptions->new(); # ImapServerStatusOptions | 
my $inbox_id = null; # string | Inbox ID to list

eval { 
    my $result = $api_instance->imap_server_status(imap_server_status_options => $imap_server_status_options, inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ImapControllerApi->imap_server_status: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imap_server_status_options** | [**ImapServerStatusOptions**](ImapServerStatusOptions)|  | 
 **inbox_id** | [**string**]()| Inbox ID to list | [optional] 

### Return type

[**ImapServerStatusResult**](ImapServerStatusResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imap_server_update_flags**
> imap_server_update_flags(imap_update_flags_options => $imap_update_flags_options, inbox_id => $inbox_id)



Update message flags

### Example 
```perl
use Data::Dumper;
use MailSlurp::ImapControllerApi;
my $api_instance = MailSlurp::ImapControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $imap_update_flags_options = MailSlurp::Object::ImapUpdateFlagsOptions->new(); # ImapUpdateFlagsOptions | 
my $inbox_id = null; # string | 

eval { 
    $api_instance->imap_server_update_flags(imap_update_flags_options => $imap_update_flags_options, inbox_id => $inbox_id);
};
if ($@) {
    warn "Exception when calling ImapControllerApi->imap_server_update_flags: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imap_update_flags_options** | [**ImapUpdateFlagsOptions**](ImapUpdateFlagsOptions)|  | 
 **inbox_id** | [**string**]()|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

