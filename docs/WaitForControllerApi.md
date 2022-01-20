# MailSlurp::WaitForControllerApi

## Load the API package
```perl
use MailSlurp::Object::WaitForControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**wait_for**](WaitForControllerApi#wait_for) | **POST** /waitFor | Wait for an email to match the provided filter conditions such as subject contains keyword.
[**wait_for_email_count**](WaitForControllerApi#wait_for_email_count) | **GET** /waitForEmailCount | Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
[**wait_for_latest_email**](WaitForControllerApi#wait_for_latest_email) | **GET** /waitForLatestEmail | Fetch inbox&#39;s latest email or if empty wait for an email to arrive
[**wait_for_matching_emails**](WaitForControllerApi#wait_for_matching_emails) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
[**wait_for_matching_first_email**](WaitForControllerApi#wait_for_matching_first_email) | **POST** /waitForMatchingFirstEmail | Wait for or return the first email that matches provided MatchOptions array
[**wait_for_nth_email**](WaitForControllerApi#wait_for_nth_email) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified. If index doesn&#39;t exist waits for it to exist or timeout to occur.


# **wait_for**
> ARRAY[EmailPreview] wait_for(wait_for_conditions => $wait_for_conditions)

Wait for an email to match the provided filter conditions such as subject contains keyword.

Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met

### Example 
```perl
use Data::Dumper;
use MailSlurp::WaitForControllerApi;
my $api_instance = MailSlurp::WaitForControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $wait_for_conditions = MailSlurp::Object::WaitForConditions->new(); # WaitForConditions | 

