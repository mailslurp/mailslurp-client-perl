# MailSlurp::TemplateControllerApi

## Load the API package
```perl
use MailSlurp::Object::TemplateControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_template**](TemplateControllerApi#create_template) | **POST** /templates | Create a Template
[**delete_template**](TemplateControllerApi#delete_template) | **DELETE** /templates/{templateId} | Delete email template
[**get_all_templates**](TemplateControllerApi#get_all_templates) | **GET** /templates/paginated | List templates
[**get_template**](TemplateControllerApi#get_template) | **GET** /templates/{templateId} | Get template
[**get_template_preview_html**](TemplateControllerApi#get_template_preview_html) | **GET** /templates/{templateId}/preview/html | Get template preview HTML
[**get_template_preview_json**](TemplateControllerApi#get_template_preview_json) | **GET** /templates/{templateId}/preview/json | Get template preview Json
[**get_templates**](TemplateControllerApi#get_templates) | **GET** /templates | List templates
[**update_template**](TemplateControllerApi#update_template) | **PUT** /templates/{templateId} | Update template


# **create_template**
> TemplateDto create_template(create_template_options => $create_template_options)

Create a Template

Create an email template with variables for use with templated transactional emails.

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

my $create_template_options = MailSlurp::Object::CreateTemplateOptions->new(); # CreateTemplateOptions | 

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
 **create_template_options** | [**CreateTemplateOptions**](CreateTemplateOptions)|  | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_template**
> delete_template(template_id => $template_id)

Delete email template

Delete template

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

my $template_id = null; # string | Template ID

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
 **template_id** | [**string**]()| Template ID | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_templates**
> PageTemplateProjection get_all_templates(page => $page, size => $size, sort => $sort, since => $since, before => $before)

List templates

Get all templates in paginated format

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
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_all_templates(page => $page, size => $size, sort => $sort, since => $since, before => $before);
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
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageTemplateProjection**](PageTemplateProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_template**
> TemplateDto get_template(template_id => $template_id)

Get template

Get email template

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

my $template_id = null; # string | Template ID

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
 **template_id** | [**string**]()| Template ID | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_template_preview_html**
> string get_template_preview_html(template_id => $template_id)

Get template preview HTML

Get email template preview with passed template variables in HTML format for browsers. Pass template variables as query params.

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

my $template_id = null; # string | Template ID

eval { 
    my $result = $api_instance->get_template_preview_html(template_id => $template_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TemplateControllerApi->get_template_preview_html: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | [**string**]()| Template ID | 

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html;charset=utf-8, text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_template_preview_json**
> TemplatePreview get_template_preview_json(template_id => $template_id)

Get template preview Json

Get email template preview with passed template variables in JSON format. Pass template variables as query params.

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

my $template_id = null; # string | Template ID

eval { 
    my $result = $api_instance->get_template_preview_json(template_id => $template_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TemplateControllerApi->get_template_preview_json: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | [**string**]()| Template ID | 

### Return type

[**TemplatePreview**](TemplatePreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_templates**
> ARRAY[TemplateProjection] get_templates()

List templates

Get all templates

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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_template**
> TemplateDto update_template(template_id => $template_id, create_template_options => $create_template_options)

Update template

Update email template

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

my $template_id = null; # string | Template ID
my $create_template_options = MailSlurp::Object::CreateTemplateOptions->new(); # CreateTemplateOptions | 

eval { 
    my $result = $api_instance->update_template(template_id => $template_id, create_template_options => $create_template_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TemplateControllerApi->update_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | [**string**]()| Template ID | 
 **create_template_options** | [**CreateTemplateOptions**](CreateTemplateOptions)|  | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

