# MailSlurp::AliasControllerApi

## Load the API package
```perl
use MailSlurp::Object::AliasControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_alias**](AliasControllerApi#create_alias) | **POST** /aliases | Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
[**delete_alias**](AliasControllerApi#delete_alias) | **DELETE** /aliases/{aliasId} | Delete an email alias
[**get_alias**](AliasControllerApi#get_alias) | **GET** /aliases/{aliasId} | Get an email alias
[**get_alias_emails**](AliasControllerApi#get_alias_emails) | **GET** /aliases/{aliasId}/emails | Get emails for an alias
[**get_alias_threads**](AliasControllerApi#get_alias_threads) | **GET** /aliases/{aliasId}/threads | Get threads created for an alias
[**get_aliases**](AliasControllerApi#get_aliases) | **GET** /aliases | Get all email aliases you have created
[**get_thread**](AliasControllerApi#get_thread) | **GET** /aliases/threads/{threadId} | Get a thread
[**get_threads_paginated**](AliasControllerApi#get_threads_paginated) | **GET** /aliases/threads | Get all threads
[**reply_to_alias_email**](AliasControllerApi#reply_to_alias_email) | **PUT** /aliases/{aliasId}/emails/{emailId} | Reply to an email
[**send_alias_email**](AliasControllerApi#send_alias_email) | **POST** /aliases/{aliasId}/emails | Send an email from an alias inbox
[**update_alias**](AliasControllerApi#update_alias) | **PUT** /aliases/{aliasId} | Update an email alias


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

my $create_alias_options = MailSlurp::Object::CreateAliasOptions->new(); # CreateAliasOptions | 

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
 **create_alias_options** | [**CreateAliasOptions**](CreateAliasOptions)|  | 

### Return type

[**AliasDto**](AliasDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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

my $alias_id = null; # string | 

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
 **alias_id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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

my $alias_id = null; # string | 

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
 **alias_id** | [**string**]()|  | 

### Return type

[**AliasDto**](AliasDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_alias_emails**
> PageEmailProjection get_alias_emails(alias_id => $alias_id, page => $page, size => $size, sort => $sort, since => $since, before => $before)

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

my $alias_id = null; # string | 
my $page = 0; # int | Optional page index alias email list pagination
my $size = 20; # int | Optional page size alias email list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by sent after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by sent before given date time

eval { 
    my $result = $api_instance->get_alias_emails(alias_id => $alias_id, page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AliasControllerApi->get_alias_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**string**]()|  | 
 **page** | **int**| Optional page index alias email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size alias email list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter by sent after given date time | [optional] 
 **before** | **DateTime**| Optional filter by sent before given date time | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_alias_threads**
> PageThreadProjection get_alias_threads(alias_id => $alias_id, page => $page, size => $size, sort => $sort, since => $since, before => $before)

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

my $alias_id = null; # string | 
my $page = 0; # int | Optional page index in thread list pagination
my $size = 20; # int | Optional page size in thread list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by sent after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by sent before given date time

eval { 
    my $result = $api_instance->get_alias_threads(alias_id => $alias_id, page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AliasControllerApi->get_alias_threads: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**string**]()|  | 
 **page** | **int**| Optional page index in thread list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in thread list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter by sent after given date time | [optional] 
 **before** | **DateTime**| Optional filter by sent before given date time | [optional] 

### Return type

[**PageThreadProjection**](PageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_aliases**
> PageAlias get_aliases(search => $search, page => $page, size => $size, sort => $sort, since => $since, before => $before)

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

my $search = "search_example"; # string | Optional search term
my $page = 0; # int | Optional page index in alias list pagination
my $size = 20; # int | Optional page size in alias list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_aliases(search => $search, page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AliasControllerApi->get_aliases: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **string**| Optional search term | [optional] 
 **page** | **int**| Optional page index in alias list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in alias list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageAlias**](PageAlias)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_thread**
> ThreadProjection get_thread(thread_id => $thread_id)

Get a thread

Return a thread associated with an alias

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

my $thread_id = null; # string | 

eval { 
    my $result = $api_instance->get_thread(thread_id => $thread_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AliasControllerApi->get_thread: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thread_id** | [**string**]()|  | 

### Return type

[**ThreadProjection**](ThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_threads_paginated**
> PageThreadProjection get_threads_paginated(page => $page, size => $size, sort => $sort, since => $since, before => $before)

Get all threads

Returns threads created for all aliases in paginated form

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

my $page = 0; # int | Optional page index in thread list pagination
my $size = 20; # int | Optional page size in thread list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by sent after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by sent before given date time

eval { 
    my $result = $api_instance->get_threads_paginated(page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AliasControllerApi->get_threads_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in thread list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in thread list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter by sent after given date time | [optional] 
 **before** | **DateTime**| Optional filter by sent before given date time | [optional] 

### Return type

[**PageThreadProjection**](PageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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
my $reply_to_alias_email_options = MailSlurp::Object::ReplyToAliasEmailOptions->new(); # ReplyToAliasEmailOptions | 

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
 **alias_id** | [**string**]()| ID of the alias that email belongs to | 
 **email_id** | [**string**]()| ID of the email that should be replied to | 
 **reply_to_alias_email_options** | [**ReplyToAliasEmailOptions**](ReplyToAliasEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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

my $alias_id = null; # string | 
my $send_email_options = MailSlurp::Object::SendEmailOptions->new(); # SendEmailOptions | 

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
 **alias_id** | [**string**]()|  | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_alias**
> AliasDto update_alias(alias_id => $alias_id, update_alias_options => $update_alias_options)

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

my $alias_id = null; # string | 
my $update_alias_options = MailSlurp::Object::UpdateAliasOptions->new(); # UpdateAliasOptions | 

eval { 
    my $result = $api_instance->update_alias(alias_id => $alias_id, update_alias_options => $update_alias_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AliasControllerApi->update_alias: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**string**]()|  | 
 **update_alias_options** | [**UpdateAliasOptions**](UpdateAliasOptions)|  | 

### Return type

[**AliasDto**](AliasDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

