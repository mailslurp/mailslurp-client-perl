# MailSlurp::AIControllerApi

## Load the API package
```perl
use MailSlurp::Object::AIControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_transformer**](AIControllerApi#create_transformer) | **POST** /ai/transformer | Create a transformer for reuse in automations
[**create_transformer_mappings**](AIControllerApi#create_transformer_mappings) | **POST** /ai/transformer/mappings | Create transformer mapping
[**delete_all_transformer_mappings**](AIControllerApi#delete_all_transformer_mappings) | **DELETE** /ai/transformer/mappings | Delete all transformer mapping
[**delete_transformer**](AIControllerApi#delete_transformer) | **DELETE** /ai/transformer/{id} | Delete a transformer
[**delete_transformer_mapping**](AIControllerApi#delete_transformer_mapping) | **DELETE** /ai/transformer/mappings/{id} | Delete transformer mapping
[**delete_transformers**](AIControllerApi#delete_transformers) | **DELETE** /ai/transformer | Delete all transformers
[**export_transformer_results**](AIControllerApi#export_transformer_results) | **POST** /ai/transformer/results/export | Export transformer results
[**generate_structured_content_from_attachment**](AIControllerApi#generate_structured_content_from_attachment) | **POST** /ai/structured-content/attachment | Generate structured content for an attachment
[**generate_structured_content_from_email**](AIControllerApi#generate_structured_content_from_email) | **POST** /ai/structured-content/email | Generate structured content for an email
[**generate_structured_content_from_sms**](AIControllerApi#generate_structured_content_from_sms) | **POST** /ai/structured-content/sms | Generate structured content for a TXT message
[**get_export_transformer_results_job**](AIControllerApi#get_export_transformer_results_job) | **POST** /ai/transformer/results/export/{id} | Get export transformer results job
[**get_transformer**](AIControllerApi#get_transformer) | **GET** /ai/transformer/{id} | Get a transformer
[**get_transformer_mapping**](AIControllerApi#get_transformer_mapping) | **GET** /ai/transformer/mappings/{id} | Get transformer mapping
[**get_transformer_mappings**](AIControllerApi#get_transformer_mappings) | **GET** /ai/transformer/mappings | Get transformer mappings
[**get_transformer_result**](AIControllerApi#get_transformer_result) | **GET** /ai/transformer/results/{id} | Get transformer result
[**get_transformer_results**](AIControllerApi#get_transformer_results) | **GET** /ai/transformer/results | Get transformer results
[**get_transformer_results_table**](AIControllerApi#get_transformer_results_table) | **GET** /ai/transformer/results/table | Get transformer results table
[**get_transformers**](AIControllerApi#get_transformers) | **GET** /ai/transformer | List transformers
[**invoke_transformer**](AIControllerApi#invoke_transformer) | **POST** /ai/transformer/invoke | Invoke a transformer
[**test_transformer_mapping_match**](AIControllerApi#test_transformer_mapping_match) | **POST** /ai/transformer/mappings/{id}/match | Test transformer mapping match result
[**validate_structured_output_schema**](AIControllerApi#validate_structured_output_schema) | **POST** /ai/structured-content/validate | Validate structured content schema


# **create_transformer**
> AITransformDto create_transformer(ai_transform_create_options => $ai_transform_create_options)

Create a transformer for reuse in automations

Save an AI transform instructions and schema for use with webhooks and automations

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $ai_transform_create_options = MailSlurp::Object::AITransformCreateOptions->new(); # AITransformCreateOptions | 

eval { 
    my $result = $api_instance->create_transformer(ai_transform_create_options => $ai_transform_create_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->create_transformer: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ai_transform_create_options** | [**AITransformCreateOptions**](AITransformCreateOptions)|  | 

### Return type

[**AITransformDto**](AITransformDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_transformer_mappings**
> AITransformMappingDto create_transformer_mappings(create_ai_transformer_mapping_options => $create_ai_transformer_mapping_options)

Create transformer mapping

Create AI transformer mappings to other entities

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_ai_transformer_mapping_options = MailSlurp::Object::CreateAITransformerMappingOptions->new(); # CreateAITransformerMappingOptions | 

eval { 
    my $result = $api_instance->create_transformer_mappings(create_ai_transformer_mapping_options => $create_ai_transformer_mapping_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->create_transformer_mappings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_ai_transformer_mapping_options** | [**CreateAITransformerMappingOptions**](CreateAITransformerMappingOptions)|  | 

### Return type

[**AITransformMappingDto**](AITransformMappingDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_all_transformer_mappings**
> delete_all_transformer_mappings()

Delete all transformer mapping

Delete all AI transformer mappings

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    $api_instance->delete_all_transformer_mappings();
};
if ($@) {
    warn "Exception when calling AIControllerApi->delete_all_transformer_mappings: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_transformer**
> delete_transformer(id => $id)

Delete a transformer

Delete an AI transformer and schemas by ID

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    $api_instance->delete_transformer(id => $id);
};
if ($@) {
    warn "Exception when calling AIControllerApi->delete_transformer: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_transformer_mapping**
> delete_transformer_mapping(id => $id)

Delete transformer mapping

Delete an AI transformer mapping

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of transform mapping

eval { 
    $api_instance->delete_transformer_mapping(id => $id);
};
if ($@) {
    warn "Exception when calling AIControllerApi->delete_transformer_mapping: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of transform mapping | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_transformers**
> delete_transformers()

Delete all transformers

Delete all AI transformers and schemas

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    $api_instance->delete_transformers();
};
if ($@) {
    warn "Exception when calling AIControllerApi->delete_transformers: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **export_transformer_results**
> ExportTransformerResponse export_transformer_results(export_transformer_options => $export_transformer_options)

Export transformer results

Export AI transformer results in formats such as Excel, CSV, XML etc.

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $export_transformer_options = MailSlurp::Object::ExportTransformerOptions->new(); # ExportTransformerOptions | 

eval { 
    my $result = $api_instance->export_transformer_results(export_transformer_options => $export_transformer_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->export_transformer_results: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **export_transformer_options** | [**ExportTransformerOptions**](ExportTransformerOptions)|  | 

### Return type

[**ExportTransformerResponse**](ExportTransformerResponse)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generate_structured_content_from_attachment**
> StructuredContentResultDto generate_structured_content_from_attachment(generate_structured_content_attachment_options => $generate_structured_content_attachment_options)

Generate structured content for an attachment

Use output schemas to extract data from an attachment using AI

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $generate_structured_content_attachment_options = MailSlurp::Object::GenerateStructuredContentAttachmentOptions->new(); # GenerateStructuredContentAttachmentOptions | 

eval { 
    my $result = $api_instance->generate_structured_content_from_attachment(generate_structured_content_attachment_options => $generate_structured_content_attachment_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->generate_structured_content_from_attachment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_structured_content_attachment_options** | [**GenerateStructuredContentAttachmentOptions**](GenerateStructuredContentAttachmentOptions)|  | 

### Return type

[**StructuredContentResultDto**](StructuredContentResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generate_structured_content_from_email**
> StructuredContentResultDto generate_structured_content_from_email(generate_structured_content_email_options => $generate_structured_content_email_options)

Generate structured content for an email

Use output schemas to extract data from an email using AI

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $generate_structured_content_email_options = MailSlurp::Object::GenerateStructuredContentEmailOptions->new(); # GenerateStructuredContentEmailOptions | 

eval { 
    my $result = $api_instance->generate_structured_content_from_email(generate_structured_content_email_options => $generate_structured_content_email_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->generate_structured_content_from_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_structured_content_email_options** | [**GenerateStructuredContentEmailOptions**](GenerateStructuredContentEmailOptions)|  | 

### Return type

[**StructuredContentResultDto**](StructuredContentResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generate_structured_content_from_sms**
> StructuredContentResultDto generate_structured_content_from_sms(generate_structured_content_sms_options => $generate_structured_content_sms_options)

Generate structured content for a TXT message

Use output schemas to extract data from an SMS using AI

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $generate_structured_content_sms_options = MailSlurp::Object::GenerateStructuredContentSmsOptions->new(); # GenerateStructuredContentSmsOptions | 

eval { 
    my $result = $api_instance->generate_structured_content_from_sms(generate_structured_content_sms_options => $generate_structured_content_sms_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->generate_structured_content_from_sms: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_structured_content_sms_options** | [**GenerateStructuredContentSmsOptions**](GenerateStructuredContentSmsOptions)|  | 

### Return type

[**StructuredContentResultDto**](StructuredContentResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_export_transformer_results_job**
> ExportTransformerResultJobDto get_export_transformer_results_job(id => $id)

Get export transformer results job

Get the job status for an export

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    my $result = $api_instance->get_export_transformer_results_job(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->get_export_transformer_results_job: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

[**ExportTransformerResultJobDto**](ExportTransformerResultJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_transformer**
> AITransformDto get_transformer(id => $id)

Get a transformer

Get AI transformer and schemas by ID

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | 

eval { 
    my $result = $api_instance->get_transformer(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->get_transformer: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()|  | 

### Return type

[**AITransformDto**](AITransformDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_transformer_mapping**
> AITransformMappingDto get_transformer_mapping(id => $id)

Get transformer mapping

Get an AI transformer mapping

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of transform mapping

eval { 
    my $result = $api_instance->get_transformer_mapping(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->get_transformer_mapping: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of transform mapping | 

### Return type

[**AITransformMappingDto**](AITransformMappingDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_transformer_mappings**
> PageAITransformMappingProjection get_transformer_mappings(ai_transform_id => $ai_transform_id, entity_id => $entity_id, entity_type => $entity_type, page => $page, size => $size, sort => $sort)

Get transformer mappings

Get AI transformer mappings to other entities

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $ai_transform_id = null; # string | 
my $entity_id = null; # string | 
my $entity_type = "entity_type_example"; # string | 
my $page = 0; # int | 
my $size = 20; # int | Optional page size. Maximum size is 100. Use page index and sort to page through larger results
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_transformer_mappings(ai_transform_id => $ai_transform_id, entity_id => $entity_id, entity_type => $entity_type, page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->get_transformer_mappings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ai_transform_id** | [**string**]()|  | [optional] 
 **entity_id** | [**string**]()|  | [optional] 
 **entity_type** | **string**|  | [optional] 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**| Optional page size. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageAITransformMappingProjection**](PageAITransformMappingProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_transformer_result**
> AITransformResultDto get_transformer_result(id => $id)

Get transformer result

Get AI transformer result

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of transform result

eval { 
    my $result = $api_instance->get_transformer_result(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->get_transformer_result: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of transform result | 

### Return type

[**AITransformResultDto**](AITransformResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_transformer_results**
> PageAITransformResultProjection get_transformer_results(email_id => $email_id, sms_id => $sms_id, attachment_id => $attachment_id, ai_transform_id => $ai_transform_id, ai_transform_mapping_id => $ai_transform_mapping_id, entity_id => $entity_id, entity_type => $entity_type, page => $page, size => $size, sort => $sort)

Get transformer results

Get AI transformer results

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 
my $sms_id = null; # string | 
my $attachment_id = "attachment_id_example"; # string | 
my $ai_transform_id = null; # string | 
my $ai_transform_mapping_id = null; # string | 
my $entity_id = null; # string | 
my $entity_type = "entity_type_example"; # string | 
my $page = 0; # int | 
my $size = 20; # int | Optional page size. Maximum size is 100. Use page index and sort to page through larger results
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_transformer_results(email_id => $email_id, sms_id => $sms_id, attachment_id => $attachment_id, ai_transform_id => $ai_transform_id, ai_transform_mapping_id => $ai_transform_mapping_id, entity_id => $entity_id, entity_type => $entity_type, page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->get_transformer_results: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | [optional] 
 **sms_id** | [**string**]()|  | [optional] 
 **attachment_id** | **string**|  | [optional] 
 **ai_transform_id** | [**string**]()|  | [optional] 
 **ai_transform_mapping_id** | [**string**]()|  | [optional] 
 **entity_id** | [**string**]()|  | [optional] 
 **entity_type** | **string**|  | [optional] 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**| Optional page size. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageAITransformResultProjection**](PageAITransformResultProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_transformer_results_table**
> PageTableData get_transformer_results_table(include_meta_data => $include_meta_data, flatten_arrays_to_rows => $flatten_arrays_to_rows, email_id => $email_id, sms_id => $sms_id, attachment_id => $attachment_id, ai_transform_id => $ai_transform_id, ai_transform_mapping_id => $ai_transform_mapping_id, entity_id => $entity_id, entity_type => $entity_type, page => $page, size => $size, sort => $sort)

Get transformer results table

Get AI transformer results in table format

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $include_meta_data = null; # boolean | 
my $flatten_arrays_to_rows = null; # boolean | 
my $email_id = null; # string | 
my $sms_id = null; # string | 
my $attachment_id = "attachment_id_example"; # string | 
my $ai_transform_id = null; # string | 
my $ai_transform_mapping_id = null; # string | 
my $entity_id = null; # string | 
my $entity_type = "entity_type_example"; # string | 
my $page = 0; # int | 
my $size = 20; # int | Optional page size. Maximum size is 100. Use page index and sort to page through larger results
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_transformer_results_table(include_meta_data => $include_meta_data, flatten_arrays_to_rows => $flatten_arrays_to_rows, email_id => $email_id, sms_id => $sms_id, attachment_id => $attachment_id, ai_transform_id => $ai_transform_id, ai_transform_mapping_id => $ai_transform_mapping_id, entity_id => $entity_id, entity_type => $entity_type, page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->get_transformer_results_table: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_meta_data** | **boolean**|  | 
 **flatten_arrays_to_rows** | **boolean**|  | 
 **email_id** | [**string**]()|  | [optional] 
 **sms_id** | [**string**]()|  | [optional] 
 **attachment_id** | **string**|  | [optional] 
 **ai_transform_id** | [**string**]()|  | [optional] 
 **ai_transform_mapping_id** | [**string**]()|  | [optional] 
 **entity_id** | [**string**]()|  | [optional] 
 **entity_type** | **string**|  | [optional] 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**| Optional page size. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageTableData**](PageTableData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_transformers**
> PageAITransformProjection get_transformers(page => $page, size => $size, sort => $sort, include => $include)

List transformers

List all AI transforms

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | 
my $size = 20; # int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $include = [("null")]; # ARRAY[string] | Optional list of IDs to include in result

eval { 
    my $result = $api_instance->get_transformers(page => $page, size => $size, sort => $sort, include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->get_transformers: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **include** | [**ARRAY[string]**](string)| Optional list of IDs to include in result | [optional] 

### Return type

[**PageAITransformProjection**](PageAITransformProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **invoke_transformer**
> ConditionalStructuredContentResult invoke_transformer(invoke_transformer_options => $invoke_transformer_options)

Invoke a transformer

Execute an AI transformer to generate structured content

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $invoke_transformer_options = MailSlurp::Object::InvokeTransformerOptions->new(); # InvokeTransformerOptions | 

eval { 
    my $result = $api_instance->invoke_transformer(invoke_transformer_options => $invoke_transformer_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->invoke_transformer: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoke_transformer_options** | [**InvokeTransformerOptions**](InvokeTransformerOptions)|  | 

### Return type

[**ConditionalStructuredContentResult**](ConditionalStructuredContentResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **test_transformer_mapping_match**
> AITransformMappingMatchResult test_transformer_mapping_match(id => $id, email_id => $email_id, sms_id => $sms_id, attachment_id => $attachment_id)

Test transformer mapping match result

Evaluate transform mapping match conditions for given email, sms, or attachment

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of transform mapping
my $email_id = null; # string | 
my $sms_id = null; # string | 
my $attachment_id = "attachment_id_example"; # string | 

eval { 
    my $result = $api_instance->test_transformer_mapping_match(id => $id, email_id => $email_id, sms_id => $sms_id, attachment_id => $attachment_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->test_transformer_mapping_match: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of transform mapping | 
 **email_id** | [**string**]()|  | [optional] 
 **sms_id** | [**string**]()|  | [optional] 
 **attachment_id** | **string**|  | [optional] 

### Return type

[**AITransformMappingMatchResult**](AITransformMappingMatchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validate_structured_output_schema**
> StructuredOutputSchemaValidation validate_structured_output_schema(structured_output_schema => $structured_output_schema)

Validate structured content schema

Check if a schema is valid and can be used to extract data using AI

### Example 
```perl
use Data::Dumper;
use MailSlurp::AIControllerApi;
my $api_instance = MailSlurp::AIControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $structured_output_schema = MailSlurp::Object::StructuredOutputSchema->new(); # StructuredOutputSchema | 

eval { 
    my $result = $api_instance->validate_structured_output_schema(structured_output_schema => $structured_output_schema);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AIControllerApi->validate_structured_output_schema: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **structured_output_schema** | [**StructuredOutputSchema**](StructuredOutputSchema)|  | 

### Return type

[**StructuredOutputSchemaValidation**](StructuredOutputSchemaValidation)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

