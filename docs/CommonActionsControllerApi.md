# MailSlurp::CommonActionsControllerApi

## Load the API package
```perl
use MailSlurp::Object::CommonActionsControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_email_address**](CommonActionsControllerApi#create_new_email_address) | **POST** /newEmailAddress | Create new random inbox
[**create_random_inbox**](CommonActionsControllerApi#create_random_inbox) | **POST** /createInbox | Create new random inbox
[**delete_email_address**](CommonActionsControllerApi#delete_email_address) | **DELETE** /deleteEmailAddress | Delete inbox email address by inbox id
[**empty_inbox**](CommonActionsControllerApi#empty_inbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
[**send_email_query**](CommonActionsControllerApi#send_email_query) | **POST** /sendEmailQuery | Send an email using query parameters
[**send_email_simple**](CommonActionsControllerApi#send_email_simple) | **POST** /sendEmail | Send an email


# **create_new_email_address**
> InboxDto create_new_email_address(allow_team_access => $allow_team_access, use_domain_pool => $use_domain_pool, expires_at => $expires_at, expires_in => $expires_in, email_address => $email_address, inbox_type => $inbox_type, description => $description, name => $name, tags => $tags, favourite => $favourite, virtual_inbox => $virtual_inbox, use_short_address => $use_short_address, domain_name => $domain_name, domain_id => $domain_id, prefix => $prefix)

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example 
```perl
use Data::Dumper;
use MailSlurp::CommonActionsControllerApi;
my $api_instance = MailSlurp::CommonActionsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $allow_team_access = null; # boolean | 
my $use_domain_pool = null; # boolean | 
my $expires_at = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $expires_in = 789; # int | 
my $email_address = "email_address_example"; # string | 
my $inbox_type = "inbox_type_example"; # string | 
my $description = "description_example"; # string | 
my $name = "name_example"; # string | 
my $tags = [("null")]; # ARRAY[string] | 
my $favourite = null; # boolean | 
my $virtual_inbox = null; # boolean | 
my $use_short_address = null; # boolean | 
my $domain_name = "domain_name_example"; # string | 
my $domain_id = null; # string | 
my $prefix = "prefix_example"; # string | 

