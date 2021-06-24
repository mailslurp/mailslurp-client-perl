# MailSlurp::MissedEmailControllerApi

## Load the API package
```perl
use MailSlurp::Object::MissedEmailControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_missed_emails**](MissedEmailControllerApi#get_all_missed_emails) | **GET** /missed-emails | Get all MissedEmails in paginated format
[**get_missed_email**](MissedEmailControllerApi#get_missed_email) | **GET** /missed-emails/{MissedEmailId} | Get MissedEmail


# **get_all_missed_emails**
> PageMissedEmailProjection get_all_missed_emails(page => $page, search_filter => $search_filter, size => $size, sort => $sort)

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

my $page = 0; # int | Optional page index in inbox list pagination
my $search_filter = "search_filter_example"; # string | Optional search filter
my $size = 20; # int | Optional page size in inbox list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_all_missed_emails(page => $page, search_filter => $search_filter, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MissedEmailControllerApi->get_all_missed_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter | [optional] 
 **size** | **int**| Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageMissedEmailProjection**](PageMissedEmailProjection)

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

my $missed_email_id = null; # string | MissedEmailId

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
 **missed_email_id** | [**string**]()| MissedEmailId | 

### Return type

[**MissedEmail**](MissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

