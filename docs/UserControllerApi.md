# MailSlurp::UserControllerApi

## Load the API package
```perl
use MailSlurp::Object::UserControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_entity_automations**](UserControllerApi#get_entity_automations) | **GET** /user/automations | 
[**get_entity_events**](UserControllerApi#get_entity_events) | **GET** /user/events | 
[**get_entity_favorites**](UserControllerApi#get_entity_favorites) | **GET** /user/favorites | 
[**get_json_property_as_string**](UserControllerApi#get_json_property_as_string) | **POST** /user/json/pluck | 
[**get_user_info**](UserControllerApi#get_user_info) | **GET** /user/info | 


# **get_entity_automations**
> PageEntityAutomationItems get_entity_automations(page => $page, size => $size, sort => $sort, since => $since, before => $before, inbox_id => $inbox_id, phone_id => $phone_id, filter => $filter)



### Example 
```perl
use Data::Dumper;
use MailSlurp::UserControllerApi;
my $api_instance = MailSlurp::UserControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index
my $size = 20; # int | Optional page size
my $sort = 'DESC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $inbox_id = null; # string | Optional inbox ID
my $phone_id = null; # string | Optional phone ID
my $filter = "filter_example"; # string | Optional automation type filter

eval { 
    my $result = $api_instance->get_entity_automations(page => $page, size => $size, sort => $sort, since => $since, before => $before, inbox_id => $inbox_id, phone_id => $phone_id, filter => $filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserControllerApi->get_entity_automations: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index | [optional] [default to 0]
 **size** | **int**| Optional page size | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;DESC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **inbox_id** | [**string**]()| Optional inbox ID | [optional] 
 **phone_id** | [**string**]()| Optional phone ID | [optional] 
 **filter** | **string**| Optional automation type filter | [optional] 

### Return type

[**PageEntityAutomationItems**](PageEntityAutomationItems)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_entity_events**
> PageEntityEventItems get_entity_events(page => $page, size => $size, sort => $sort, since => $since, before => $before, inbox_id => $inbox_id, email_id => $email_id, phone_id => $phone_id, sms_id => $sms_id, attachment_id => $attachment_id, filter => $filter)



### Example 
```perl
use Data::Dumper;
use MailSlurp::UserControllerApi;
my $api_instance = MailSlurp::UserControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index
my $size = 20; # int | Optional page size
my $sort = 'DESC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $inbox_id = null; # string | Optional inbox ID
my $email_id = null; # string | Optional email ID
my $phone_id = null; # string | Optional phone ID
my $sms_id = null; # string | Optional SMS ID
my $attachment_id = null; # string | Optional attachment ID
my $filter = "filter_example"; # string | Optional type filter

eval { 
    my $result = $api_instance->get_entity_events(page => $page, size => $size, sort => $sort, since => $since, before => $before, inbox_id => $inbox_id, email_id => $email_id, phone_id => $phone_id, sms_id => $sms_id, attachment_id => $attachment_id, filter => $filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserControllerApi->get_entity_events: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index | [optional] [default to 0]
 **size** | **int**| Optional page size | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;DESC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **inbox_id** | [**string**]()| Optional inbox ID | [optional] 
 **email_id** | [**string**]()| Optional email ID | [optional] 
 **phone_id** | [**string**]()| Optional phone ID | [optional] 
 **sms_id** | [**string**]()| Optional SMS ID | [optional] 
 **attachment_id** | [**string**]()| Optional attachment ID | [optional] 
 **filter** | **string**| Optional type filter | [optional] 

### Return type

[**PageEntityEventItems**](PageEntityEventItems)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_entity_favorites**
> PageEntityFavouriteItems get_entity_favorites(page => $page, size => $size, sort => $sort, since => $since, before => $before, filter => $filter)



### Example 
```perl
use Data::Dumper;
use MailSlurp::UserControllerApi;
my $api_instance = MailSlurp::UserControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index
my $size = 20; # int | Optional page size
my $sort = 'DESC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $filter = "filter_example"; # string | Optional type filter

eval { 
    my $result = $api_instance->get_entity_favorites(page => $page, size => $size, sort => $sort, since => $since, before => $before, filter => $filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserControllerApi->get_entity_favorites: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index | [optional] [default to 0]
 **size** | **int**| Optional page size | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;DESC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **filter** | **string**| Optional type filter | [optional] 

### Return type

[**PageEntityFavouriteItems**](PageEntityFavouriteItems)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_json_property_as_string**
> string get_json_property_as_string(property => $property, body => $body)



Utility function to extract properties from JSON objects in language where this is cumbersome.

### Example 
```perl
use Data::Dumper;
use MailSlurp::UserControllerApi;
my $api_instance = MailSlurp::UserControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $property = "property_example"; # string | JSON property name or dot separated path selector such as `a.b.c`
my $body = MailSlurp::Object::object->new(); # object | 

eval { 
    my $result = $api_instance->get_json_property_as_string(property => $property, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserControllerApi->get_json_property_as_string: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property** | **string**| JSON property name or dot separated path selector such as &#x60;a.b.c&#x60; | 
 **body** | **object**|  | 

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_user_info**
> UserInfoDto get_user_info()



Get account information for your user

### Example 
```perl
use Data::Dumper;
use MailSlurp::UserControllerApi;
my $api_instance = MailSlurp::UserControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_user_info();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserControllerApi->get_user_info: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserInfoDto**](UserInfoDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

