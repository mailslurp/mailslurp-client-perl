# MailSlurp::BounceControllerApi

## Load the API package
```perl
use MailSlurp::Object::BounceControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bounced_email**](BounceControllerApi#get_bounced_email) | **GET** /bounce/emails/{id} | Get a bounced email.
[**get_bounced_emails**](BounceControllerApi#get_bounced_emails) | **GET** /bounce/emails | Get paginated list of bounced emails.
[**get_bounced_recipient**](BounceControllerApi#get_bounced_recipient) | **GET** /bounce/recipients/{id} | Get a bounced email.
[**get_bounced_recipients**](BounceControllerApi#get_bounced_recipients) | **GET** /bounce/recipients | Get paginated list of bounced recipients.


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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_bounced_emails**
> PageBouncedEmail get_bounced_emails(page => $page, size => $size, sort => $sort)

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

eval { 
    my $result = $api_instance->get_bounced_emails(page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BounceControllerApi->get_bounced_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index  | [optional] [default to 0]
 **size** | **int**| Optional page size  | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageBouncedEmail**](PageBouncedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_bounced_recipients**
> PageBouncedRecipients get_bounced_recipients(page => $page, size => $size, sort => $sort)

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

eval { 
    my $result = $api_instance->get_bounced_recipients(page => $page, size => $size, sort => $sort);
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

### Return type

[**PageBouncedRecipients**](PageBouncedRecipients)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

