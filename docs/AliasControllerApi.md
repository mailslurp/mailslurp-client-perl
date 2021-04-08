# MailSlurp::AliasControllerApi

## Load the API package
```perl
use MailSlurp::Object::AliasControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_alias**](AliasControllerApi.md#create_alias) | **POST** /aliases | Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
[**delete_alias**](AliasControllerApi.md#delete_alias) | **DELETE** /aliases/{aliasId} | Delete an email alias
[**get_alias**](AliasControllerApi.md#get_alias) | **GET** /aliases/{aliasId} | Get an email alias
[**get_alias_emails**](AliasControllerApi.md#get_alias_emails) | **GET** /aliases/{aliasId}/emails | Get emails for an alias
[**get_alias_threads**](AliasControllerApi.md#get_alias_threads) | **GET** /aliases/{aliasId}/threads | Get threads created for an alias
[**get_aliases**](AliasControllerApi.md#get_aliases) | **GET** /aliases | Get all email aliases you have created
[**reply_to_alias_email**](AliasControllerApi.md#reply_to_alias_email) | **PUT** /aliases/{aliasId}/emails/{emailId} | Reply to an email
[**send_alias_email**](AliasControllerApi.md#send_alias_email) | **POST** /aliases/{aliasId}/emails | Send an email from an alias inbox
[**update_alias**](AliasControllerApi.md#update_alias) | **PUT** /aliases/{aliasId} | Update an email alias


# **create_alias**
> AliasDto create_alias(create_alias_options => $create_alias_options)

Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.

Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached

### Example 
```perl
use Data::Dumper;
use MailSlurp::AliasControllerApi;
my $api_instance = MailSlurp::AliasControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_alias_options = MailSlurp::Object::CreateAliasOptions->new(); # CreateAliasOptions | createAliasOptions

