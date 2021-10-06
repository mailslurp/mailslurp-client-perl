# MailSlurp::EmailControllerApi

## Load the API package
```perl
use MailSlurp::Object::EmailControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_all_emails**](EmailControllerApi#delete_all_emails) | **DELETE** /emails | Delete all emails in all inboxes.
[**delete_email**](EmailControllerApi#delete_email) | **DELETE** /emails/{emailId} | Delete an email
[**download_attachment**](EmailControllerApi#download_attachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes. Returned as &#x60;octet-stream&#x60; with content type header. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints and convert the base 64 encoded content to a file or string.
[**download_attachment_base64**](EmailControllerApi#download_attachment_base64) | **GET** /emails/{emailId}/attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as an alternative to binary responses. Decode the &#x60;base64FileContents&#x60; as a &#x60;utf-8&#x60; encoded string or array of bytes depending on the &#x60;contentType&#x60;.
[**download_body**](EmailControllerApi#download_body) | **GET** /emails/{emailId}/body | Get email body as string. Returned as &#x60;plain/text&#x60; with content type header.
[**download_body_bytes**](EmailControllerApi#download_body_bytes) | **GET** /emails/{emailId}/body-bytes | Get email body in bytes. Returned as &#x60;octet-stream&#x60; with content type header.
[**forward_email**](EmailControllerApi#forward_email) | **POST** /emails/{emailId}/forward | Forward email to recipients
[**get_attachment_meta_data**](EmailControllerApi#get_attachment_meta_data) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata. This is the &#x60;contentType&#x60; and &#x60;contentLength&#x60; of an attachment. To get the individual attachments  use the &#x60;downloadAttachment&#x60; methods.
[**get_attachments1**](EmailControllerApi#get_attachments1) | **GET** /emails/{emailId}/attachments | Get all email attachment metadata. Metadata includes name and size of attachments.
[**get_email**](EmailControllerApi#get_email) | **GET** /emails/{emailId} | Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
[**get_email_content_match**](EmailControllerApi#get_email_content_match) | **POST** /emails/{emailId}/contentMatch | Get email content regex pattern match results. Runs regex against email body and returns match groups.
[**get_email_html**](EmailControllerApi#get_email_html) | **GET** /emails/{emailId}/html | Get email content as HTML. For displaying emails in browser context.
[**get_email_html_query**](EmailControllerApi#get_email_html_query) | **GET** /emails/{emailId}/htmlQuery | Parse and return text from an email, stripping HTML and decoding encoded characters
[**get_email_links**](EmailControllerApi#get_email_links) | **GET** /emails/{emailId}/links | Parse and return list of links found in an email (only works for HTML content)
[**get_email_text_lines**](EmailControllerApi#get_email_text_lines) | **GET** /emails/{emailId}/textLines | Parse and return text from an email, stripping HTML and decoding encoded characters
[**get_emails_paginated**](EmailControllerApi#get_emails_paginated) | **GET** /emails | Get all emails in all inboxes in paginated form. Email API list all.
[**get_gravatar_url_for_email_address**](EmailControllerApi#get_gravatar_url_for_email_address) | **GET** /emails/gravatarFor | Get gravatar url for email address
[**get_latest_email**](EmailControllerApi#get_latest_email) | **GET** /emails/latest | Get latest email in all inboxes. Most recently received.
[**get_latest_email_in_inbox**](EmailControllerApi#get_latest_email_in_inbox) | **GET** /emails/latestIn | Get latest email in an inbox. Use &#x60;WaitForController&#x60; to get emails that may not have arrived yet.
[**get_organization_emails_paginated**](EmailControllerApi#get_organization_emails_paginated) | **GET** /emails/organization | Get all organization emails. List team or shared test email accounts
[**get_raw_email_contents**](EmailControllerApi#get_raw_email_contents) | **GET** /emails/{emailId}/raw | Get raw email string. Returns unparsed raw SMTP message with headers and body.
[**get_raw_email_json**](EmailControllerApi#get_raw_email_json) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
[**get_unread_email_count**](EmailControllerApi#get_unread_email_count) | **GET** /emails/unreadCount | Get unread email count
[**mark_as_read**](EmailControllerApi#mark_as_read) | **PATCH** /emails/{emailId}/read | Mark an email as read on unread
[**reply_to_email**](EmailControllerApi#reply_to_email) | **PUT** /emails/{emailId} | Reply to an email
[**send_email_source_optional**](EmailControllerApi#send_email_source_optional) | **POST** /emails | Send email
[**validate_email**](EmailControllerApi#validate_email) | **POST** /emails/{emailId}/validate | Validate email HTML contents


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
> string download_attachment(attachment_id => $attachment_id, email_id => $email_id, api_key => $api_key)

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

my $attachment_id = "attachment_id_example"; # string | ID of attachment
my $email_id = null; # string | ID of email
my $api_key = "api_key_example"; # string | Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly.

eval { 
    my $result = $api_instance->download_attachment(attachment_id => $attachment_id, email_id => $email_id, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->download_attachment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **string**| ID of attachment | 
 **email_id** | [**string**]()| ID of email | 
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
> DownloadAttachmentDto download_attachment_base64(attachment_id => $attachment_id, email_id => $email_id)

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

my $attachment_id = "attachment_id_example"; # string | ID of attachment
my $email_id = null; # string | ID of email

eval { 
    my $result = $api_instance->download_attachment_base64(attachment_id => $attachment_id, email_id => $email_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->download_attachment_base64: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **string**| ID of attachment | 
 **email_id** | [**string**]()| ID of email | 

### Return type

[**DownloadAttachmentDto**](DownloadAttachmentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
 - **Accept**: text/html, text/plain

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
my $forward_email_options = MailSlurp::Object::ForwardEmailOptions->new(); # ForwardEmailOptions | forwardEmailOptions

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
 **forward_email_options** | [**ForwardEmailOptions**](ForwardEmailOptions)| forwardEmailOptions | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_attachment_meta_data**
> AttachmentMetaData get_attachment_meta_data(attachment_id => $attachment_id, email_id => $email_id)

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

my $attachment_id = "attachment_id_example"; # string | ID of attachment
my $email_id = null; # string | ID of email

eval { 
    my $result = $api_instance->get_attachment_meta_data(attachment_id => $attachment_id, email_id => $email_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_attachment_meta_data: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **string**| ID of attachment | 
 **email_id** | [**string**]()| ID of email | 

### Return type

[**AttachmentMetaData**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_attachments1**
> ARRAY[AttachmentMetaData] get_attachments1(email_id => $email_id)

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
    my $result = $api_instance->get_attachments1(email_id => $email_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_attachments1: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email**
> Email get_email(email_id => $email_id, decode => $decode)

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

my $email_id = null; # string | emailId
my $decode = false; # boolean | Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance `=D7`). This can be a pain for testing

eval { 
    my $result = $api_instance->get_email(email_id => $email_id, decode => $decode);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| emailId | 
 **decode** | **boolean**| Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance &#x60;&#x3D;D7&#x60;). This can be a pain for testing | [optional] [default to false]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
my $content_match_options = MailSlurp::Object::ContentMatchOptions->new(); # ContentMatchOptions | contentMatchOptions

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
 **content_match_options** | [**ContentMatchOptions**](ContentMatchOptions)| contentMatchOptions | 

### Return type

[**EmailContentMatchResult**](EmailContentMatchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_html**
> string get_email_html(email_id => $email_id, decode => $decode)

Get email content as HTML. For displaying emails in browser context.

Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`

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

