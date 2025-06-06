# MailSlurp::BounceControllerApi

## Load the API package
```perl
use MailSlurp::Object::BounceControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**filter_bounced_recipient**](BounceControllerApi#filter_bounced_recipient) | **POST** /bounce/filter-recipients | Filter a list of email recipients and remove those who have bounced
[**get_account_bounce_block_status**](BounceControllerApi#get_account_bounce_block_status) | **GET** /bounce/account-block | Can account send email
[**get_bounced_email**](BounceControllerApi#get_bounced_email) | **GET** /bounce/emails/{id} | Get a bounced email.
[**get_bounced_emails**](BounceControllerApi#get_bounced_emails) | **GET** /bounce/emails | Get paginated list of bounced emails.
[**get_bounced_recipient**](BounceControllerApi#get_bounced_recipient) | **GET** /bounce/recipients/{id} | Get a bounced email.
[**get_bounced_recipients**](BounceControllerApi#get_bounced_recipients) | **GET** /bounce/recipients | Get paginated list of bounced recipients.
[**get_complaint**](BounceControllerApi#get_complaint) | **GET** /bounce/complaints/{id} | Get complaint
[**get_complaints**](BounceControllerApi#get_complaints) | **GET** /bounce/complaints | Get paginated list of complaints.
[**get_list_unsubscribe_recipients**](BounceControllerApi#get_list_unsubscribe_recipients) | **GET** /bounce/list-unsubscribe-recipients | Get paginated list of unsubscribed recipients.
[**get_reputation_items**](BounceControllerApi#get_reputation_items) | **GET** /bounce/reputation-items | Get paginated list of reputation items.


# **filter_bounced_recipient**
> FilterBouncedRecipientsResult filter_bounced_recipient(filter_bounced_recipients_options => $filter_bounced_recipients_options)

Filter a list of email recipients and remove those who have bounced

Prevent email sending errors by remove recipients who have resulted in past email bounces or complaints

### Example 
```perl
use Data::Dumper;
use MailSlurp::BounceControllerApi;
my $api_instance = MailSlurp::BounceControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $filter_bounced_recipients_options = MailSlurp::Object::FilterBouncedRecipientsOptions->new(); # FilterBouncedRecipientsOptions | 

