# MailSlurp::AttachmentControllerApi

## Load the API package
```perl
use MailSlurp::Object::AttachmentControllerApi;
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_all_attachments**](AttachmentControllerApi#delete_all_attachments) | **DELETE** /attachments | Delete all attachments
[**delete_attachment**](AttachmentControllerApi#delete_attachment) | **DELETE** /attachments/{attachmentId} | Delete an attachment
[**download_attachment_as_base64_encoded**](AttachmentControllerApi#download_attachment_as_base64_encoded) | **GET** /attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
[**download_attachment_as_bytes**](AttachmentControllerApi#download_attachment_as_bytes) | **GET** /attachments/{attachmentId}/bytes | Download attachments. Get email attachment bytes. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints.
[**get_attachment**](AttachmentControllerApi#get_attachment) | **GET** /attachments/{attachmentId} | Get an attachment entity
[**get_attachment_info**](AttachmentControllerApi#get_attachment_info) | **GET** /attachments/{attachmentId}/metadata | Get email attachment metadata information
[**get_attachments1**](AttachmentControllerApi#get_attachments1) | **GET** /attachments | Get email attachments
[**upload_attachment**](AttachmentControllerApi#upload_attachment) | **POST** /attachments | Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
[**upload_attachment_bytes**](AttachmentControllerApi#upload_attachment_bytes) | **POST** /attachments/bytes | Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
[**upload_multipart_form**](AttachmentControllerApi#upload_multipart_form) | **POST** /attachments/multipart | Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.


# **delete_all_attachments**
> delete_all_attachments()

Delete all attachments

### Example 
```perl
use Data::Dumper;
use MailSlurp::AttachmentControllerApi;
my $api_instance = MailSlurp::AttachmentControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    $api_instance->delete_all_attachments();
};
if ($@) {
    warn "Exception when calling AttachmentControllerApi->delete_all_attachments: $@\n";
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

# **delete_attachment**
> delete_attachment(attachment_id => $attachment_id)

Delete an attachment

### Example 
```perl
use Data::Dumper;
use MailSlurp::AttachmentControllerApi;
my $api_instance = MailSlurp::AttachmentControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $attachment_id = "attachment_id_example"; # string | ID of attachment

eval { 
    $api_instance->delete_attachment(attachment_id => $attachment_id);
};
if ($@) {
    warn "Exception when calling AttachmentControllerApi->delete_attachment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **string**| ID of attachment | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **download_attachment_as_base64_encoded**
> DownloadAttachmentDto download_attachment_as_base64_encoded(attachment_id => $attachment_id)

Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.

Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.

### Example 
```perl
use Data::Dumper;
use MailSlurp::AttachmentControllerApi;
my $api_instance = MailSlurp::AttachmentControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $attachment_id = "attachment_id_example"; # string | ID of attachment

eval { 
    my $result = $api_instance->download_attachment_as_base64_encoded(attachment_id => $attachment_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttachmentControllerApi->download_attachment_as_base64_encoded: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **string**| ID of attachment | 

### Return type

[**DownloadAttachmentDto**](DownloadAttachmentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **download_attachment_as_bytes**
> ARRAY[string] download_attachment_as_bytes(attachment_id => $attachment_id)

Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.

Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.

### Example 
```perl
use Data::Dumper;
use MailSlurp::AttachmentControllerApi;
my $api_instance = MailSlurp::AttachmentControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $attachment_id = "attachment_id_example"; # string | ID of attachment

eval { 
    my $result = $api_instance->download_attachment_as_bytes(attachment_id => $attachment_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttachmentControllerApi->download_attachment_as_bytes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **string**| ID of attachment | 

### Return type

**ARRAY[string]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_attachment**
> AttachmentEntity get_attachment(attachment_id => $attachment_id)

Get an attachment entity

### Example 
```perl
use Data::Dumper;
use MailSlurp::AttachmentControllerApi;
my $api_instance = MailSlurp::AttachmentControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $attachment_id = "attachment_id_example"; # string | ID of attachment

eval { 
    my $result = $api_instance->get_attachment(attachment_id => $attachment_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttachmentControllerApi->get_attachment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **string**| ID of attachment | 

### Return type

[**AttachmentEntity**](AttachmentEntity)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_attachment_info**
> AttachmentMetaData get_attachment_info(attachment_id => $attachment_id)

Get email attachment metadata information

Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.

### Example 
```perl
use Data::Dumper;
use MailSlurp::AttachmentControllerApi;
my $api_instance = MailSlurp::AttachmentControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $attachment_id = "attachment_id_example"; # string | ID of attachment

eval { 
    my $result = $api_instance->get_attachment_info(attachment_id => $attachment_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttachmentControllerApi->get_attachment_info: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **string**| ID of attachment | 

### Return type

[**AttachmentMetaData**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_attachments1**
> PageAttachmentEntity get_attachments1(page => $page, size => $size, sort => $sort, file_name_filter => $file_name_filter, since => $since, before => $before)

Get email attachments

Get all attachments in paginated response. Each entity contains meta data for the attachment such as `name` and `content-type`. Use the `attachmentId` and the download endpoints to get the file contents.

### Example 
```perl
use Data::Dumper;
use MailSlurp::AttachmentControllerApi;
my $api_instance = MailSlurp::AttachmentControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index event list pagination
my $size = 20; # int | Optional page size event list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $file_name_filter = "file_name_filter_example"; # string | Optional file name and content type search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_attachments1(page => $page, size => $size, sort => $sort, file_name_filter => $file_name_filter, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttachmentControllerApi->get_attachments1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index event list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size event list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **file_name_filter** | **string**| Optional file name and content type search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageAttachmentEntity**](PageAttachmentEntity)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **upload_attachment**
> ARRAY[string] upload_attachment(upload_attachment_options => $upload_attachment_options)

Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.

### Example 
```perl
use Data::Dumper;
use MailSlurp::AttachmentControllerApi;
my $api_instance = MailSlurp::AttachmentControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $upload_attachment_options = MailSlurp::Object::UploadAttachmentOptions->new(); # UploadAttachmentOptions | 

eval { 
    my $result = $api_instance->upload_attachment(upload_attachment_options => $upload_attachment_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttachmentControllerApi->upload_attachment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_attachment_options** | [**UploadAttachmentOptions**](UploadAttachmentOptions)|  | 

### Return type

**ARRAY[string]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **upload_attachment_bytes**
> ARRAY[string] upload_attachment_bytes(request_body => $request_body, content_type => $content_type, filename => $filename)

Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.

### Example 
```perl
use Data::Dumper;
use MailSlurp::AttachmentControllerApi;
my $api_instance = MailSlurp::AttachmentControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $request_body = [MailSlurp::Object::ARRAY[string]->new()]; # ARRAY[string] | 
my $content_type = "content_type_example"; # string | Optional contentType for file. For instance `application/pdf`
my $filename = "filename_example"; # string | Optional filename to save upload with

eval { 
    my $result = $api_instance->upload_attachment_bytes(request_body => $request_body, content_type => $content_type, filename => $filename);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttachmentControllerApi->upload_attachment_bytes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string)|  | 
 **content_type** | **string**| Optional contentType for file. For instance &#x60;application/pdf&#x60; | [optional] 
 **filename** | **string**| Optional filename to save upload with | [optional] 

### Return type

**ARRAY[string]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **upload_multipart_form**
> ARRAY[string] upload_multipart_form(content_type => $content_type, filename => $filename, x_filename => $x_filename, inline_object => $inline_object)

Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.

### Example 
```perl
use Data::Dumper;
use MailSlurp::AttachmentControllerApi;
my $api_instance = MailSlurp::AttachmentControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $content_type = "content_type_example"; # string | Optional content type of attachment
my $filename = "filename_example"; # string | Optional name of file
my $x_filename = "x_filename_example"; # string | Optional content type header of attachment
my $inline_object = MailSlurp::Object::InlineObject->new(); # InlineObject | 

eval { 
    my $result = $api_instance->upload_multipart_form(content_type => $content_type, filename => $filename, x_filename => $x_filename, inline_object => $inline_object);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttachmentControllerApi->upload_multipart_form: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **string**| Optional content type of attachment | [optional] 
 **filename** | **string**| Optional name of file | [optional] 
 **x_filename** | **string**| Optional content type header of attachment | [optional] 
 **inline_object** | [**InlineObject**](InlineObject)|  | [optional] 

### Return type

**ARRAY[string]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

