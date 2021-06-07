# MailSlurp::CommonActionsControllerApi

## Load the API package
```perl
use MailSlurp::Object::CommonActionsControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_email_address**](CommonActionsControllerApi#create_new_email_address) | **POST** /createInbox | Create new random inbox
[**create_new_email_address1**](CommonActionsControllerApi#create_new_email_address1) | **POST** /newEmailAddress | Create new random inbox
[**empty_inbox**](CommonActionsControllerApi#empty_inbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
[**send_email_simple**](CommonActionsControllerApi#send_email_simple) | **POST** /sendEmail | Send an email


# **create_new_email_address**
> Inbox create_new_email_address(allow_team_access => $allow_team_access, expires_at => $expires_at, expires_in => $expires_in, use_domain_pool => $use_domain_pool)

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

my $allow_team_access = null; # boolean | allowTeamAccess
my $expires_at = DateTime->from_epoch(epoch => str2time('null')); # DateTime | expiresAt
my $expires_in = 789; # int | expiresIn
my $use_domain_pool = null; # boolean | useDomainPool

eval { 
    my $result = $api_instance->create_new_email_address(allow_team_access => $allow_team_access, expires_at => $expires_at, expires_in => $expires_in, use_domain_pool => $use_domain_pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CommonActionsControllerApi->create_new_email_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allow_team_access** | **boolean**| allowTeamAccess | [optional] 
 **expires_at** | **DateTime**| expiresAt | [optional] 
 **expires_in** | **int**| expiresIn | [optional] 
 **use_domain_pool** | **boolean**| useDomainPool | [optional] 

### Return type

[**Inbox**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_new_email_address1**
> Inbox create_new_email_address1(allow_team_access => $allow_team_access, expires_at => $expires_at, expires_in => $expires_in, use_domain_pool => $use_domain_pool)

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

my $allow_team_access = null; # boolean | allowTeamAccess
my $expires_at = DateTime->from_epoch(epoch => str2time('null')); # DateTime | expiresAt
my $expires_in = 789; # int | expiresIn
my $use_domain_pool = null; # boolean | useDomainPool

eval { 
    my $result = $api_instance->create_new_email_address1(allow_team_access => $allow_team_access, expires_at => $expires_at, expires_in => $expires_in, use_domain_pool => $use_domain_pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CommonActionsControllerApi->create_new_email_address1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allow_team_access** | **boolean**| allowTeamAccess | [optional] 
 **expires_at** | **DateTime**| expiresAt | [optional] 
 **expires_in** | **int**| expiresIn | [optional] 
 **use_domain_pool** | **boolean**| useDomainPool | [optional] 

### Return type

[**Inbox**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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

my $inbox_id = null; # string | inboxId

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
 **inbox_id** | [**string**]()| inboxId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_email_simple**
> send_email_simple(email_options => $email_options)

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

my $email_options = MailSlurp::Object::SimpleSendEmailOptions->new(); # SimpleSendEmailOptions | emailOptions

eval { 
    $api_instance->send_email_simple(email_options => $email_options);
};
if ($@) {
    warn "Exception when calling CommonActionsControllerApi->send_email_simple: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_options** | [**SimpleSendEmailOptions**](SimpleSendEmailOptions)| emailOptions | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