eval { 
    my $result = $api_instance->create_new_email_address(allow_team_access => $allow_team_access, use_domain_pool => $use_domain_pool, expires_at => $expires_at, expires_in => $expires_in, email_address => $email_address, inbox_type => $inbox_type, description => $description, name => $name, tags => $tags, favourite => $favourite, virtual_inbox => $virtual_inbox, use_short_address => $use_short_address, domain_name => $domain_name, domain_id => $domain_id, prefix => $prefix);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CommonActionsControllerApi->create_new_email_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allow_team_access** | **boolean**|  | [optional] 
 **use_domain_pool** | **boolean**|  | [optional] 
 **expires_at** | **DateTime**|  | [optional] 
 **expires_in** | **int**|  | [optional] 
 **email_address** | **string**|  | [optional] 
 **inbox_type** | **string**|  | [optional] 
 **description** | **string**|  | [optional] 
 **name** | **string**|  | [optional] 
 **tags** | [**ARRAY[string]**](string)|  | [optional] 
 **favourite** | **boolean**|  | [optional] 
 **virtual_inbox** | **boolean**|  | [optional] 
 **use_short_address** | **boolean**|  | [optional] 
 **domain_name** | **string**|  | [optional] 
 **domain_id** | [**string**]()|  | [optional] 
 **prefix** | **string**|  | [optional] 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_random_inbox**
> InboxDto create_random_inbox(allow_team_access => $allow_team_access, use_domain_pool => $use_domain_pool, expires_at => $expires_at, expires_in => $expires_in, email_address => $email_address, inbox_type => $inbox_type, description => $description, name => $name, tags => $tags, favourite => $favourite, virtual_inbox => $virtual_inbox, use_short_address => $use_short_address, domain_name => $domain_name, domain_id => $domain_id, prefix => $prefix)

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example 
```perl
use Data::Dumper;
use MailSlurp::CommonActionsControllerApi;
my $api_instance = MailSlurp::CommonActionsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $allow_team_access = null; # boolean | 
my $use_domain_pool = null; # boolean | 
my $expires_at = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $expires_in = 789; # int | 
my $email_address = "email_address_example"; # string | 
my $inbox_type = "inbox_type_example"; # string | 
my $description = "description_example"; # string | 
my $name = "name_example"; # string | 
my $tags = [("null")]; # ARRAY[string] | 
my $favourite = null; # boolean | 
my $virtual_inbox = null; # boolean | 
my $use_short_address = null; # boolean | 
my $domain_name = "domain_name_example"; # string | 
my $domain_id = null; # string | 
my $prefix = "prefix_example"; # string | 

eval { 
    my $result = $api_instance->create_random_inbox(allow_team_access => $allow_team_access, use_domain_pool => $use_domain_pool, expires_at => $expires_at, expires_in => $expires_in, email_address => $email_address, inbox_type => $inbox_type, description => $description, name => $name, tags => $tags, favourite => $favourite, virtual_inbox => $virtual_inbox, use_short_address => $use_short_address, domain_name => $domain_name, domain_id => $domain_id, prefix => $prefix);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CommonActionsControllerApi->create_random_inbox: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allow_team_access** | **boolean**|  | [optional] 
 **use_domain_pool** | **boolean**|  | [optional] 
 **expires_at** | **DateTime**|  | [optional] 
 **expires_in** | **int**|  | [optional] 
 **email_address** | **string**|  | [optional] 
 **inbox_type** | **string**|  | [optional] 
 **description** | **string**|  | [optional] 
 **name** | **string**|  | [optional] 
 **tags** | [**ARRAY[string]**](string)|  | [optional] 
 **favourite** | **boolean**|  | [optional] 
 **virtual_inbox** | **boolean**|  | [optional] 
 **use_short_address** | **boolean**|  | [optional] 
 **domain_name** | **string**|  | [optional] 
 **domain_id** | [**string**]()|  | [optional] 
 **prefix** | **string**|  | [optional] 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_email_address**
> delete_email_address(inbox_id => $inbox_id)

Delete inbox email address by inbox id

Deletes inbox email address

### Example 
```perl
use Data::Dumper;
use MailSlurp::CommonActionsControllerApi;
my $api_instance = MailSlurp::CommonActionsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | ID of inbox to delete

eval { 
    $api_instance->delete_email_address(inbox_id => $inbox_id);
};
if ($@) {
    warn "Exception when calling CommonActionsControllerApi->delete_email_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of inbox to delete | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **empty_inbox**
> empty_inbox(inbox_id => $inbox_id)

Delete all emails in an inbox

Deletes all emails

### Example 
```perl
use Data::Dumper;
use MailSlurp::CommonActionsControllerApi;
my $api_instance = MailSlurp::CommonActionsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | ID of inbox to empty

eval { 
    $api_instance->empty_inbox(inbox_id => $inbox_id);
};
if ($@) {
    warn "Exception when calling CommonActionsControllerApi->empty_inbox: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of inbox to empty | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_email_query**
> send_email_query(to => $to, sender_id => $sender_id, body => $body, subject => $subject)

Send an email using query parameters

If no senderId or inboxId provided a random email address will be used to send from. Ensure your parameters are URL encoded.

### Example 
```perl
use Data::Dumper;
use MailSlurp::CommonActionsControllerApi;
my $api_instance = MailSlurp::CommonActionsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $to = "to_example"; # string | Email address to send to
my $sender_id = null; # string | ID of inbox to send from. If null an inbox will be created for sending
my $body = "body_example"; # string | Body of the email message. Supports HTML
my $subject = "subject_example"; # string | Subject line of the email

eval { 
    $api_instance->send_email_query(to => $to, sender_id => $sender_id, body => $body, subject => $subject);
};
if ($@) {
    warn "Exception when calling CommonActionsControllerApi->send_email_query: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **to** | **string**| Email address to send to | 
 **sender_id** | [**string**]()| ID of inbox to send from. If null an inbox will be created for sending | [optional] 
 **body** | **string**| Body of the email message. Supports HTML | [optional] 
 **subject** | **string**| Subject line of the email | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_email_simple**
> send_email_simple(simple_send_email_options => $simple_send_email_options)

Send an email

If no senderId or inboxId provided a random email address will be used to send from.

### Example 
```perl
use Data::Dumper;
use MailSlurp::CommonActionsControllerApi;
my $api_instance = MailSlurp::CommonActionsControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $simple_send_email_options = MailSlurp::Object::SimpleSendEmailOptions->new(); # SimpleSendEmailOptions | 

eval { 
    $api_instance->send_email_simple(simple_send_email_options => $simple_send_email_options);
};
if ($@) {
    warn "Exception when calling CommonActionsControllerApi->send_email_simple: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **simple_send_email_options** | [**SimpleSendEmailOptions**](SimpleSendEmailOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

