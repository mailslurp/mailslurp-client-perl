# MailSlurp::ContactControllerApi

## Load the API package
```perl
use MailSlurp::Object::ContactControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_contact**](ContactControllerApi#create_contact) | **POST** /contacts | Create a contact
[**delete_contact**](ContactControllerApi#delete_contact) | **DELETE** /contacts/{contactId} | Delete contact
[**get_all_contacts**](ContactControllerApi#get_all_contacts) | **GET** /contacts/paginated | Get all contacts
[**get_contact**](ContactControllerApi#get_contact) | **GET** /contacts/{contactId} | Get contact
[**get_contact_v_card**](ContactControllerApi#get_contact_v_card) | **GET** /contacts/{contactId}/download | Get contact vCard vcf file
[**get_contacts**](ContactControllerApi#get_contacts) | **GET** /contacts | Get all contacts


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

my $create_contact_options = MailSlurp::Object::CreateContactOptions->new(); # CreateContactOptions | 

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
 **create_contact_options** | [**CreateContactOptions**](CreateContactOptions)|  | 

### Return type

[**ContactDto**](ContactDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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

my $contact_id = null; # string | 

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
 **contact_id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_contacts**
> PageContactProjection get_all_contacts(page => $page, size => $size, sort => $sort, since => $since, before => $before)

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

my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_all_contacts(page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactControllerApi->get_all_contacts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageContactProjection**](PageContactProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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

my $contact_id = null; # string | 

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
 **contact_id** | [**string**]()|  | 

### Return type

[**ContactDto**](ContactDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_contact_v_card**
> ARRAY[string] get_contact_v_card(contact_id => $contact_id)

Get contact vCard vcf file

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

my $contact_id = null; # string | 

eval { 
    my $result = $api_instance->get_contact_v_card(contact_id => $contact_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactControllerApi->get_contact_v_card: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | [**string**]()|  | 

### Return type

**ARRAY[string]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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

[**ARRAY[ContactProjection]**](ContactProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

