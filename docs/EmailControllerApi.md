# MailSlurp::EmailControllerApi

## Load the API package
```perl
use MailSlurp::Object::EmailControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apply_imap_flag_operation**](EmailControllerApi#apply_imap_flag_operation) | **POST** /emails/{emailId}/imap-flag-operation | Set IMAP flags associated with a message. Only supports &#39;\\Seen&#39; flag.
[**can_send**](EmailControllerApi#can_send) | **POST** /emails/can-send | Check if email can be sent and options are valid.
[**check_email_body**](EmailControllerApi#check_email_body) | **POST** /emails/{emailId}/check-email-body | Detect broken links, spelling, and images in email content
[**check_email_body_feature_support**](EmailControllerApi#check_email_body_feature_support) | **POST** /emails/{emailId}/check-email-body-feature-support | Show which mail clients support the HTML and CSS features used in an email body.
[**check_email_client_support**](EmailControllerApi#check_email_client_support) | **POST** /emails/check-email-client-support | Show which email programs and devices support the features used in an email body.
[**delete_all_emails**](EmailControllerApi#delete_all_emails) | **DELETE** /emails | Delete all emails in all inboxes.
[**delete_email**](EmailControllerApi#delete_email) | **DELETE** /emails/{emailId} | Delete an email
[**download_attachment**](EmailControllerApi#download_attachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes. Returned as &#x60;octet-stream&#x60; with content type header. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints and convert the base 64 encoded content to a file or string.
[**download_attachment_base64**](EmailControllerApi#download_attachment_base64) | **GET** /emails/{emailId}/attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as an alternative to binary responses. Decode the &#x60;base64FileContents&#x60; as a &#x60;utf-8&#x60; encoded string or array of bytes depending on the &#x60;contentType&#x60;.
[**download_body**](EmailControllerApi#download_body) | **GET** /emails/{emailId}/body | Get email body as string. Returned as &#x60;plain/text&#x60; with content type header.
[**download_body_bytes**](EmailControllerApi#download_body_bytes) | **GET** /emails/{emailId}/body-bytes | Get email body in bytes. Returned as &#x60;octet-stream&#x60; with content type header.
[**forward_email**](EmailControllerApi#forward_email) | **POST** /emails/{emailId}/forward | Forward email to recipients
[**get_attachment_meta_data**](EmailControllerApi#get_attachment_meta_data) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata. This is the &#x60;contentType&#x60; and &#x60;contentLength&#x60; of an attachment. To get the individual attachments  use the &#x60;downloadAttachment&#x60; methods.
[**get_email**](EmailControllerApi#get_email) | **GET** /emails/{emailId} | Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
[**get_email_attachments**](EmailControllerApi#get_email_attachments) | **GET** /emails/{emailId}/attachments | Get all email attachment metadata. Metadata includes name and size of attachments.
[**get_email_content_match**](EmailControllerApi#get_email_content_match) | **POST** /emails/{emailId}/contentMatch | Get email content regex pattern match results. Runs regex against email body and returns match groups.
[**get_email_content_part**](EmailControllerApi#get_email_content_part) | **GET** /emails/{emailId}/contentPart | Get email content part by content type
[**get_email_content_part_content**](EmailControllerApi#get_email_content_part_content) | **GET** /emails/{emailId}/contentPart/raw | Get email content part by content type raw response
[**get_email_count**](EmailControllerApi#get_email_count) | **GET** /emails/emails/count | Get email count
[**get_email_html**](EmailControllerApi#get_email_html) | **GET** /emails/{emailId}/html | Get email content as HTML. For displaying emails in browser context.
[**get_email_html_json**](EmailControllerApi#get_email_html_json) | **GET** /emails/{emailId}/html/json | Get email content as HTML in JSON wrapper. For fetching entity decoded HTML content
[**get_email_html_query**](EmailControllerApi#get_email_html_query) | **GET** /emails/{emailId}/htmlQuery | Parse and return text from an email, stripping HTML and decoding encoded characters
[**get_email_links**](EmailControllerApi#get_email_links) | **GET** /emails/{emailId}/links | Parse and return list of links found in an email (only works for HTML content)
[**get_email_preview_ur_ls**](EmailControllerApi#get_email_preview_ur_ls) | **GET** /emails/{emailId}/urls | Get email URLs for viewing in browser or downloading
[**get_email_screenshot_as_base64**](EmailControllerApi#get_email_screenshot_as_base64) | **POST** /emails/{emailId}/screenshot/base64 | Take a screenshot of an email in a browser and return base64 encoded string
[**get_email_screenshot_as_binary**](EmailControllerApi#get_email_screenshot_as_binary) | **POST** /emails/{emailId}/screenshot/binary | Take a screenshot of an email in a browser
[**get_email_summary**](EmailControllerApi#get_email_summary) | **GET** /emails/{emailId}/summary | Get email data including headers but not body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
[**get_email_text_lines**](EmailControllerApi#get_email_text_lines) | **GET** /emails/{emailId}/textLines | Parse and return text from an email, stripping HTML and decoding encoded characters
[**get_email_thread**](EmailControllerApi#get_email_thread) | **GET** /emails/threads/{threadId} | Return email thread information. Use items endpoints to get messages for thread.
[**get_email_thread_items**](EmailControllerApi#get_email_thread_items) | **GET** /emails/threads/{threadId}/items | Return email thread items.
[**get_email_threads**](EmailControllerApi#get_email_threads) | **GET** /emails/threads | Return email threads in paginated form
[**get_emails_offset_paginated**](EmailControllerApi#get_emails_offset_paginated) | **GET** /emails/offset-paginated | Get all emails in all inboxes in paginated form. Email API list all.
[**get_emails_paginated**](EmailControllerApi#get_emails_paginated) | **GET** /emails | Get all emails in all inboxes in paginated form. Email API list all.
[**get_gravatar_url_for_email_address**](EmailControllerApi#get_gravatar_url_for_email_address) | **GET** /emails/gravatarFor | 
[**get_latest_email**](EmailControllerApi#get_latest_email) | **GET** /emails/latest | Get latest email in all inboxes. Most recently received.
[**get_latest_email_in_inbox1**](EmailControllerApi#get_latest_email_in_inbox1) | **GET** /emails/latestIn | Get latest email in an inbox. Use &#x60;WaitForController&#x60; to get emails that may not have arrived yet.
[**get_organization_emails_paginated**](EmailControllerApi#get_organization_emails_paginated) | **GET** /emails/organization | Get all organization emails. List team or shared test email accounts
[**get_raw_email_contents**](EmailControllerApi#get_raw_email_contents) | **GET** /emails/{emailId}/raw | Get raw email string. Returns unparsed raw SMTP message with headers and body.
[**get_raw_email_json**](EmailControllerApi#get_raw_email_json) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
[**get_unread_email_count**](EmailControllerApi#get_unread_email_count) | **GET** /emails/unreadCount | Get unread email count
[**mark_all_as_read**](EmailControllerApi#mark_all_as_read) | **PATCH** /emails/read | Mark all emails as read or unread
[**mark_as_read**](EmailControllerApi#mark_as_read) | **PATCH** /emails/{emailId}/read | Mark an email as read or unread
[**reply_to_email**](EmailControllerApi#reply_to_email) | **PUT** /emails/{emailId} | Reply to an email
[**search_emails**](EmailControllerApi#search_emails) | **POST** /emails/search | Get all emails by search criteria. Return in paginated form.
[**send_email_source_optional**](EmailControllerApi#send_email_source_optional) | **POST** /emails | Send email
[**set_email_favourited**](EmailControllerApi#set_email_favourited) | **PUT** /emails/{emailId}/favourite | Set email favourited state
[**validate_email**](EmailControllerApi#validate_email) | **POST** /emails/{emailId}/validate | Validate email HTML contents


# **apply_imap_flag_operation**
> EmailPreview apply_imap_flag_operation(email_id => $email_id, imap_flag_operation_options => $imap_flag_operation_options)

Set IMAP flags associated with a message. Only supports '\\Seen' flag.

Apply RFC3501 section-2.3.2 IMAP flag operations on an email

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 
my $imap_flag_operation_options = MailSlurp::Object::ImapFlagOperationOptions->new(); # ImapFlagOperationOptions | 

eval { 
    my $result = $api_instance->apply_imap_flag_operation(email_id => $email_id, imap_flag_operation_options => $imap_flag_operation_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->apply_imap_flag_operation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | 
 **imap_flag_operation_options** | [**ImapFlagOperationOptions**](ImapFlagOperationOptions)|  | 

### Return type

[**EmailPreview**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **can_send**
> CanSendEmailResults can_send(inbox_id => $inbox_id, send_email_options => $send_email_options)

Check if email can be sent and options are valid.

Can user send email to given recipient or is the recipient blocked

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | ID of the inbox you want to send the email from
my $send_email_options = MailSlurp::Object::SendEmailOptions->new(); # SendEmailOptions | 

eval { 
    my $result = $api_instance->can_send(inbox_id => $inbox_id, send_email_options => $send_email_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->can_send: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of the inbox you want to send the email from | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

[**CanSendEmailResults**](CanSendEmailResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **check_email_body**
> CheckEmailBodyResults check_email_body(email_id => $email_id)

Detect broken links, spelling, and images in email content

Find dead links, broken images, and spelling mistakes in email body. Will call included links via HTTP so do not invoke if your links are sensitive or stateful. Any resource that returns a 4xx or 5xx response or is not reachable via HEAD or GET HTTP operations will be considered unhealthy.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 

eval { 
    my $result = $api_instance->check_email_body(email_id => $email_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->check_email_body: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | 

### Return type

[**CheckEmailBodyResults**](CheckEmailBodyResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **check_email_body_feature_support**
> CheckEmailBodyFeatureSupportResults check_email_body_feature_support(email_id => $email_id)

Show which mail clients support the HTML and CSS features used in an email body.

Detect HTML and CSS features inside an email body and return a report of email client support across different platforms and versions.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 

eval { 
    my $result = $api_instance->check_email_body_feature_support(email_id => $email_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->check_email_body_feature_support: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | 

### Return type

[**CheckEmailBodyFeatureSupportResults**](CheckEmailBodyFeatureSupportResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **check_email_client_support**
> CheckEmailClientSupportResults check_email_client_support(check_email_client_support_options => $check_email_client_support_options)

Show which email programs and devices support the features used in an email body.

Evaluate the features used in an email body and return a report of email client support across different platforms and versions.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $check_email_client_support_options = MailSlurp::Object::CheckEmailClientSupportOptions->new(); # CheckEmailClientSupportOptions | 

eval { 
    my $result = $api_instance->check_email_client_support(check_email_client_support_options => $check_email_client_support_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->check_email_client_support: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **check_email_client_support_options** | [**CheckEmailClientSupportOptions**](CheckEmailClientSupportOptions)|  | 

### Return type

[**CheckEmailClientSupportResults**](CheckEmailClientSupportResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_all_emails**
> delete_all_emails()

Delete all emails in all inboxes.

Deletes all emails in your account. Be careful as emails cannot be recovered

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    $api_instance->delete_all_emails();
};
if ($@) {
    warn "Exception when calling EmailControllerApi->delete_all_emails: $@\n";
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

# **delete_email**
> delete_email(email_id => $email_id)

Delete an email

Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email to delete

eval { 
    $api_instance->delete_email(email_id => $email_id);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->delete_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email to delete | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **download_attachment**
> string download_attachment(email_id => $email_id, attachment_id => $attachment_id, api_key => $api_key)

Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.

Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email
my $attachment_id = "attachment_id_example"; # string | ID of attachment
my $api_key = "api_key_example"; # string | Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly.

eval { 
    my $result = $api_instance->download_attachment(email_id => $email_id, attachment_id => $attachment_id, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->download_attachment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email | 
 **attachment_id** | **string**| ID of attachment | 
 **api_key** | **string**| Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. | [optional] 

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **download_attachment_base64**
> DownloadAttachmentDto download_attachment_base64(email_id => $email_id, attachment_id => $attachment_id)

Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.

Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email
my $attachment_id = "attachment_id_example"; # string | ID of attachment

eval { 
    my $result = $api_instance->download_attachment_base64(email_id => $email_id, attachment_id => $attachment_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->download_attachment_base64: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email | 
 **attachment_id** | **string**| ID of attachment | 

### Return type

[**DownloadAttachmentDto**](DownloadAttachmentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **download_body**
> string download_body(email_id => $email_id)

Get email body as string. Returned as `plain/text` with content type header.

Returns the specified email body for a given email as a string

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email

eval { 
    my $result = $api_instance->download_body(email_id => $email_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->download_body: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email | 

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **download_body_bytes**
> string download_body_bytes(email_id => $email_id)

Get email body in bytes. Returned as `octet-stream` with content type header.

Returns the specified email body for a given email as a stream / array of bytes.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email

eval { 
    my $result = $api_instance->download_body_bytes(email_id => $email_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->download_body_bytes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email | 

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **forward_email**
> SentEmailDto forward_email(email_id => $email_id, forward_email_options => $forward_email_options)

Forward email to recipients

Forward an existing email to new recipients. The sender of the email will be the inbox that received the email you are forwarding. You can override the sender with the `from` option. Note you must have access to the from address in MailSlurp to use the override. For more control consider fetching the email and sending it a new using the send email endpoints.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email
my $forward_email_options = MailSlurp::Object::ForwardEmailOptions->new(); # ForwardEmailOptions | 

eval { 
    my $result = $api_instance->forward_email(email_id => $email_id, forward_email_options => $forward_email_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->forward_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email | 
 **forward_email_options** | [**ForwardEmailOptions**](ForwardEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_attachment_meta_data**
> AttachmentMetaData get_attachment_meta_data(email_id => $email_id, attachment_id => $attachment_id)

Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.

Returns the metadata such as name and content-type for a given attachment and email.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email
my $attachment_id = "attachment_id_example"; # string | ID of attachment

eval { 
    my $result = $api_instance->get_attachment_meta_data(email_id => $email_id, attachment_id => $attachment_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_attachment_meta_data: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email | 
 **attachment_id** | **string**| ID of attachment | 

### Return type

[**AttachmentMetaData**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email**
> Email get_email(email_id => $email_id)

Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.

Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 

eval { 
    my $result = $api_instance->get_email(email_id => $email_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/xml;charset=UTF-8, application/json; charset=UTF-8, application/xml; charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_attachments**
> ARRAY[AttachmentMetaData] get_email_attachments(email_id => $email_id)

Get all email attachment metadata. Metadata includes name and size of attachments.

Returns an array of attachment metadata such as name and content-type for a given email if present.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email

eval { 
    my $result = $api_instance->get_email_attachments(email_id => $email_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_attachments: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email | 

### Return type

[**ARRAY[AttachmentMetaData]**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_content_match**
> EmailContentMatchResult get_email_content_match(email_id => $email_id, content_match_options => $content_match_options)

Get email content regex pattern match results. Runs regex against email body and returns match groups.

Return the matches for a given Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns. 

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email to match against
my $content_match_options = MailSlurp::Object::ContentMatchOptions->new(); # ContentMatchOptions | 

eval { 
    my $result = $api_instance->get_email_content_match(email_id => $email_id, content_match_options => $content_match_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_content_match: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email to match against | 
 **content_match_options** | [**ContentMatchOptions**](ContentMatchOptions)|  | 

### Return type

[**EmailContentMatchResult**](EmailContentMatchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_content_part**
> EmailContentPartResult get_email_content_part(email_id => $email_id, content_type => $content_type, strict => $strict, index => $index)

Get email content part by content type

Get email body content parts from a multipart email message for a given content type

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email to match against
my $content_type = "content_type_example"; # string | Content type
my $strict = null; # boolean | Strict content type match
my $index = 56; # int | Index of content type part if multiple

eval { 
    my $result = $api_instance->get_email_content_part(email_id => $email_id, content_type => $content_type, strict => $strict, index => $index);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_content_part: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email to match against | 
 **content_type** | **string**| Content type | 
 **strict** | **boolean**| Strict content type match | [optional] 
 **index** | **int**| Index of content type part if multiple | [optional] 

### Return type

[**EmailContentPartResult**](EmailContentPartResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/xml;charset=UTF-8, application/json; charset=UTF-8, application/xml; charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_content_part_content**
> string get_email_content_part_content(email_id => $email_id, content_type => $content_type, strict => $strict, index => $index)

Get email content part by content type raw response

Get email body content parts from a multipart email message for a given content type and return as response

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email to match against
my $content_type = "content_type_example"; # string | Content type
my $strict = null; # boolean | Strict content type match
my $index = 56; # int | Index of content type part if multiple. Starts from 0 and applies to the result list after selecting for your content type. Content type parts are sorted by order found in original MIME message.

eval { 
    my $result = $api_instance->get_email_content_part_content(email_id => $email_id, content_type => $content_type, strict => $strict, index => $index);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_content_part_content: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email to match against | 
 **content_type** | **string**| Content type | 
 **strict** | **boolean**| Strict content type match | [optional] 
 **index** | **int**| Index of content type part if multiple. Starts from 0 and applies to the result list after selecting for your content type. Content type parts are sorted by order found in original MIME message. | [optional] 

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_count**
> CountDto get_email_count(inbox_id => $inbox_id)

Get email count

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | 

eval { 
    my $result = $api_instance->get_email_count(inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()|  | [optional] 

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_html**
> string get_email_html(email_id => $email_id, replace_cid_images => $replace_cid_images)

Get email content as HTML. For displaying emails in browser context.

Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`. Returns content-type `text/html;charset=utf-8` so you must call expecting that content response not JSON. For JSON response see the `getEmailHTMLJson` method.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 
my $replace_cid_images = false; # boolean | 

