# MailSlurp::ApiInternalControllerApi

## Load the API package
```perl
use MailSlurp::Object::ApiInternalControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_saml_user_or_create**](ApiInternalControllerApi#get_saml_user_or_create) | **POST** /internal/saml/user | 


# **get_saml_user_or_create**
> UserDto get_saml_user_or_create(key => $key, get_or_create_saml_user_options => $get_or_create_saml_user_options)



### Example 
```perl
use Data::Dumper;
use MailSlurp::ApiInternalControllerApi;
my $api_instance = MailSlurp::ApiInternalControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $key = "key_example"; # string | 
my $get_or_create_saml_user_options = MailSlurp::Object::GetOrCreateSamlUserOptions->new(); # GetOrCreateSamlUserOptions | 

eval { 
    my $result = $api_instance->get_saml_user_or_create(key => $key, get_or_create_saml_user_options => $get_or_create_saml_user_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApiInternalControllerApi->get_saml_user_or_create: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string**|  | 
 **get_or_create_saml_user_options** | [**GetOrCreateSamlUserOptions**](GetOrCreateSamlUserOptions)|  | 

### Return type

[**UserDto**](UserDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

