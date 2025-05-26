# MailSlurp::AIControllerApi

## Load the API package
```perl
use MailSlurp::Object::AIControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_structured_content_from_attachment**](AIControllerApi#generate_structured_content_from_attachment) | **POST** /ai/structured-content/attachment | Generate structured content for an attachment
[**generate_structured_content_from_email**](AIControllerApi#generate_structured_content_from_email) | **POST** /ai/structured-content/email | Generate structured content for an email
[**validate_structured_output_schema**](AIControllerApi#validate_structured_output_schema) | **POST** /ai/structured-content/validate | Validate structured content schema


# **generate_structured_content_from_attachment**
> StructuredContentResult generate_structured_content_from_attachment(generate_structured_content_attachment_options => $generate_structured_content_attachment_options)

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

[**StructuredContentResult**](StructuredContentResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generate_structured_content_from_email**
> StructuredContentResult generate_structured_content_from_email(generate_structured_content_email_options => $generate_structured_content_email_options)

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

[**StructuredContentResult**](StructuredContentResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
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