eval { 
    my $result = $api_instance->create_alias(create_alias_options => $create_alias_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AliasControllerApi->create_alias: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_alias_options** | [**CreateAliasOptions**](CreateAliasOptions.md)| createAliasOptions | 

### Return type

[**AliasDto**](AliasDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_alias**
> delete_alias(alias_id => $alias_id)

Delete an email alias

### Example 
```perl
use Data::Dumper;
use MailSlurp::AliasControllerApi;
my $api_instance = MailSlurp::AliasControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $alias_id = null; # string | aliasId

eval { 
    $api_instance->delete_alias(alias_id => $alias_id);
};
if ($@) {
    warn "Exception when calling AliasControllerApi->delete_alias: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**string**](.md)| aliasId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_alias**
> AliasDto get_alias(alias_id => $alias_id)

Get an email alias

Get an email alias by ID

### Example 
```perl
use Data::Dumper;
use MailSlurp::AliasControllerApi;
my $api_instance = MailSlurp::AliasControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $alias_id = null; # string | aliasId

eval { 
    my $result = $api_instance->get_alias(alias_id => $alias_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AliasControllerApi->get_alias: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**string**](.md)| aliasId | 

### Return type

[**AliasDto**](AliasDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_alias_emails**
> PageEmailProjection get_alias_emails(alias_id => $alias_id, page => $page, size => $size, sort => $sort)

Get emails for an alias

Get paginated emails for an alias by ID

### Example 
```perl
use Data::Dumper;
use MailSlurp::AliasControllerApi;
my $api_instance = MailSlurp::AliasControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $alias_id = null; # string | aliasId
my $page = 0; # int | Optional page index alias email list pagination
my $size = 20; # int | Optional page size alias email list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_alias_emails(alias_id => $alias_id, page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AliasControllerApi->get_alias_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**string**](.md)| aliasId | 
 **page** | **int**| Optional page index alias email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size alias email list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageEmailProjection**](PageEmailProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_alias_threads**
> PageThreadProjection get_alias_threads(alias_id => $alias_id, page => $page, size => $size, sort => $sort)

Get threads created for an alias

Returns threads created for an email alias in paginated form

### Example 
```perl
use Data::Dumper;
use MailSlurp::AliasControllerApi;
my $api_instance = MailSlurp::AliasControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $alias_id = null; # string | aliasId
my $page = 0; # int | Optional page index in thread list pagination
my $size = 20; # int | Optional page size in thread list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_alias_threads(alias_id => $alias_id, page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AliasControllerApi->get_alias_threads: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**string**](.md)| aliasId | 
 **page** | **int**| Optional page index in thread list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in thread list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageThreadProjection**](PageThreadProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_aliases**
> PageAlias get_aliases(page => $page, size => $size, sort => $sort)

Get all email aliases you have created

Get all email aliases in paginated form

### Example 
```perl
use Data::Dumper;
use MailSlurp::AliasControllerApi;
my $api_instance = MailSlurp::AliasControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index in alias list pagination
my $size = 20; # int | Optional page size in alias list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_aliases(page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AliasControllerApi->get_aliases: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in alias list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in alias list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageAlias**](PageAlias.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reply_to_alias_email**
> SentEmailDto reply_to_alias_email(alias_id => $alias_id, email_id => $email_id, reply_to_alias_email_options => $reply_to_alias_email_options)

Reply to an email

Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.

### Example 
```perl
use Data::Dumper;
use MailSlurp::AliasControllerApi;
my $api_instance = MailSlurp::AliasControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $alias_id = null; # string | ID of the alias that email belongs to
my $email_id = null; # string | ID of the email that should be replied to
my $reply_to_alias_email_options = MailSlurp::Object::ReplyToAliasEmailOptions->new(); # ReplyToAliasEmailOptions | replyToAliasEmailOptions

eval { 
    my $result = $api_instance->reply_to_alias_email(alias_id => $alias_id, email_id => $email_id, reply_to_alias_email_options => $reply_to_alias_email_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AliasControllerApi->reply_to_alias_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**string**](.md)| ID of the alias that email belongs to | 
 **email_id** | [**string**](.md)| ID of the email that should be replied to | 
 **reply_to_alias_email_options** | [**ReplyToAliasEmailOptions**](ReplyToAliasEmailOptions.md)| replyToAliasEmailOptions | 

### Return type

[**SentEmailDto**](SentEmailDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_alias_email**
> SentEmailDto send_alias_email(alias_id => $alias_id, send_email_options => $send_email_options)

Send an email from an alias inbox

Send an email from an alias. Replies to the email will be forwarded to the alias masked email address

### Example 
```perl
use Data::Dumper;
use MailSlurp::AliasControllerApi;
my $api_instance = MailSlurp::AliasControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $alias_id = null; # string | aliasId
my $send_email_options = MailSlurp::Object::SendEmailOptions->new(); # SendEmailOptions | Options for the email to be sent

eval { 
    my $result = $api_instance->send_alias_email(alias_id => $alias_id, send_email_options => $send_email_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AliasControllerApi->send_alias_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**string**](.md)| aliasId | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions.md)| Options for the email to be sent | [optional] 

### Return type

[**SentEmailDto**](SentEmailDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_alias**
> update_alias(alias_id => $alias_id, update_alias_options => $update_alias_options)

Update an email alias

### Example 
```perl
use Data::Dumper;
use MailSlurp::AliasControllerApi;
my $api_instance = MailSlurp::AliasControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $alias_id = null; # string | aliasId
my $update_alias_options = MailSlurp::Object::UpdateAliasOptions->new(); # UpdateAliasOptions | updateAliasOptions

eval { 
    $api_instance->update_alias(alias_id => $alias_id, update_alias_options => $update_alias_options);
};
if ($@) {
    warn "Exception when calling AliasControllerApi->update_alias: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**string**](.md)| aliasId | 
 **update_alias_options** | [**UpdateAliasOptions**](UpdateAliasOptions.md)| updateAliasOptions | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

