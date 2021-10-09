# MailSlurp::GroupControllerApi

## Load the API package
```perl
use MailSlurp::Object::GroupControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_contacts_to_group**](GroupControllerApi#add_contacts_to_group) | **PUT** /groups/{groupId}/contacts | Add contacts to a group
[**create_group**](GroupControllerApi#create_group) | **POST** /groups | Create a group
[**delete_group**](GroupControllerApi#delete_group) | **DELETE** /groups/{groupId} | Delete group
[**get_all_groups**](GroupControllerApi#get_all_groups) | **GET** /groups/paginated | Get all Contact Groups in paginated format
[**get_group**](GroupControllerApi#get_group) | **GET** /groups/{groupId} | Get group
[**get_group_with_contacts**](GroupControllerApi#get_group_with_contacts) | **GET** /groups/{groupId}/contacts | Get group and contacts belonging to it
[**get_group_with_contacts_paginated**](GroupControllerApi#get_group_with_contacts_paginated) | **GET** /groups/{groupId}/contacts-paginated | Get group and paginated contacts belonging to it
[**get_groups**](GroupControllerApi#get_groups) | **GET** /groups | Get all groups
[**remove_contacts_from_group**](GroupControllerApi#remove_contacts_from_group) | **DELETE** /groups/{groupId}/contacts | Remove contacts from a group


# **add_contacts_to_group**
> GroupContactsDto add_contacts_to_group(group_id => $group_id, update_group_contacts_option => $update_group_contacts_option)

Add contacts to a group

### Example 
```perl
use Data::Dumper;
use MailSlurp::GroupControllerApi;
my $api_instance = MailSlurp::GroupControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $group_id = null; # string | groupId
my $update_group_contacts_option = MailSlurp::Object::UpdateGroupContacts->new(); # UpdateGroupContacts | updateGroupContactsOption

eval { 
    my $result = $api_instance->add_contacts_to_group(group_id => $group_id, update_group_contacts_option => $update_group_contacts_option);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupControllerApi->add_contacts_to_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | [**string**]()| groupId | 
 **update_group_contacts_option** | [**UpdateGroupContacts**](UpdateGroupContacts)| updateGroupContactsOption | 

### Return type

[**GroupContactsDto**](GroupContactsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_group**
> GroupDto create_group(create_group_options => $create_group_options)

Create a group

### Example 
```perl
use Data::Dumper;
use MailSlurp::GroupControllerApi;
my $api_instance = MailSlurp::GroupControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_group_options = MailSlurp::Object::CreateGroupOptions->new(); # CreateGroupOptions | createGroupOptions

eval { 
    my $result = $api_instance->create_group(create_group_options => $create_group_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupControllerApi->create_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_group_options** | [**CreateGroupOptions**](CreateGroupOptions)| createGroupOptions | 

### Return type

[**GroupDto**](GroupDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_group**
> delete_group(group_id => $group_id)

Delete group

### Example 
```perl
use Data::Dumper;
use MailSlurp::GroupControllerApi;
my $api_instance = MailSlurp::GroupControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $group_id = null; # string | groupId

eval { 
    $api_instance->delete_group(group_id => $group_id);
};
if ($@) {
    warn "Exception when calling GroupControllerApi->delete_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | [**string**]()| groupId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_groups**
> PageGroupProjection get_all_groups(before => $before, page => $page, since => $since, size => $size, sort => $sort)

Get all Contact Groups in paginated format

### Example 
```perl
use Data::Dumper;
use MailSlurp::GroupControllerApi;
my $api_instance = MailSlurp::GroupControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $page = 0; # int | Optional page index in list pagination
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_all_groups(before => $before, page => $page, since => $since, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupControllerApi->get_all_groups: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageGroupProjection**](PageGroupProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_group**
> GroupDto get_group(group_id => $group_id)

Get group

### Example 
```perl
use Data::Dumper;
use MailSlurp::GroupControllerApi;
my $api_instance = MailSlurp::GroupControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $group_id = null; # string | groupId

eval { 
    my $result = $api_instance->get_group(group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupControllerApi->get_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | [**string**]()| groupId | 

### Return type

[**GroupDto**](GroupDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_group_with_contacts**
> GroupContactsDto get_group_with_contacts(group_id => $group_id)

Get group and contacts belonging to it

### Example 
```perl
use Data::Dumper;
use MailSlurp::GroupControllerApi;
my $api_instance = MailSlurp::GroupControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $group_id = null; # string | groupId

eval { 
    my $result = $api_instance->get_group_with_contacts(group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupControllerApi->get_group_with_contacts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | [**string**]()| groupId | 

### Return type

[**GroupContactsDto**](GroupContactsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_group_with_contacts_paginated**
> PageContactProjection get_group_with_contacts_paginated(group_id => $group_id, before => $before, page => $page, since => $since, size => $size, sort => $sort)

Get group and paginated contacts belonging to it

### Example 
```perl
use Data::Dumper;
use MailSlurp::GroupControllerApi;
my $api_instance = MailSlurp::GroupControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $group_id = null; # string | groupId
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $page = 0; # int | Optional page index in group contact pagination
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $size = 20; # int | Optional page size in group contact pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_group_with_contacts_paginated(group_id => $group_id, before => $before, page => $page, since => $since, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupControllerApi->get_group_with_contacts_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | [**string**]()| groupId | 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **page** | **int**| Optional page index in group contact pagination | [optional] [default to 0]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **int**| Optional page size in group contact pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageContactProjection**](PageContactProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_groups**
> ARRAY[GroupProjection] get_groups()

Get all groups

### Example 
```perl
use Data::Dumper;
use MailSlurp::GroupControllerApi;
my $api_instance = MailSlurp::GroupControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_groups();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupControllerApi->get_groups: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[GroupProjection]**](GroupProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **remove_contacts_from_group**
> GroupContactsDto remove_contacts_from_group(group_id => $group_id, update_group_contacts_option => $update_group_contacts_option)

Remove contacts from a group

### Example 
```perl
use Data::Dumper;
use MailSlurp::GroupControllerApi;
my $api_instance = MailSlurp::GroupControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $group_id = null; # string | groupId
my $update_group_contacts_option = MailSlurp::Object::UpdateGroupContacts->new(); # UpdateGroupContacts | updateGroupContactsOption

eval { 
    my $result = $api_instance->remove_contacts_from_group(group_id => $group_id, update_group_contacts_option => $update_group_contacts_option);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupControllerApi->remove_contacts_from_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | [**string**]()| groupId | 
 **update_group_contacts_option** | [**UpdateGroupContacts**](UpdateGroupContacts)| updateGroupContactsOption | 

### Return type

[**GroupContactsDto**](GroupContactsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

