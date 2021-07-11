# MailSlurp::TemplateControllerApi

## Load the API package
```perl
use MailSlurp::Object::TemplateControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_template**](TemplateControllerApi#create_template) | **POST** /templates | Create a Template
[**delete_template**](TemplateControllerApi#delete_template) | **DELETE** /templates/{TemplateId} | Delete Template
[**get_all_templates**](TemplateControllerApi#get_all_templates) | **GET** /templates/paginated | Get all Templates in paginated format
[**get_template**](TemplateControllerApi#get_template) | **GET** /templates/{TemplateId} | Get Template
[**get_templates**](TemplateControllerApi#get_templates) | **GET** /templates | Get all Templates


# **create_template**
> TemplateDto create_template(create_template_options => $create_template_options)

Create a Template

### Example 
```perl
use Data::Dumper;
use MailSlurp::TemplateControllerApi;
my $api_instance = MailSlurp::TemplateControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_template_options = MailSlurp::Object::CreateTemplateOptions->new(); # CreateTemplateOptions | createTemplateOptions

eval { 
    my $result = $api_instance->create_template(create_template_options => $create_template_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TemplateControllerApi->create_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_template_options** | [**CreateTemplateOptions**](CreateTemplateOptions)| createTemplateOptions | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_template**
> delete_template(template_id => $template_id)

Delete Template

### Example 
```perl
use Data::Dumper;
use MailSlurp::TemplateControllerApi;
my $api_instance = MailSlurp::TemplateControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $template_id = null; # string | TemplateId

eval { 
    $api_instance->delete_template(template_id => $template_id);
};
if ($@) {
    warn "Exception when calling TemplateControllerApi->delete_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | [**string**]()| TemplateId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_templates**
> PageTemplateProjection get_all_templates(page => $page, size => $size, sort => $sort)

Get all Templates in paginated format

### Example 
```perl
use Data::Dumper;
use MailSlurp::TemplateControllerApi;
my $api_instance = MailSlurp::TemplateControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_all_templates(page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TemplateControllerApi->get_all_templates: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageTemplateProjection**](PageTemplateProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_template**
> TemplateDto get_template(template_id => $template_id)

Get Template

### Example 
```perl
use Data::Dumper;
use MailSlurp::TemplateControllerApi;
my $api_instance = MailSlurp::TemplateControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $template_id = null; # string | TemplateId

eval { 
    my $result = $api_instance->get_template(template_id => $template_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TemplateControllerApi->get_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | [**string**]()| TemplateId | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_templates**
> ARRAY[TemplateProjection] get_templates()

Get all Templates

### Example 
```perl
use Data::Dumper;
use MailSlurp::TemplateControllerApi;
my $api_instance = MailSlurp::TemplateControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_templates();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TemplateControllerApi->get_templates: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[TemplateProjection]**](TemplateProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

