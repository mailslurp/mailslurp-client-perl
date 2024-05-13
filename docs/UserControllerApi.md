# MailSlurp::UserControllerApi

## Load the API package
```perl
use MailSlurp::Object::UserControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_json_property_as_string**](UserControllerApi#get_json_property_as_string) | **POST** /user/json/pluck | 
[**get_user_info**](UserControllerApi#get_user_info) | **GET** /user/info | 


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