my $email_id = null; # string | emailId
my $decode = false; # boolean | decode

eval { 
    my $result = $api_instance->get_email_html(email_id => $email_id, decode => $decode);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_email_html: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**string**]()| emailId | 
 **decode** | **boolean**| decode | [optional] [default to false]

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

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
 **html_selector** | **string**| HTML selector to search for. Uses JQuery/JSoup/CSS style selector like &#39;.my-div&#39; to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information. | [optional] 

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_email_links**
> EmailLinksResult get_email_links(email_id => $email_id)

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

eval { 
    my $result = $api_instance->get_email_links(email_id => $email_id);
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

### Return type

[**EmailLinksResult**](EmailLinksResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_emails_paginated**
> PageEmailProjection get_emails_paginated(before => $before, inbox_id => $inbox_id, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort, unread_only => $unread_only)

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

my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter emails received before given date time
my $inbox_id = [("null")]; # ARRAY[string] | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
my $page = 0; # int | Optional page index in email list pagination
my $search_filter = 'false'; # string | Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter emails received after given date time
my $size = 20; # int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $unread_only = false; # boolean | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly

eval { 
    my $result = $api_instance->get_emails_paginated(before => $before, inbox_id => $inbox_id, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort, unread_only => $unread_only);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_emails_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Optional filter emails received before given date time | [optional] 
 **inbox_id** | [**ARRAY[string]**](string)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **int**| Optional page index in email list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body | [optional] [default to &#39;false&#39;]
 **since** | **DateTime**| Optional filter emails received after given date time | [optional] 
 **size** | **int**| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **unread_only** | **boolean**| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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

my $email_address = "email_address_example"; # string | emailAddress
my $size = "size_example"; # string | size

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
 **email_address** | **string**| emailAddress | 
 **size** | **string**| size | [optional] 

### Return type

[**GravatarUrl**](GravatarUrl)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_latest_email_in_inbox**
> Email get_latest_email_in_inbox(inbox_id => $inbox_id)

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
    my $result = $api_instance->get_latest_email_in_inbox(inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_latest_email_in_inbox: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of the inbox you want to get the latest email from | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_organization_emails_paginated**
> PageEmailProjection get_organization_emails_paginated(before => $before, inbox_id => $inbox_id, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort, unread_only => $unread_only)

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

my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter emails received before given date time
my $inbox_id = [("null")]; # ARRAY[string] | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
my $page = 0; # int | Optional page index in email list pagination
my $search_filter = "search_filter_example"; # string | Optional search filter search filter for emails.
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter emails received after given date time
my $size = 20; # int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $unread_only = false; # boolean | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly

eval { 
    my $result = $api_instance->get_organization_emails_paginated(before => $before, inbox_id => $inbox_id, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort, unread_only => $unread_only);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_organization_emails_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Optional filter emails received before given date time | [optional] 
 **inbox_id** | [**ARRAY[string]**](string)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **int**| Optional page index in email list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter search filter for emails. | [optional] 
 **since** | **DateTime**| Optional filter emails received after given date time | [optional] 
 **size** | **int**| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **unread_only** | **boolean**| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_raw_email_contents**
> string get_raw_email_contents(email_id => $email_id)

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
    my $result = $api_instance->get_raw_email_contents(email_id => $email_id);
    print Dumper($result);
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

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_unread_email_count**
> UnreadCount get_unread_email_count()

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


eval { 
    my $result = $api_instance->get_unread_email_count();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->get_unread_email_count: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UnreadCount**](UnreadCount)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **mark_as_read**
> EmailPreview mark_as_read(email_id => $email_id, read => $read)

Mark an email as read on unread

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

my $email_id = null; # string | emailId
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
 **email_id** | [**string**]()| emailId | 
 **read** | **boolean**| What value to assign to email read property. Default true. | [optional] [default to true]

### Return type

[**EmailPreview**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
my $reply_to_email_options = MailSlurp::Object::ReplyToEmailOptions->new(); # ReplyToEmailOptions | replyToEmailOptions

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
 **reply_to_email_options** | [**ReplyToEmailOptions**](ReplyToEmailOptions)| replyToEmailOptions | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_email_source_optional**
> send_email_source_optional(inbox_id => $inbox_id, use_domain_pool => $use_domain_pool, send_email_options => $send_email_options)

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

my $inbox_id = null; # string | ID of the inbox you want to send the email from
my $use_domain_pool = null; # boolean | Use domain pool. Optionally create inbox to send from using the mailslurp domain pool.
my $send_email_options = MailSlurp::Object::SendEmailOptions->new(); # SendEmailOptions | Options for the email

eval { 
    $api_instance->send_email_source_optional(inbox_id => $inbox_id, use_domain_pool => $use_domain_pool, send_email_options => $send_email_options);
};
if ($@) {
    warn "Exception when calling EmailControllerApi->send_email_source_optional: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of the inbox you want to send the email from | [optional] 
 **use_domain_pool** | **boolean**| Use domain pool. Optionally create inbox to send from using the mailslurp domain pool. | [optional] 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)| Options for the email | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

