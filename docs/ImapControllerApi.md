# MailSlurp::ImapControllerApi

## Load the API package
```perl
use MailSlurp::Object::ImapControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imap_server_fetch**](ImapControllerApi#imap_server_fetch) | **POST** /imap/server/fetch | Fetch message in an inbox
[**imap_server_list**](ImapControllerApi#imap_server_list) | **POST** /imap/server/list | List messages in an inbox
[**imap_server_search**](ImapControllerApi#imap_server_search) | **POST** /imap/server/search | Search messages in an inbox
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

my $seq_num = 56; # int | 
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

