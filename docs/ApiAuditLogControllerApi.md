# MailSlurp::ApiAuditLogControllerApi

## Load the API package
```perl
use MailSlurp::Object::ApiAuditLogControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_audit_log_by_event_id**](ApiAuditLogControllerApi#get_audit_log_by_event_id) | **GET** /audit-logs/{eventId} | 
[**get_audit_logs**](ApiAuditLogControllerApi#get_audit_logs) | **GET** /audit-logs | 
[**search_audit_logs**](ApiAuditLogControllerApi#search_audit_logs) | **POST** /audit-logs/search | 


# **get_audit_log_by_event_id**
> AuditLogEventDto get_audit_log_by_event_id(event_id => $event_id, since => $since, before => $before)



### Example 
```perl
use Data::Dumper;
use MailSlurp::ApiAuditLogControllerApi;
my $api_instance = MailSlurp::ApiAuditLogControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $event_id = "event_id_example"; # string | 
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 

eval { 
    my $result = $api_instance->get_audit_log_by_event_id(event_id => $event_id, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApiAuditLogControllerApi->get_audit_log_by_event_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_id** | **string**|  | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 

### Return type

[**AuditLogEventDto**](AuditLogEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_audit_logs**
> AuditLogPageDto get_audit_logs(since => $since, before => $before, action => $action, user_id => $user_id, actor_user_id => $actor_user_id, target_user_id => $target_user_id, resource_type => $resource_type, resource_id => $resource_id, outcome => $outcome, request_id => $request_id, ip_address => $ip_address, page_size => $page_size, cursor => $cursor)



### Example 
```perl
use Data::Dumper;
use MailSlurp::ApiAuditLogControllerApi;
my $api_instance = MailSlurp::ApiAuditLogControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $action = "action_example"; # string | 
my $user_id = null; # string | 
my $actor_user_id = null; # string | 
my $target_user_id = null; # string | 
my $resource_type = "resource_type_example"; # string | 
my $resource_id = "resource_id_example"; # string | 
my $outcome = "outcome_example"; # string | 
my $request_id = "request_id_example"; # string | 
my $ip_address = "ip_address_example"; # string | 
my $page_size = 56; # int | 
my $cursor = "cursor_example"; # string | 

eval { 
    my $result = $api_instance->get_audit_logs(since => $since, before => $before, action => $action, user_id => $user_id, actor_user_id => $actor_user_id, target_user_id => $target_user_id, resource_type => $resource_type, resource_id => $resource_id, outcome => $outcome, request_id => $request_id, ip_address => $ip_address, page_size => $page_size, cursor => $cursor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApiAuditLogControllerApi->get_audit_logs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **action** | **string**|  | [optional] 
 **user_id** | [**string**]()|  | [optional] 
 **actor_user_id** | [**string**]()|  | [optional] 
 **target_user_id** | [**string**]()|  | [optional] 
 **resource_type** | **string**|  | [optional] 
 **resource_id** | **string**|  | [optional] 
 **outcome** | **string**|  | [optional] 
 **request_id** | **string**|  | [optional] 
 **ip_address** | **string**|  | [optional] 
 **page_size** | **int**|  | [optional] 
 **cursor** | **string**|  | [optional] 

### Return type

[**AuditLogPageDto**](AuditLogPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **search_audit_logs**
> AuditLogPageDto search_audit_logs(audit_log_search_options => $audit_log_search_options)



### Example 
```perl
use Data::Dumper;
use MailSlurp::ApiAuditLogControllerApi;
my $api_instance = MailSlurp::ApiAuditLogControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $audit_log_search_options = MailSlurp::Object::AuditLogSearchOptions->new(); # AuditLogSearchOptions | 

eval { 
    my $result = $api_instance->search_audit_logs(audit_log_search_options => $audit_log_search_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApiAuditLogControllerApi->search_audit_logs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **audit_log_search_options** | [**AuditLogSearchOptions**](AuditLogSearchOptions)|  | 

### Return type

[**AuditLogPageDto**](AuditLogPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

