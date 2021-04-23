# MailSlurp::AttachmentControllerApi

## Load the API package
```perl
use MailSlurp::Object::AttachmentControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**upload_attachment**](AttachmentControllerApi#upload_attachment) | **POST** /attachments | Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
[**upload_attachment_bytes**](AttachmentControllerApi#upload_attachment_bytes) | **POST** /attachments/bytes | Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
[**upload_multipart_form**](AttachmentControllerApi#upload_multipart_form) | **POST** /attachments/multipart | Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.


# **upload_attachment**
> ARRAY[string] upload_attachment(upload_options => $upload_options)

Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.

Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.

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

my $upload_options = MailSlurp::Object::UploadAttachmentOptions->new(); # UploadAttachmentOptions | uploadOptions

eval { 
    my $result = $api_instance->upload_attachment(upload_options => $upload_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttachmentControllerApi->upload_attachment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_options** | [**UploadAttachmentOptions**](UploadAttachmentOptions)| uploadOptions | 

### Return type

**ARRAY[string]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **upload_attachment_bytes**
> ARRAY[string] upload_attachment_bytes(string => $string, filename => $filename, byte_array => $byte_array)

Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.

Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.

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

my $string = "string_example"; # string | Optional contentType for file. For instance `application/pdf`
my $filename = "filename_example"; # string | Optional filename to save upload with
my $byte_array = MailSlurp::Object::string->new(); # string | Byte array request body

eval { 
    my $result = $api_instance->upload_attachment_bytes(string => $string, filename => $filename, byte_array => $byte_array);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttachmentControllerApi->upload_attachment_bytes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **string** | **string**| Optional contentType for file. For instance &#x60;application/pdf&#x60; | [optional] 
 **filename** | **string**| Optional filename to save upload with | [optional] 
 **byte_array** | **string**| Byte array request body | [optional] 

### Return type

**ARRAY[string]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **upload_multipart_form**
> ARRAY[string] upload_multipart_form(file => $file, content_type => $content_type, filename => $filename, x_filename => $x_filename)

Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.

Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.

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

my $file = "/path/to/file"; # string | file
my $content_type = "content_type_example"; # string | Optional content type of attachment
my $filename = "filename_example"; # string | Optional name of file
my $x_filename = "x_filename_example"; # string | Optional content type header of attachment

eval { 
    my $result = $api_instance->upload_multipart_form(file => $file, content_type => $content_type, filename => $filename, x_filename => $x_filename);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttachmentControllerApi->upload_multipart_form: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **string****string**| file | 
 **content_type** | **string**| Optional content type of attachment | [optional] 
 **filename** | **string**| Optional name of file | [optional] 
 **x_filename** | **string**| Optional content type header of attachment | [optional] 

### Return type

**ARRAY[string]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