eval { 
    my $result = $api_instance->filter_bounced_recipient(filter_bounced_recipients_options => $filter_bounced_recipients_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BounceControllerApi->filter_bounced_recipient: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_bounced_recipients_options** | [**FilterBouncedRecipientsOptions**](FilterBouncedRecipientsOptions)|  | 

### Return type

[**FilterBouncedRecipientsResult**](FilterBouncedRecipientsResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_account_bounce_block_status**
> AccountBounceBlockDto get_account_bounce_block_status()

Can account send email

Check if account block status prevents sending

### Example 
```perl
use Data::Dumper;
use MailSlurp::BounceControllerApi;
my $api_instance = MailSlurp::BounceControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_account_bounce_block_status();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BounceControllerApi->get_account_bounce_block_status: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccountBounceBlockDto**](AccountBounceBlockDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_bounced_email**
> BouncedEmailDto get_bounced_email(id => $id)

Get a bounced email.

Bounced emails are email you have sent that were rejected by a recipient

### Example 
```perl
use Data::Dumper;
use MailSlurp::BounceControllerApi;
my $api_instance = MailSlurp::BounceControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of the bounced email to fetch

eval { 
    my $result = $api_instance->get_bounced_email(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BounceControllerApi->get_bounced_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of the bounced email to fetch | 

### Return type

[**BouncedEmailDto**](BouncedEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_bounced_emails**
> PageBouncedEmail get_bounced_emails(page => $page, size => $size, sort => $sort, since => $since, before => $before)

Get paginated list of bounced emails.

Bounced emails are email you have sent that were rejected by a recipient

### Example 
```perl
use Data::Dumper;
use MailSlurp::BounceControllerApi;
my $api_instance = MailSlurp::BounceControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index
my $size = 20; # int | Optional page size 
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_bounced_emails(page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BounceControllerApi->get_bounced_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index | [optional] [default to 0]
 **size** | **int**| Optional page size  | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageBouncedEmail**](PageBouncedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_bounced_recipient**
> BouncedRecipientDto get_bounced_recipient(id => $id)

Get a bounced email.

Bounced emails are email you have sent that were rejected by a recipient

### Example 
```perl
use Data::Dumper;
use MailSlurp::BounceControllerApi;
my $api_instance = MailSlurp::BounceControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of the bounced recipient

eval { 
    my $result = $api_instance->get_bounced_recipient(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BounceControllerApi->get_bounced_recipient: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of the bounced recipient | 

### Return type

[**BouncedRecipientDto**](BouncedRecipientDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_bounced_recipients**
> PageBouncedRecipients get_bounced_recipients(page => $page, size => $size, sort => $sort, since => $since, before => $before)

Get paginated list of bounced recipients.

Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.

### Example 
```perl
use Data::Dumper;
use MailSlurp::BounceControllerApi;
my $api_instance = MailSlurp::BounceControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index 
my $size = 20; # int | Optional page size 
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_bounced_recipients(page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BounceControllerApi->get_bounced_recipients: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index  | [optional] [default to 0]
 **size** | **int**| Optional page size  | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageBouncedRecipients**](PageBouncedRecipients)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_complaint**
> Complaint get_complaint(id => $id)

Get complaint

Get complaint

### Example 
```perl
use Data::Dumper;
use MailSlurp::BounceControllerApi;
my $api_instance = MailSlurp::BounceControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = null; # string | ID of the complaint

eval { 
    my $result = $api_instance->get_complaint(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BounceControllerApi->get_complaint: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**string**]()| ID of the complaint | 

### Return type

[**Complaint**](Complaint)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_complaints**
> PageComplaint get_complaints(page => $page, size => $size, sort => $sort, since => $since, before => $before)

Get paginated list of complaints.

SMTP complaints made against your account

### Example 
```perl
use Data::Dumper;
use MailSlurp::BounceControllerApi;
my $api_instance = MailSlurp::BounceControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index 
my $size = 20; # int | Optional page size 
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_complaints(page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BounceControllerApi->get_complaints: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index  | [optional] [default to 0]
 **size** | **int**| Optional page size  | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageComplaint**](PageComplaint)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_list_unsubscribe_recipients**
> PageListUnsubscribeRecipients get_list_unsubscribe_recipients(page => $page, size => $size, sort => $sort, domain_id => $domain_id)

Get paginated list of unsubscribed recipients.

Unsubscribed recipient have unsubscribed from a mailing list for a user or domain and cannot be contacted again.

### Example 
```perl
use Data::Dumper;
use MailSlurp::BounceControllerApi;
my $api_instance = MailSlurp::BounceControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index
my $size = 20; # int | Optional page size 
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $domain_id = null; # string | Filter by domainId

eval { 
    my $result = $api_instance->get_list_unsubscribe_recipients(page => $page, size => $size, sort => $sort, domain_id => $domain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BounceControllerApi->get_list_unsubscribe_recipients: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index | [optional] [default to 0]
 **size** | **int**| Optional page size  | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **domain_id** | [**string**]()| Filter by domainId | [optional] 

### Return type

[**PageListUnsubscribeRecipients**](PageListUnsubscribeRecipients)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_reputation_items**
> PageReputationItems get_reputation_items(page => $page, size => $size, sort => $sort, since => $since, before => $before)

Get paginated list of reputation items.

List of complaints and bounces

### Example 
```perl
use Data::Dumper;
use MailSlurp::BounceControllerApi;
my $api_instance = MailSlurp::BounceControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $page = 0; # int | Optional page index
my $size = 20; # int | Optional page size
my $sort = 'DESC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_reputation_items(page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BounceControllerApi->get_reputation_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index | [optional] [default to 0]
 **size** | **int**| Optional page size | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;DESC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageReputationItems**](PageReputationItems)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

