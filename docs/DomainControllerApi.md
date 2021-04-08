# MailSlurp::DomainControllerApi

## Load the API package
```perl
use MailSlurp::Object::DomainControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_domain_wildcard_catch_all**](DomainControllerApi.md#add_domain_wildcard_catch_all) | **POST** /domains/{id}/wildcard | Add catch all wild card inbox to domain
[**create_domain**](DomainControllerApi.md#create_domain) | **POST** /domains | Create Domain
[**delete_domain**](DomainControllerApi.md#delete_domain) | **DELETE** /domains/{id} | Delete a domain
[**get_domain**](DomainControllerApi.md#get_domain) | **GET** /domains/{id} | Get a domain
[**get_domains**](DomainControllerApi.md#get_domains) | **GET** /domains | Get domains
[**update_domain**](DomainControllerApi.md#update_domain) | **PUT** /domains/{id} | Update a domain


# **add_domain_wildcard_catch_all**
> DomainDto add_domain_wildcard_catch_all(id => $id)

Add catch all wild card inbox to domain

Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | id

eval { 
    my $result = $api_instance->add_domain_wildcard_catch_all(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->add_domain_wildcard_catch_all: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**](.md)| id | 

### Return type

[**DomainDto**](DomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_domain**
> DomainDto create_domain(domain_options => $domain_options)

Create Domain

Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $domain_options = MailSlurp::Object::CreateDomainOptions->new(); # CreateDomainOptions | domainOptions

eval { 
    my $result = $api_instance->create_domain(domain_options => $domain_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->create_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain_options** | [**CreateDomainOptions**](CreateDomainOptions.md)| domainOptions | 

### Return type

[**DomainDto**](DomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_domain**
> ARRAY[string] delete_domain(id => $id)

Delete a domain

Delete a domain. This will disable any existing inboxes that use this domain.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | id

eval { 
    my $result = $api_instance->delete_domain(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->delete_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**](.md)| id | 

### Return type

**ARRAY[string]**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_domain**
> DomainDto get_domain(id => $id)

Get a domain

Returns domain verification status and tokens for a given domain

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | id

eval { 
    my $result = $api_instance->get_domain(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->get_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**](.md)| id | 

### Return type

[**DomainDto**](DomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_domains**
> ARRAY[DomainPreview] get_domains()

Get domains

List all custom domains you have created

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_domains();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->get_domains: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[DomainPreview]**](DomainPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_domain**
> DomainDto update_domain(id => $id, update_domain_dto => $update_domain_dto)

Update a domain

Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.

### Example 
```perl
use Data::Dumper;
use MailSlurp::DomainControllerApi;
my $api_instance = MailSlurp::DomainControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | id
my $update_domain_dto = MailSlurp::Object::UpdateDomainOptions->new(); # UpdateDomainOptions | updateDomainDto

eval { 
    my $result = $api_instance->update_domain(id => $id, update_domain_dto => $update_domain_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DomainControllerApi->update_domain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**](.md)| id | 
 **update_domain_dto** | [**UpdateDomainOptions**](UpdateDomainOptions.md)| updateDomainDto | 

### Return type

[**DomainDto**](DomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

