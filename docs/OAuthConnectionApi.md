# MailSlurp::OAuthConnectionApi

## Load the API package
```perl
use MailSlurp::Object::OAuthConnectionApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_o_auth_connection**](OAuthConnectionApi#create_o_auth_connection) | **POST** /oauth-connection | Create an OAuth connection
[**exchange_authorization_token_and_create_or_update_inbox**](OAuthConnectionApi#exchange_authorization_token_and_create_or_update_inbox) | **POST** /oauth-connection/oauth-exchange/google | Exchange authorization code for access token and create inbox


# **create_o_auth_connection**
> CreateOAuthConnectionResult create_o_auth_connection(redirect_base => $redirect_base, o_auth_connection_type => $o_auth_connection_type, email_address => $email_address)

Create an OAuth connection

Configure an inbox for OAuth sync with MailSlurp

### Example 
```perl
use Data::Dumper;
use MailSlurp::OAuthConnectionApi;
my $api_instance = MailSlurp::OAuthConnectionApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $redirect_base = "redirect_base_example"; # string | 
my $o_auth_connection_type = "o_auth_connection_type_example"; # string | 
my $email_address = "email_address_example"; # string | 

eval { 
    my $result = $api_instance->create_o_auth_connection(redirect_base => $redirect_base, o_auth_connection_type => $o_auth_connection_type, email_address => $email_address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OAuthConnectionApi->create_o_auth_connection: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **redirect_base** | **string**|  | 
 **o_auth_connection_type** | **string**|  | 
 **email_address** | **string**|  | [optional] 

### Return type

[**CreateOAuthConnectionResult**](CreateOAuthConnectionResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **exchange_authorization_token_and_create_or_update_inbox**
> CreateOAuthExchangeResult exchange_authorization_token_and_create_or_update_inbox(authorization_code => $authorization_code, redirect_uri => $redirect_uri)

Exchange authorization code for access token and create inbox

Exchange an OAuth code for an access token and create an inbox connection in MailSlurp

### Example 
```perl
use Data::Dumper;
use MailSlurp::OAuthConnectionApi;
my $api_instance = MailSlurp::OAuthConnectionApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $authorization_code = "authorization_code_example"; # string | 
my $redirect_uri = "redirect_uri_example"; # string | 

eval { 
    my $result = $api_instance->exchange_authorization_token_and_create_or_update_inbox(authorization_code => $authorization_code, redirect_uri => $redirect_uri);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OAuthConnectionApi->exchange_authorization_token_and_create_or_update_inbox: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization_code** | **string**|  | 
 **redirect_uri** | **string**|  | 

### Return type

[**CreateOAuthExchangeResult**](CreateOAuthExchangeResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

