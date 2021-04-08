# MailSlurp::ContactControllerApi

## Load the API package
```perl
use MailSlurp::Object::ContactControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_contact**](ContactControllerApi.md#create_contact) | **POST** /contacts | Create a contact
[**delete_contact**](ContactControllerApi.md#delete_contact) | **DELETE** /contacts/{contactId} | Delete contact
[**get_all_contacts**](ContactControllerApi.md#get_all_contacts) | **GET** /contacts/paginated | Get all contacts
[**get_contact**](ContactControllerApi.md#get_contact) | **GET** /contacts/{contactId} | Get contact
[**get_contacts**](ContactControllerApi.md#get_contacts) | **GET** /contacts | Get all contacts


# **create_contact**
> ContactDto create_contact(create_contact_options => $create_contact_options)

Create a contact

### Example 
```perl
use Data::Dumper;
use MailSlurp::ContactControllerApi;
my $api_instance = MailSlurp::ContactControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_contact_options = MailSlurp::Object::CreateContactOptions->new(); # CreateContactOptions | createContactOptions

eval { 
    my $result = $api_instance->create_contact(create_contact_options => $create_contact_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactControllerApi->create_contact: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_contact_options** | [**CreateContactOptions**](CreateContactOptions.md)| createContactOptions | 

### Return type

[**ContactDto**](ContactDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_contact**
> delete_contact(contact_id => $contact_id)

Delete contact

### Example 
```perl
use Data::Dumper;
use MailSlurp::ContactControllerApi;
my $api_instance = MailSlurp::ContactControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $contact_id = null; # string | contactId

eval { 
    $api_instance->delete_contact(contact_id => $contact_id);
};
if ($@) {
    warn "Exception when calling ContactControllerApi->delete_contact: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | [**string**](.md)| contactId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_contacts**
> PageContactProjection get_all_contacts(page => $page, size => $size, sort => $sort)

Get all contacts

### Example 
```perl
use Data::Dumper;
use MailSlurp::ContactControllerApi;
my $api_instance = MailSlurp::ContactControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index in inbox list pagination
my $size = 20; # int | Optional page size in inbox list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_all_contacts(page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactControllerApi->get_all_contacts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageContactProjection**](PageContactProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_contact**
> ContactDto get_contact(contact_id => $contact_id)

Get contact

### Example 
```perl
use Data::Dumper;
use MailSlurp::ContactControllerApi;
my $api_instance = MailSlurp::ContactControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $contact_id = null; # string | contactId

eval { 
    my $result = $api_instance->get_contact(contact_id => $contact_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactControllerApi->get_contact: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | [**string**](.md)| contactId | 

### Return type

[**ContactDto**](ContactDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_contacts**
> ARRAY[ContactProjection] get_contacts()

Get all contacts

### Example 
```perl
use Data::Dumper;
use MailSlurp::ContactControllerApi;
my $api_instance = MailSlurp::ContactControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_contacts();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactControllerApi->get_contacts: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[ContactProjection]**](ContactProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

