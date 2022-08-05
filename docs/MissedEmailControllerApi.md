# MailSlurp::MissedEmailControllerApi

## Load the API package
```perl
use MailSlurp::Object::MissedEmailControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_missed_emails**](MissedEmailControllerApi#get_all_missed_emails) | **GET** /missed-emails | Get all MissedEmails in paginated format
[**get_all_unknown_missed_emails**](MissedEmailControllerApi#get_all_unknown_missed_emails) | **GET** /missed-emails/unknown | Get all unknown missed emails in paginated format
[**get_missed_email**](MissedEmailControllerApi#get_missed_email) | **GET** /missed-emails/{missedEmailId} | Get MissedEmail
[**restore_missed_emails**](MissedEmailControllerApi#restore_missed_emails) | **POST** /missed-emails/restore | Restore missed emails
[**wait_for_nth_missed_email**](MissedEmailControllerApi#wait_for_nth_missed_email) | **GET** /missed-emails/waitForNthMissedEmail | Wait for Nth missed email


# **get_all_missed_emails**
> PageMissedEmailProjection get_all_missed_emails(page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before, inbox_id => $inbox_id)

Get all MissedEmails in paginated format

### Example 
```perl
use Data::Dumper;
use MailSlurp::MissedEmailControllerApi;
my $api_instance = MailSlurp::MissedEmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $inbox_id = null; # string | Optional inbox ID filter

eval { 
    my $result = $api_instance->get_all_missed_emails(page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before, inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MissedEmailControllerApi->get_all_missed_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **inbox_id** | [**string**]()| Optional inbox ID filter | [optional] 

### Return type

[**PageMissedEmailProjection**](PageMissedEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_unknown_missed_emails**
> PageUnknownMissedEmailProjection get_all_unknown_missed_emails(page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before, inbox_id => $inbox_id)

Get all unknown missed emails in paginated format

Unknown missed emails are emails that were sent to MailSlurp but could not be assigned to an existing inbox.

### Example 
```perl
use Data::Dumper;
use MailSlurp::MissedEmailControllerApi;
my $api_instance = MailSlurp::MissedEmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $inbox_id = null; # string | Optional inbox ID filter

eval { 
    my $result = $api_instance->get_all_unknown_missed_emails(page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before, inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MissedEmailControllerApi->get_all_unknown_missed_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **inbox_id** | [**string**]()| Optional inbox ID filter | [optional] 

### Return type

[**PageUnknownMissedEmailProjection**](PageUnknownMissedEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_missed_email**
> MissedEmail get_missed_email(missed_email_id => $missed_email_id)

Get MissedEmail

List emails that were missed due to plan limits.

### Example 
```perl
use Data::Dumper;
use MailSlurp::MissedEmailControllerApi;
my $api_instance = MailSlurp::MissedEmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $missed_email_id = null; # string | 

eval { 
    my $result = $api_instance->get_missed_email(missed_email_id => $missed_email_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MissedEmailControllerApi->get_missed_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **missed_email_id** | [**string**]()|  | 

### Return type

[**MissedEmail**](MissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **restore_missed_emails**
> restore_missed_emails()

Restore missed emails

If emails were missed due to a plan limit they are saved as missed emails. If support team enables the canRestore flag these emails can be reload into your account using this method.

### Example 
```perl
use Data::Dumper;
use MailSlurp::MissedEmailControllerApi;
my $api_instance = MailSlurp::MissedEmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    $api_instance->restore_missed_emails();
};
if ($@) {
    warn "Exception when calling MissedEmailControllerApi->restore_missed_emails: $@\n";
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

# **wait_for_nth_missed_email**
> MissedEmail wait_for_nth_missed_email(index => $index, inbox_id => $inbox_id, timeout => $timeout, since => $since, before => $before)

Wait for Nth missed email

Wait for 0 based index missed email

### Example 
```perl
use Data::Dumper;
use MailSlurp::MissedEmailControllerApi;
my $api_instance = MailSlurp::MissedEmailControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $index = 56; # int | Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index=1
my $inbox_id = null; # string | Optional inbox ID filter
my $timeout = 789; # int | Optional timeout milliseconds
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->wait_for_nth_missed_email(index => $index, inbox_id => $inbox_id, timeout => $timeout, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MissedEmailControllerApi->wait_for_nth_missed_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index** | **int**| Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index&#x3D;1 | 
 **inbox_id** | [**string**]()| Optional inbox ID filter | [optional] 
 **timeout** | **int**| Optional timeout milliseconds | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**MissedEmail**](MissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

