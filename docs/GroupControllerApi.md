# MailSlurp::GroupControllerApi

## Load the API package
```perl
use MailSlurp::Object::GroupControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_contacts_to_group**](GroupControllerApi.md#add_contacts_to_group) | **PUT** /groups/{groupId}/contacts | Add contacts to a group
[**create_group**](GroupControllerApi.md#create_group) | **POST** /groups | Create a group
[**delete_group**](GroupControllerApi.md#delete_group) | **DELETE** /groups/{groupId} | Delete group
[**get_all_groups**](GroupControllerApi.md#get_all_groups) | **GET** /groups/paginated | Get all Contact Groups in paginated format
[**get_group**](GroupControllerApi.md#get_group) | **GET** /groups/{groupId} | Get group
[**get_group_with_contacts**](GroupControllerApi.md#get_group_with_contacts) | **GET** /groups/{groupId}/contacts | Get group and contacts belonging to it
[**get_group_with_contacts_paginated**](GroupControllerApi.md#get_group_with_contacts_paginated) | **GET** /groups/{groupId}/contacts-paginated | Get group and paginated contacts belonging to it
[**get_groups**](GroupControllerApi.md#get_groups) | **GET** /groups | Get all groups
[**remove_contacts_from_group**](GroupControllerApi.md#remove_contacts_from_group) | **DELETE** /groups/{groupId}/contacts | Remove contacts from a group


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
 **group_id** | [**string**](.md)| groupId | 
 **update_group_contacts_option** | [**UpdateGroupContacts**](UpdateGroupContacts.md)| updateGroupContactsOption | 

### Return type

[**GroupContactsDto**](GroupContactsDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **create_group_options** | [**CreateGroupOptions**](CreateGroupOptions.md)| createGroupOptions | 

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **group_id** | [**string**](.md)| groupId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_groups**
> PageGroupProjection get_all_groups(page => $page, size => $size, sort => $sort)

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

my $page = 0; # int | Optional page index in inbox list pagination
my $size = 20; # int | Optional page size in inbox list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_all_groups(page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupControllerApi->get_all_groups: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageGroupProjection**](PageGroupProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **group_id** | [**string**](.md)| groupId | 

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **group_id** | [**string**](.md)| groupId | 

### Return type

[**GroupContactsDto**](GroupContactsDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_with_contacts_paginated**
> PageContactProjection get_group_with_contacts_paginated(group_id => $group_id, page => $page, size => $size, sort => $sort)

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
my $page = 0; # int | Optional page index in group contact pagination
my $size = 20; # int | Optional page size in group contact pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_group_with_contacts_paginated(group_id => $group_id, page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupControllerApi->get_group_with_contacts_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | [**string**](.md)| groupId | 
 **page** | **int**| Optional page index in group contact pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in group contact pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageContactProjection**](PageContactProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

[**ARRAY[GroupProjection]**](GroupProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **group_id** | [**string**](.md)| groupId | 
 **update_group_contacts_option** | [**UpdateGroupContacts**](UpdateGroupContacts.md)| updateGroupContactsOption | 

### Return type

[**GroupContactsDto**](GroupContactsDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