eval { 
    my $result = $api_instance->wait_for(wait_for_conditions => $wait_for_conditions);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WaitForControllerApi->wait_for: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait_for_conditions** | [**WaitForConditions**](WaitForConditions)|  | 

### Return type

[**ARRAY[EmailPreview]**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **wait_for_email_count**
> ARRAY[EmailPreview] wait_for_email_count(inbox_id => $inbox_id, count => $count, timeout => $timeout, unread_only => $unread_only, before => $before, since => $since, sort => $sort, delay => $delay)

Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs

If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.

### Example 
```perl
use Data::Dumper;
use MailSlurp::WaitForControllerApi;
my $api_instance = MailSlurp::WaitForControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Id of the inbox we are fetching emails from
my $count = 56; # int | Number of emails to wait for. Must be greater that 1
my $timeout = 789; # int | Max milliseconds to wait
my $unread_only = false; # boolean | Optional filter for unread only
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter for emails that were received before the given timestamp
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter for emails that were received after the given timestamp
my $sort = "sort_example"; # string | Sort direction
my $delay = 789; # int | Max milliseconds delay between calls

eval { 
    my $result = $api_instance->wait_for_email_count(inbox_id => $inbox_id, count => $count, timeout => $timeout, unread_only => $unread_only, before => $before, since => $since, sort => $sort, delay => $delay);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WaitForControllerApi->wait_for_email_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Id of the inbox we are fetching emails from | 
 **count** | **int**| Number of emails to wait for. Must be greater that 1 | 
 **timeout** | **int**| Max milliseconds to wait | [optional] 
 **unread_only** | **boolean**| Optional filter for unread only | [optional] [default to false]
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **string**| Sort direction | [optional] 
 **delay** | **int**| Max milliseconds delay between calls | [optional] 

### Return type

[**ARRAY[EmailPreview]**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **wait_for_latest_email**
> Email wait_for_latest_email(inbox_id => $inbox_id, timeout => $timeout, unread_only => $unread_only, before => $before, since => $since, sort => $sort, delay => $delay)

Fetch inbox's latest email or if empty wait for an email to arrive

Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.

### Example 
```perl
use Data::Dumper;
use MailSlurp::WaitForControllerApi;
my $api_instance = MailSlurp::WaitForControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Id of the inbox we are fetching emails from
my $timeout = 789; # int | Max milliseconds to wait
my $unread_only = false; # boolean | Optional filter for unread only.
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter for emails that were before after the given timestamp
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter for emails that were received after the given timestamp
my $sort = "sort_example"; # string | Sort direction
my $delay = 789; # int | Max milliseconds delay between calls

eval { 
    my $result = $api_instance->wait_for_latest_email(inbox_id => $inbox_id, timeout => $timeout, unread_only => $unread_only, before => $before, since => $since, sort => $sort, delay => $delay);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WaitForControllerApi->wait_for_latest_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Id of the inbox we are fetching emails from | [optional] 
 **timeout** | **int**| Max milliseconds to wait | [optional] 
 **unread_only** | **boolean**| Optional filter for unread only. | [optional] [default to false]
 **before** | **DateTime**| Filter for emails that were before after the given timestamp | [optional] 
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **string**| Sort direction | [optional] 
 **delay** | **int**| Max milliseconds delay between calls | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **wait_for_matching_emails**
> ARRAY[EmailPreview] wait_for_matching_emails(inbox_id => $inbox_id, count => $count, match_options => $match_options, before => $before, since => $since, sort => $sort, delay => $delay, timeout => $timeout, unread_only => $unread_only)

Wait or return list of emails that match simple matching patterns

Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.

### Example 
```perl
use Data::Dumper;
use MailSlurp::WaitForControllerApi;
my $api_instance = MailSlurp::WaitForControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Id of the inbox we are fetching emails from
my $count = 56; # int | Number of emails to wait for. Must be greater or equal to 1
my $match_options = MailSlurp::Object::MatchOptions->new(); # MatchOptions | 
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter for emails that were received before the given timestamp
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter for emails that were received after the given timestamp
my $sort = "sort_example"; # string | Sort direction
my $delay = 789; # int | Max milliseconds delay between calls
my $timeout = 789; # int | Max milliseconds to wait
my $unread_only = false; # boolean | Optional filter for unread only

eval { 
    my $result = $api_instance->wait_for_matching_emails(inbox_id => $inbox_id, count => $count, match_options => $match_options, before => $before, since => $since, sort => $sort, delay => $delay, timeout => $timeout, unread_only => $unread_only);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WaitForControllerApi->wait_for_matching_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Id of the inbox we are fetching emails from | 
 **count** | **int**| Number of emails to wait for. Must be greater or equal to 1 | 
 **match_options** | [**MatchOptions**](MatchOptions)|  | 
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **string**| Sort direction | [optional] 
 **delay** | **int**| Max milliseconds delay between calls | [optional] 
 **timeout** | **int**| Max milliseconds to wait | [optional] 
 **unread_only** | **boolean**| Optional filter for unread only | [optional] [default to false]

### Return type

[**ARRAY[EmailPreview]**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **wait_for_matching_first_email**
> Email wait_for_matching_first_email(inbox_id => $inbox_id, match_options => $match_options, timeout => $timeout, unread_only => $unread_only, since => $since, before => $before, sort => $sort, delay => $delay)

Wait for or return the first email that matches provided MatchOptions array

Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.

### Example 
```perl
use Data::Dumper;
use MailSlurp::WaitForControllerApi;
my $api_instance = MailSlurp::WaitForControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Id of the inbox we are matching an email for
my $match_options = MailSlurp::Object::MatchOptions->new(); # MatchOptions | 
my $timeout = 789; # int | Max milliseconds to wait
my $unread_only = false; # boolean | Optional filter for unread only
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter for emails that were received after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter for emails that were received before the given timestamp
my $sort = "sort_example"; # string | Sort direction
my $delay = 789; # int | Max milliseconds delay between calls

eval { 
    my $result = $api_instance->wait_for_matching_first_email(inbox_id => $inbox_id, match_options => $match_options, timeout => $timeout, unread_only => $unread_only, since => $since, before => $before, sort => $sort, delay => $delay);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WaitForControllerApi->wait_for_matching_first_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Id of the inbox we are matching an email for | 
 **match_options** | [**MatchOptions**](MatchOptions)|  | 
 **timeout** | **int**| Max milliseconds to wait | [optional] 
 **unread_only** | **boolean**| Optional filter for unread only | [optional] [default to false]
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **sort** | **string**| Sort direction | [optional] 
 **delay** | **int**| Max milliseconds delay between calls | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **wait_for_nth_email**
> Email wait_for_nth_email(inbox_id => $inbox_id, index => $index, timeout => $timeout, unread_only => $unread_only, since => $since, before => $before, sort => $sort, delay => $delay)

Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.

If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.

### Example 
```perl
use Data::Dumper;
use MailSlurp::WaitForControllerApi;
my $api_instance = MailSlurp::WaitForControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Id of the inbox you are fetching emails from
my $index = 0; # int | Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index=1
my $timeout = 789; # int | Max milliseconds to wait for the nth email if not already present
my $unread_only = false; # boolean | Optional filter for unread only
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter for emails that were received after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter for emails that were received before the given timestamp
my $sort = "sort_example"; # string | Sort direction
my $delay = 789; # int | Max milliseconds delay between calls

eval { 
    my $result = $api_instance->wait_for_nth_email(inbox_id => $inbox_id, index => $index, timeout => $timeout, unread_only => $unread_only, since => $since, before => $before, sort => $sort, delay => $delay);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WaitForControllerApi->wait_for_nth_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Id of the inbox you are fetching emails from | [optional] 
 **index** | **int**| Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1 | [optional] [default to 0]
 **timeout** | **int**| Max milliseconds to wait for the nth email if not already present | [optional] 
 **unread_only** | **boolean**| Optional filter for unread only | [optional] [default to false]
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **sort** | **string**| Sort direction | [optional] 
 **delay** | **int**| Max milliseconds delay between calls | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

