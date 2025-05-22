# MailSlurp::GuestPortalControllerApi

## Load the API package
```perl
use MailSlurp::Object::GuestPortalControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_guest_portal**](GuestPortalControllerApi#create_guest_portal) | **POST** /guest-portal | Create a portal page for your customers or clients to log into email accounts and view emails.
[**create_guest_portal_user**](GuestPortalControllerApi#create_guest_portal_user) | **POST** /guest-portal/{portalId}/user | Create a portal guest user
[**get_all_guest_portal_users**](GuestPortalControllerApi#get_all_guest_portal_users) | **GET** /guest-portal/user | Get all guest users for portal
[**get_guest_portal**](GuestPortalControllerApi#get_guest_portal) | **GET** /guest-portal/{portalId} | Get a client email portal
[**get_guest_portal_user**](GuestPortalControllerApi#get_guest_portal_user) | **GET** /guest-portal/{portalId}/user/{guestId} | Get guest user for portal
[**get_guest_portal_user_by_id**](GuestPortalControllerApi#get_guest_portal_user_by_id) | **GET** /guest-portal/user/{guestId} | Get guest user
[**get_guest_portal_users**](GuestPortalControllerApi#get_guest_portal_users) | **GET** /guest-portal/{portalId}/user | Get all guest users for portal
[**get_guest_portals**](GuestPortalControllerApi#get_guest_portals) | **GET** /guest-portal | Get guest portals


# **create_guest_portal**
> GuestPortalDto create_guest_portal(create_portal_options => $create_portal_options)

Create a portal page for your customers or clients to log into email accounts and view emails.

Create a guest login page for customers or clients to access assigned email addresses

### Example 
```perl
use Data::Dumper;
use MailSlurp::GuestPortalControllerApi;
my $api_instance = MailSlurp::GuestPortalControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_portal_options = MailSlurp::Object::CreatePortalOptions->new(); # CreatePortalOptions | 

eval { 
    my $result = $api_instance->create_guest_portal(create_portal_options => $create_portal_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GuestPortalControllerApi->create_guest_portal: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_portal_options** | [**CreatePortalOptions**](CreatePortalOptions)|  | 

### Return type

[**GuestPortalDto**](GuestPortalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_guest_portal_user**
> GuestPortalUserCreateDto create_guest_portal_user(portal_id => $portal_id, create_portal_user_options => $create_portal_user_options)

Create a portal guest user

Add customer to portal

### Example 
```perl
use Data::Dumper;
use MailSlurp::GuestPortalControllerApi;
my $api_instance = MailSlurp::GuestPortalControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $portal_id = null; # string | 
my $create_portal_user_options = MailSlurp::Object::CreatePortalUserOptions->new(); # CreatePortalUserOptions | 

eval { 
    my $result = $api_instance->create_guest_portal_user(portal_id => $portal_id, create_portal_user_options => $create_portal_user_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GuestPortalControllerApi->create_guest_portal_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portal_id** | [**string**]()|  | 
 **create_portal_user_options** | [**CreatePortalUserOptions**](CreatePortalUserOptions)|  | 

### Return type

[**GuestPortalUserCreateDto**](GuestPortalUserCreateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_guest_portal_users**
> PageGuestPortalUsers get_all_guest_portal_users(portal_id => $portal_id, search => $search, page => $page, size => $size, sort => $sort, since => $since, before => $before)

Get all guest users for portal

Get all customers for a portal

### Example 
```perl
use Data::Dumper;
use MailSlurp::GuestPortalControllerApi;
my $api_instance = MailSlurp::GuestPortalControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $portal_id = null; # string | Optional portal ID
my $search = "search_example"; # string | Optional search term
my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_all_guest_portal_users(portal_id => $portal_id, search => $search, page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GuestPortalControllerApi->get_all_guest_portal_users: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portal_id** | [**string**]()| Optional portal ID | [optional] 
 **search** | **string**| Optional search term | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageGuestPortalUsers**](PageGuestPortalUsers)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_guest_portal**
> GuestPortalDto get_guest_portal(portal_id => $portal_id)

Get a client email portal

Fetch a customer guest portal

### Example 
```perl
use Data::Dumper;
use MailSlurp::GuestPortalControllerApi;
my $api_instance = MailSlurp::GuestPortalControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $portal_id = null; # string | 

eval { 
    my $result = $api_instance->get_guest_portal(portal_id => $portal_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GuestPortalControllerApi->get_guest_portal: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portal_id** | [**string**]()|  | 

### Return type

[**GuestPortalDto**](GuestPortalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_guest_portal_user**
> GuestPortalUserDto get_guest_portal_user(portal_id => $portal_id, guest_id => $guest_id)

Get guest user for portal

Get customer for portal

### Example 
```perl
use Data::Dumper;
use MailSlurp::GuestPortalControllerApi;
my $api_instance = MailSlurp::GuestPortalControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $portal_id = null; # string | 
my $guest_id = null; # string | 

eval { 
    my $result = $api_instance->get_guest_portal_user(portal_id => $portal_id, guest_id => $guest_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GuestPortalControllerApi->get_guest_portal_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portal_id** | [**string**]()|  | 
 **guest_id** | [**string**]()|  | 

### Return type

[**GuestPortalUserDto**](GuestPortalUserDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_guest_portal_user_by_id**
> GuestPortalUserDto get_guest_portal_user_by_id(guest_id => $guest_id)

Get guest user

Get customer by ID

### Example 
```perl
use Data::Dumper;
use MailSlurp::GuestPortalControllerApi;
my $api_instance = MailSlurp::GuestPortalControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $guest_id = null; # string | 

eval { 
    my $result = $api_instance->get_guest_portal_user_by_id(guest_id => $guest_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GuestPortalControllerApi->get_guest_portal_user_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **guest_id** | [**string**]()|  | 

### Return type

[**GuestPortalUserDto**](GuestPortalUserDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_guest_portal_users**
> PageGuestPortalUsers get_guest_portal_users(portal_id => $portal_id, search => $search, page => $page, size => $size, sort => $sort, since => $since, before => $before)

Get all guest users for portal

Get customers for a portal

### Example 
```perl
use Data::Dumper;
use MailSlurp::GuestPortalControllerApi;
my $api_instance = MailSlurp::GuestPortalControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $portal_id = null; # string | 
my $search = "search_example"; # string | Optional search term
my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_guest_portal_users(portal_id => $portal_id, search => $search, page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GuestPortalControllerApi->get_guest_portal_users: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portal_id** | [**string**]()|  | 
 **search** | **string**| Optional search term | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageGuestPortalUsers**](PageGuestPortalUsers)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_guest_portals**
> ARRAY[GuestPortalDto] get_guest_portals()

Get guest portals

Get portals

### Example 
```perl
use Data::Dumper;
use MailSlurp::GuestPortalControllerApi;
my $api_instance = MailSlurp::GuestPortalControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_guest_portals();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GuestPortalControllerApi->get_guest_portals: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[GuestPortalDto]**](GuestPortalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