eval { 
    my $result = $api_instance->get_email_html(email_id => $email_id, replace_cid_images => $replace_cid_images);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_html: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | 
 **replace_cid_images** | **boolean**|  | [optional] [default to false]

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html;charset=utf-8, text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_html_json**
> EmailHtmlDto get_email_html_json(email_id => $email_id, replace_cid_images => $replace_cid_images)

Get email content as HTML in JSON wrapper. For fetching entity decoded HTML content

Retrieve email content as HTML response. Decodes quoted-printable entities and converts charset to UTF-8. Returns content-type `application/json;charset=utf-8` so you must call expecting that content response not JSON.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 
my $replace_cid_images = false; # boolean | 

eval { 
    my $result = $api_instance->get_email_html_json(email_id => $email_id, replace_cid_images => $replace_cid_images);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_html_json: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | 
 **replace_cid_images** | **boolean**|  | [optional] [default to false]

### Return type

[**EmailHtmlDto**](EmailHtmlDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_html_query**
> EmailTextLinesResult get_email_html_query(email_id => $email_id, html_selector => $html_selector)

Parse and return text from an email, stripping HTML and decoding encoded characters

Parse an email body and return the content as an array of text. HTML parsing uses JSoup which supports JQuery/CSS style selectors

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email to perform HTML query on
my $html_selector = "html_selector_example"; # string | HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information.

eval { 
    my $result = $api_instance->get_email_html_query(email_id => $email_id, html_selector => $html_selector);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_html_query: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email to perform HTML query on | 
 **html_selector** | **string**| HTML selector to search for. Uses JQuery/JSoup/CSS style selector like &#39;.my-div&#39; to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information. | 

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_links**
> EmailLinksResult get_email_links(email_id => $email_id, selector => $selector)

Parse and return list of links found in an email (only works for HTML content)

HTML parsing uses JSoup and UNIX line separators. Searches content for href attributes

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email to fetch text for
my $selector = "selector_example"; # string | Optional HTML query selector for links

eval { 
    my $result = $api_instance->get_email_links(email_id => $email_id, selector => $selector);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_links: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email to fetch text for | 
 **selector** | **string**| Optional HTML query selector for links | [optional] 

### Return type

[**EmailLinksResult**](EmailLinksResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_preview_ur_ls**
> EmailPreviewUrls get_email_preview_ur_ls(email_id => $email_id)

Get email URLs for viewing in browser or downloading

Get a list of URLs for email content as text/html or raw SMTP message for viewing the message in a browser.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 

eval { 
    my $result = $api_instance->get_email_preview_ur_ls(email_id => $email_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_preview_ur_ls: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | 

### Return type

[**EmailPreviewUrls**](EmailPreviewUrls)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_screenshot_as_base64**
> EmailScreenshotResult get_email_screenshot_as_base64(email_id => $email_id, get_email_screenshot_options => $get_email_screenshot_options)

Take a screenshot of an email in a browser and return base64 encoded string

Capture image of email screenshot and return as base64 encoded string. Useful for embedding in HTML. Be careful as this may contain sensitive information.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 
my $get_email_screenshot_options = MailSlurp::Object::GetEmailScreenshotOptions->new(); # GetEmailScreenshotOptions | 

eval { 
    my $result = $api_instance->get_email_screenshot_as_base64(email_id => $email_id, get_email_screenshot_options => $get_email_screenshot_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_screenshot_as_base64: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | 
 **get_email_screenshot_options** | [**GetEmailScreenshotOptions**](GetEmailScreenshotOptions)|  | 

### Return type

[**EmailScreenshotResult**](EmailScreenshotResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_screenshot_as_binary**
> get_email_screenshot_as_binary(email_id => $email_id, get_email_screenshot_options => $get_email_screenshot_options)

Take a screenshot of an email in a browser

Returns binary octet-stream of screenshot of the given email

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 
my $get_email_screenshot_options = MailSlurp::Object::GetEmailScreenshotOptions->new(); # GetEmailScreenshotOptions | 

eval { 
    $api_instance->get_email_screenshot_as_binary(email_id => $email_id, get_email_screenshot_options => $get_email_screenshot_options);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_screenshot_as_binary: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | 
 **get_email_screenshot_options** | [**GetEmailScreenshotOptions**](GetEmailScreenshotOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_summary**
> EmailPreview get_email_summary(email_id => $email_id, decode => $decode)

Get email data including headers but not body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.

Returns a email summary object with headers. To retrieve the body see getEmail and to get raw unparsed email use the getRawEmail endpoints

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 
my $decode = null; # boolean | 

eval { 
    my $result = $api_instance->get_email_summary(email_id => $email_id, decode => $decode);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_summary: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | 
 **decode** | **boolean**|  | [optional] 

### Return type

[**EmailPreview**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_text_lines**
> EmailTextLinesResult get_email_text_lines(email_id => $email_id, decode_html_entities => $decode_html_entities, line_separator => $line_separator)

Parse and return text from an email, stripping HTML and decoding encoded characters

Parse an email body and return the content as an array of strings. HTML parsing uses JSoup and UNIX line separators.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email to fetch text for
my $decode_html_entities = null; # boolean | Decode HTML entities
my $line_separator = "line_separator_example"; # string | Line separator character

eval { 
    my $result = $api_instance->get_email_text_lines(email_id => $email_id, decode_html_entities => $decode_html_entities, line_separator => $line_separator);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_text_lines: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email to fetch text for | 
 **decode_html_entities** | **boolean**| Decode HTML entities | [optional] 
 **line_separator** | **string**| Line separator character | [optional] 

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_thread**
> EmailThreadDto get_email_thread(thread_id => $thread_id)

Return email thread information. Use items endpoints to get messages for thread.

Return email message thread summary from Message-ID, In-Reply-To, and References header. Get messages using items endpoint

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $thread_id = null; # string | 

eval { 
    my $result = $api_instance->get_email_thread(thread_id => $thread_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_thread: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thread_id** | [**string**]()|  | 

### Return type

[**EmailThreadDto**](EmailThreadDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_thread_items**
> EmailThreadItemsDto get_email_thread_items(thread_id => $thread_id, sort => $sort)

Return email thread items.

Return email thread messages based on Message-ID, In-Reply-To, and References header

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $thread_id = null; # string | 
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_email_thread_items(thread_id => $thread_id, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_thread_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thread_id** | [**string**]()|  | 
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**EmailThreadItemsDto**](EmailThreadItemsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_threads**
> PageEmailThreadProjection get_email_threads(html_selector => $html_selector, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before)

Return email threads in paginated form

Return email message chains built from Message-ID, In-Reply-To, and References header.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $html_selector = null; # string | Optional inbox filter
my $page = 0; # int | Optional page index in email thread pagination
my $size = 20; # int | Optional page size in email thread pagination. Maximum size is 100. Use page index and sort to page through larger results
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter search filter for email threads.
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter email threads created since time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter emails threads created before given date time

eval { 
    my $result = $api_instance->get_email_threads(html_selector => $html_selector, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_threads: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **html_selector** | [**string**]()| Optional inbox filter | [optional] 
 **page** | **int**| Optional page index in email thread pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in email thread pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter search filter for email threads. | [optional] 
 **since** | **DateTime**| Optional filter email threads created since time | [optional] 
 **before** | **DateTime**| Optional filter emails threads created before given date time | [optional] 

### Return type

[**PageEmailThreadProjection**](PageEmailThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_emails_offset_paginated**
> PageEmailProjection get_emails_offset_paginated(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, unread_only => $unread_only, search_filter => $search_filter, since => $since, before => $before, favourited => $favourited, sync_connectors => $sync_connectors, plus_address_id => $plus_address_id)

Get all emails in all inboxes in paginated form. Email API list all.

By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = [("null")]; # ARRAY[string] | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
my $page = 0; # int | Optional page index in email list pagination
my $size = 20; # int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $unread_only = false; # boolean | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
my $search_filter = "search_filter_example"; # string | Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter emails received after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter emails received before given date time
my $favourited = null; # boolean | Optional filter emails that are favourited
my $sync_connectors = null; # boolean | Sync connectors
my $plus_address_id = null; # string | Optional plus address ID filter

eval { 
    my $result = $api_instance->get_emails_offset_paginated(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, unread_only => $unread_only, search_filter => $search_filter, since => $since, before => $before, favourited => $favourited, sync_connectors => $sync_connectors, plus_address_id => $plus_address_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_emails_offset_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**ARRAY[string]**](string)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **int**| Optional page index in email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **unread_only** | **boolean**| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]
 **search_filter** | **string**| Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body | [optional] 
 **since** | **DateTime**| Optional filter emails received after given date time | [optional] 
 **before** | **DateTime**| Optional filter emails received before given date time | [optional] 
 **favourited** | **boolean**| Optional filter emails that are favourited | [optional] 
 **sync_connectors** | **boolean**| Sync connectors | [optional] 
 **plus_address_id** | [**string**]()| Optional plus address ID filter | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_emails_paginated**
> PageEmailProjection get_emails_paginated(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, unread_only => $unread_only, search_filter => $search_filter, since => $since, before => $before, sync_connectors => $sync_connectors, plus_address_id => $plus_address_id, favourited => $favourited)

Get all emails in all inboxes in paginated form. Email API list all.

By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = [("null")]; # ARRAY[string] | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
my $page = 0; # int | Optional page index in email list pagination
my $size = 20; # int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $unread_only = false; # boolean | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
my $search_filter = "search_filter_example"; # string | Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter emails received after given date time. If unset will use time 24hours prior to now.
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter emails received before given date time
my $sync_connectors = null; # boolean | Sync connectors
my $plus_address_id = null; # string | Optional plus address ID filter
my $favourited = null; # boolean | Optional filter emails that are favourited

eval { 
    my $result = $api_instance->get_emails_paginated(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, unread_only => $unread_only, search_filter => $search_filter, since => $since, before => $before, sync_connectors => $sync_connectors, plus_address_id => $plus_address_id, favourited => $favourited);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_emails_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**ARRAY[string]**](string)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **int**| Optional page index in email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **unread_only** | **boolean**| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]
 **search_filter** | **string**| Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body | [optional] 
 **since** | **DateTime**| Optional filter emails received after given date time. If unset will use time 24hours prior to now. | [optional] 
 **before** | **DateTime**| Optional filter emails received before given date time | [optional] 
 **sync_connectors** | **boolean**| Sync connectors | [optional] 
 **plus_address_id** | [**string**]()| Optional plus address ID filter | [optional] 
 **favourited** | **boolean**| Optional filter emails that are favourited | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_gravatar_url_for_email_address**
> GravatarUrl get_gravatar_url_for_email_address(email_address => $email_address, size => $size)



Get gravatar url for email address

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_address = "email_address_example"; # string | 
my $size = "size_example"; # string | 

eval { 
    my $result = $api_instance->get_gravatar_url_for_email_address(email_address => $email_address, size => $size);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_gravatar_url_for_email_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **string**|  | 
 **size** | **string**|  | [optional] 

### Return type

[**GravatarUrl**](GravatarUrl)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_latest_email**
> Email get_latest_email(inbox_ids => $inbox_ids)

Get latest email in all inboxes. Most recently received.

Get the newest email in all inboxes or in a passed set of inbox IDs

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_ids = [("null")]; # ARRAY[string] | Optional set of inboxes to filter by. Only get the latest email from these inbox IDs. If not provided will search across all inboxes

eval { 
    my $result = $api_instance->get_latest_email(inbox_ids => $inbox_ids);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_latest_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_ids** | [**ARRAY[string]**](string)| Optional set of inboxes to filter by. Only get the latest email from these inbox IDs. If not provided will search across all inboxes | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_latest_email_in_inbox1**
> Email get_latest_email_in_inbox1(inbox_id => $inbox_id)

Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.

Get the newest email in all inboxes or in a passed set of inbox IDs

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | ID of the inbox you want to get the latest email from

eval { 
    my $result = $api_instance->get_latest_email_in_inbox1(inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_latest_email_in_inbox1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of the inbox you want to get the latest email from | 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_organization_emails_paginated**
> PageEmailProjection get_organization_emails_paginated(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, unread_only => $unread_only, search_filter => $search_filter, since => $since, before => $before, sync_connectors => $sync_connectors, favourited => $favourited, plus_address_id => $plus_address_id)

Get all organization emails. List team or shared test email accounts

By default returns all emails across all team inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = [("null")]; # ARRAY[string] | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
my $page = 0; # int | Optional page index in email list pagination
my $size = 20; # int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $unread_only = false; # boolean | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
my $search_filter = "search_filter_example"; # string | Optional search filter search filter for emails.
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter emails received after given date time. If unset will use time 24hours prior to now.
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter emails received before given date time
my $sync_connectors = null; # boolean | Sync connectors
my $favourited = null; # boolean | Search only favorited emails
my $plus_address_id = null; # string | Optional plus address ID filter

eval { 
    my $result = $api_instance->get_organization_emails_paginated(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, unread_only => $unread_only, search_filter => $search_filter, since => $since, before => $before, sync_connectors => $sync_connectors, favourited => $favourited, plus_address_id => $plus_address_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_organization_emails_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**ARRAY[string]**](string)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **int**| Optional page index in email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **unread_only** | **boolean**| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]
 **search_filter** | **string**| Optional search filter search filter for emails. | [optional] 
 **since** | **DateTime**| Optional filter emails received after given date time. If unset will use time 24hours prior to now. | [optional] 
 **before** | **DateTime**| Optional filter emails received before given date time | [optional] 
 **sync_connectors** | **boolean**| Sync connectors | [optional] 
 **favourited** | **boolean**| Search only favorited emails | [optional] 
 **plus_address_id** | [**string**]()| Optional plus address ID filter | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_raw_email_contents**
> get_raw_email_contents(email_id => $email_id)

Get raw email string. Returns unparsed raw SMTP message with headers and body.

Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email

eval { 
    $api_instance->get_raw_email_contents(email_id => $email_id);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_raw_email_contents: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_raw_email_json**
> RawEmailJson get_raw_email_json(email_id => $email_id)

Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.

Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email

eval { 
    my $result = $api_instance->get_raw_email_json(email_id => $email_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_raw_email_json: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email | 

### Return type

[**RawEmailJson**](RawEmailJson)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_unread_email_count**
> UnreadCount get_unread_email_count(inbox_id => $inbox_id)

Get unread email count

Get number of emails unread. Unread means has not been viewed in dashboard or returned in an email API response

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Optional inbox ID filter

eval { 
    my $result = $api_instance->get_unread_email_count(inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_unread_email_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Optional inbox ID filter | [optional] 

### Return type

[**UnreadCount**](UnreadCount)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **mark_all_as_read**
> mark_all_as_read(read => $read, inbox_id => $inbox_id)

Mark all emails as read or unread

Marks all emails as read or unread. Pass boolean read flag to set value. This is useful if you want to read an email but keep it as unread

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $read = true; # boolean | What value to assign to email read property. Default true.
my $inbox_id = null; # string | Optional inbox ID filter

eval { 
    $api_instance->mark_all_as_read(read => $read, inbox_id => $inbox_id);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->mark_all_as_read: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **read** | **boolean**| What value to assign to email read property. Default true. | [optional] [default to true]
 **inbox_id** | [**string**]()| Optional inbox ID filter | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **mark_as_read**
> EmailPreview mark_as_read(email_id => $email_id, read => $read)

Mark an email as read or unread

Marks an email as read or unread. Pass boolean read flag to set value. This is useful if you want to read an email but keep it as unread

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | 
my $read = true; # boolean | What value to assign to email read property. Default true.

eval { 
    my $result = $api_instance->mark_as_read(email_id => $email_id, read => $read);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->mark_as_read: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()|  | 
 **read** | **boolean**| What value to assign to email read property. Default true. | [optional] [default to true]

### Return type

[**EmailPreview**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **reply_to_email**
> SentEmailDto reply_to_email(email_id => $email_id, reply_to_email_options => $reply_to_email_options)

Reply to an email

Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of the email that should be replied to
my $reply_to_email_options = MailSlurp::Object::ReplyToEmailOptions->new(); # ReplyToEmailOptions | 

eval { 
    my $result = $api_instance->reply_to_email(email_id => $email_id, reply_to_email_options => $reply_to_email_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->reply_to_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of the email that should be replied to | 
 **reply_to_email_options** | [**ReplyToEmailOptions**](ReplyToEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **search_emails**
> PageEmailProjection search_emails(search_emails_options => $search_emails_options, sync_connectors => $sync_connectors, favourited => $favourited, plus_address_id => $plus_address_id)

Get all emails by search criteria. Return in paginated form.

Search emails by given criteria return matches in paginated format. Searches against email recipients, sender, subject, email address and ID. Does not search email body

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $search_emails_options = MailSlurp::Object::SearchEmailsOptions->new(); # SearchEmailsOptions | 
my $sync_connectors = null; # boolean | Sync connectors
my $favourited = null; # boolean | Search only favourited emails
my $plus_address_id = null; # string | Optional plus address ID filter

eval { 
    my $result = $api_instance->search_emails(search_emails_options => $search_emails_options, sync_connectors => $sync_connectors, favourited => $favourited, plus_address_id => $plus_address_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->search_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_emails_options** | [**SearchEmailsOptions**](SearchEmailsOptions)|  | 
 **sync_connectors** | **boolean**| Sync connectors | [optional] 
 **favourited** | **boolean**| Search only favourited emails | [optional] 
 **plus_address_id** | [**string**]()| Optional plus address ID filter | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_email_source_optional**
> send_email_source_optional(send_email_options => $send_email_options, inbox_id => $inbox_id, use_domain_pool => $use_domain_pool, virtual_send => $virtual_send)

Send email

Alias for `InboxController.sendEmail` method - see original method for full details. Sends an email from a given inbox that you have created. If no inbox is supplied a random inbox will be created for you and used to send the email.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $send_email_options = MailSlurp::Object::SendEmailOptions->new(); # SendEmailOptions | 
my $inbox_id = null; # string | ID of the inbox you want to send the email from
my $use_domain_pool = null; # boolean | Use domain pool. Optionally create inbox to send from using the mailslurp domain pool.
my $virtual_send = null; # boolean | Optionally create inbox to send from that is a virtual inbox and won't send to external addresses

eval { 
    $api_instance->send_email_source_optional(send_email_options => $send_email_options, inbox_id => $inbox_id, use_domain_pool => $use_domain_pool, virtual_send => $virtual_send);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->send_email_source_optional: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 
 **inbox_id** | [**string**]()| ID of the inbox you want to send the email from | [optional] 
 **use_domain_pool** | **boolean**| Use domain pool. Optionally create inbox to send from using the mailslurp domain pool. | [optional] 
 **virtual_send** | **boolean**| Optionally create inbox to send from that is a virtual inbox and won&#39;t send to external addresses | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **set_email_favourited**
> set_email_favourited(email_id => $email_id, favourited => $favourited)

Set email favourited state

Set and return new favorite state for an email

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email to set favourite state
my $favourited = null; # boolean | 

eval { 
    $api_instance->set_email_favourited(email_id => $email_id, favourited => $favourited);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->set_email_favourited: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email to set favourite state | 
 **favourited** | **boolean**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validate_email**
> ValidationDto validate_email(email_id => $email_id)

Validate email HTML contents

Validate the HTML content of email if HTML is found. Considered valid if no HTML is present.

### Example 
```perl
use Data::Dumper;
use MailSlurp::EmailControllerApi;
my $api_instance = MailSlurp::EmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_id = null; # string | ID of email

eval { 
    my $result = $api_instance->validate_email(email_id => $email_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->validate_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| ID of email | 

### Return type

[**ValidationDto**](ValidationDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

