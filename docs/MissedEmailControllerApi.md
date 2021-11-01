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
[**wait_for_nth_missed_email**](MissedEmailControllerApi#wait_for_nth_missed_email) | **GET** /missed-emails/waitForNthMissedEmail | Wait for Nth missed email


# **get_all_missed_emails**
> PageMissedEmailProjection get_all_missed_emails(before => $before, inbox_id => $inbox_id, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort)

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

my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $inbox_id = null; # string | Optional inbox ID filter
my $page = 0; # int | Optional page index in list pagination
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_all_missed_emails(before => $before, inbox_id => $inbox_id, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MissedEmailControllerApi->get_all_missed_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **inbox_id** | [**string**]()| Optional inbox ID filter | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageMissedEmailProjection**](PageMissedEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_unknown_missed_emails**
> PageUnknownMissedEmailProjection get_all_unknown_missed_emails(before => $before, inbox_id => $inbox_id, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort)

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

my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $inbox_id = null; # string | Optional inbox ID filter
my $page = 0; # int | Optional page index in list pagination
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_all_unknown_missed_emails(before => $before, inbox_id => $inbox_id, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MissedEmailControllerApi->get_all_unknown_missed_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **inbox_id** | [**string**]()| Optional inbox ID filter | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageUnknownMissedEmailProjection**](PageUnknownMissedEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_missed_email**
> MissedEmail get_missed_email(missed_email_id => $missed_email_id)

Get MissedEmail

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

my $missed_email_id = null; # string | missedEmailId

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
 **missed_email_id** | [**string**]()| missedEmailId | 

### Return type

[**MissedEmail**](MissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **wait_for_nth_missed_email**
> MissedEmail wait_for_nth_missed_email(before => $before, inbox_id => $inbox_id, index => $index, since => $since, timeout => $timeout)

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

my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $inbox_id = null; # string | Optional inbox ID filter
my $index = 56; # int | Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index=1
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $timeout = 789; # int | Optional timeout milliseconds

eval { 
    my $result = $api_instance->wait_for_nth_missed_email(before => $before, inbox_id => $inbox_id, index => $index, since => $since, timeout => $timeout);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MissedEmailControllerApi->wait_for_nth_missed_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **inbox_id** | [**string**]()| Optional inbox ID filter | [optional] 
 **index** | **int**| Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index&#x3D;1 | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **timeout** | **int**| Optional timeout milliseconds | [optional] 

### Return type

[**MissedEmail**](MissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

