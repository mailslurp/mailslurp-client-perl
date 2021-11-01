# MailSlurp::InboxControllerApi

## Load the API package
```perl
use MailSlurp::Object::InboxControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_inbox**](InboxControllerApi#create_inbox) | **POST** /inboxes | Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either &#x60;SMTP&#x60; or &#x60;HTTP&#x60; inboxes.
[**create_inbox_ruleset**](InboxControllerApi#create_inbox_ruleset) | **POST** /inboxes/{inboxId}/rulesets | Create an inbox ruleset
[**create_inbox_with_defaults**](InboxControllerApi#create_inbox_with_defaults) | **POST** /inboxes/withDefaults | Create an inbox with default options. Uses MailSlurp domain pool address and is private.
[**create_inbox_with_options**](InboxControllerApi#create_inbox_with_options) | **POST** /inboxes/withOptions | Create an inbox with options. Extended options for inbox creation.
[**delete_all_inboxes**](InboxControllerApi#delete_all_inboxes) | **DELETE** /inboxes | Delete all inboxes
[**delete_inbox**](InboxControllerApi#delete_inbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
[**does_inbox_exist**](InboxControllerApi#does_inbox_exist) | **GET** /inboxes/exists | Does inbox exist
[**flush_expired**](InboxControllerApi#flush_expired) | **DELETE** /inboxes/expired | Remove expired inboxes
[**get_all_inboxes**](InboxControllerApi#get_all_inboxes) | **GET** /inboxes/paginated | List All Inboxes Paginated
[**get_emails**](InboxControllerApi#get_emails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
[**get_inbox**](InboxControllerApi#get_inbox) | **GET** /inboxes/{inboxId} | Get Inbox. Returns properties of an inbox.
[**get_inbox_count**](InboxControllerApi#get_inbox_count) | **GET** /inboxes/count | Get total inbox count
[**get_inbox_email_count**](InboxControllerApi#get_inbox_email_count) | **GET** /inboxes/{inboxId}/emails/count | Get email count in inbox
[**get_inbox_emails_paginated**](InboxControllerApi#get_inbox_emails_paginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
[**get_inbox_sent_emails**](InboxControllerApi#get_inbox_sent_emails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
[**get_inbox_tags**](InboxControllerApi#get_inbox_tags) | **GET** /inboxes/tags | Get inbox tags
[**get_inboxes**](InboxControllerApi#get_inboxes) | **GET** /inboxes | List Inboxes and email addresses
[**get_organization_inboxes**](InboxControllerApi#get_organization_inboxes) | **GET** /inboxes/organization | List Organization Inboxes Paginated
[**list_inbox_rulesets**](InboxControllerApi#list_inbox_rulesets) | **GET** /inboxes/{inboxId}/rulesets | List inbox rulesets
[**list_inbox_tracking_pixels**](InboxControllerApi#list_inbox_tracking_pixels) | **GET** /inboxes/{inboxId}/tracking-pixels | List inbox tracking pixels
[**send_email**](InboxControllerApi#send_email) | **POST** /inboxes/{inboxId} | Send Email
[**send_email_and_confirm**](InboxControllerApi#send_email_and_confirm) | **POST** /inboxes/{inboxId}/confirm | Send email and return sent confirmation
[**send_test_email**](InboxControllerApi#send_test_email) | **POST** /inboxes/{inboxId}/send-test-email | Send a test email to inbox
[**set_inbox_favourited**](InboxControllerApi#set_inbox_favourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
[**update_inbox**](InboxControllerApi#update_inbox) | **PATCH** /inboxes/{inboxId} | Update Inbox. Change name and description. Email address is not editable.


# **create_inbox**
> Inbox create_inbox(allow_team_access => $allow_team_access, description => $description, email_address => $email_address, expires_at => $expires_at, expires_in => $expires_in, favourite => $favourite, inbox_type => $inbox_type, name => $name, tags => $tags, use_domain_pool => $use_domain_pool)

Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.

Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $allow_team_access = null; # boolean | DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization.
my $description = "description_example"; # string | Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
my $email_address = "email_address_example"; # string | A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Avoid `SMTP` inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
my $expires_at = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
my $expires_in = 789; # int | Number of milliseconds that inbox should exist for
my $favourite = null; # boolean | Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering
my $inbox_type = "inbox_type_example"; # string | HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at `mx.mailslurp.com`.
my $name = "name_example"; # string | Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails.
my $tags = [("null")]; # ARRAY[string] | Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
my $use_domain_pool = null; # boolean | Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types.

eval { 
    my $result = $api_instance->create_inbox(allow_team_access => $allow_team_access, description => $description, email_address => $email_address, expires_at => $expires_at, expires_in => $expires_in, favourite => $favourite, inbox_type => $inbox_type, name => $name, tags => $tags, use_domain_pool => $use_domain_pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->create_inbox: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allow_team_access** | **boolean**| DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization. | [optional] 
 **description** | **string**| Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with | [optional] 
 **email_address** | **string**| A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as &#x60;123@mailslurp.com&#x60;. If you use the &#x60;useDomainPool&#x60; option when the email address is null it will generate an email address with a more varied domain ending such as &#x60;123@mailslurp.info&#x60; or &#x60;123@mailslurp.biz&#x60;. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so &#x60;SMTP&#x60; inboxes will only work with &#x60;SMTP&#x60; type domains. Avoid &#x60;SMTP&#x60; inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. | [optional] 
 **expires_at** | **DateTime**| Optional inbox expiration date. If null then this inbox is permanent and the emails in it won&#39;t be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX. | [optional] 
 **expires_in** | **int**| Number of milliseconds that inbox should exist for | [optional] 
 **favourite** | **boolean**| Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering | [optional] 
 **inbox_type** | **string**| HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at &#x60;mx.mailslurp.com&#x60;. | [optional] 
 **name** | **string**| Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails. | [optional] 
 **tags** | [**ARRAY[string]**](string)| Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. | [optional] 
 **use_domain_pool** | **boolean**| Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default &#x60;@mailslurp.com&#x60; email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in &#x60;@mailslurp.{world,info,xyz,...}&#x60; . This means a TLD is randomly selecting from a list of &#x60;.biz&#x60;, &#x60;.info&#x60;, &#x60;.xyz&#x60; etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of &#x60;@mailslurp.com&#x60; or custom email address provided by the emailAddress field. Note this feature is only available for &#x60;HTTP&#x60; inbox types. | [optional] 

### Return type

[**Inbox**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_inbox_ruleset**
> InboxRulesetDto create_inbox_ruleset(inbox_id => $inbox_id, create_inbox_ruleset_options => $create_inbox_ruleset_options)

Create an inbox ruleset

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | inboxId
my $create_inbox_ruleset_options = MailSlurp::Object::CreateInboxRulesetOptions->new(); # CreateInboxRulesetOptions | createInboxRulesetOptions

eval { 
    my $result = $api_instance->create_inbox_ruleset(inbox_id => $inbox_id, create_inbox_ruleset_options => $create_inbox_ruleset_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->create_inbox_ruleset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| inboxId | 
 **create_inbox_ruleset_options** | [**CreateInboxRulesetOptions**](CreateInboxRulesetOptions)| createInboxRulesetOptions | 

### Return type

[**InboxRulesetDto**](InboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_inbox_with_defaults**
> Inbox create_inbox_with_defaults()

Create an inbox with default options. Uses MailSlurp domain pool address and is private.

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->create_inbox_with_defaults();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->create_inbox_with_defaults: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Inbox**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_inbox_with_options**
> Inbox create_inbox_with_options(create_inbox_dto => $create_inbox_dto)

Create an inbox with options. Extended options for inbox creation.

Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $create_inbox_dto = MailSlurp::Object::CreateInboxDto->new(); # CreateInboxDto | createInboxDto

eval { 
    my $result = $api_instance->create_inbox_with_options(create_inbox_dto => $create_inbox_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->create_inbox_with_options: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_inbox_dto** | [**CreateInboxDto**](CreateInboxDto)| createInboxDto | 

### Return type

[**Inbox**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_all_inboxes**
> delete_all_inboxes()

Delete all inboxes

Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    $api_instance->delete_all_inboxes();
};
if ($@) {
    warn "Exception when calling InboxControllerApi->delete_all_inboxes: $@\n";
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

# **delete_inbox**
> delete_inbox(inbox_id => $inbox_id)

Delete inbox

Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | inboxId

eval { 
    $api_instance->delete_inbox(inbox_id => $inbox_id);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->delete_inbox: $@\n";
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

# **does_inbox_exist**
> InboxExistsDto does_inbox_exist(email_address => $email_address)

Does inbox exist

Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $email_address = "email_address_example"; # string | Email address

eval { 
    my $result = $api_instance->does_inbox_exist(email_address => $email_address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->does_inbox_exist: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **string**| Email address | 

### Return type

[**InboxExistsDto**](InboxExistsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **flush_expired**
> FlushExpiredInboxesResult flush_expired(before => $before)

Remove expired inboxes

Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional expired at before flag to flush expired inboxes that have expired before the given time

eval { 
    my $result = $api_instance->flush_expired(before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->flush_expired: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Optional expired at before flag to flush expired inboxes that have expired before the given time | [optional] 

### Return type

[**FlushExpiredInboxesResult**](FlushExpiredInboxesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_inboxes**
> PageInboxProjection get_all_inboxes(before => $before, favourite => $favourite, page => $page, search => $search, since => $since, size => $size, sort => $sort, tag => $tag, team_access => $team_access)

List All Inboxes Paginated

List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time
my $favourite = false; # boolean | Optionally filter results for favourites only
my $page = 0; # int | Optional page index in list pagination
my $search = "search_example"; # string | Optionally filter by search words partial matching ID, tags, name, and email address
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $tag = "tag_example"; # string | Optionally filter by tags. Will return inboxes that include given tags
my $team_access = false; # boolean | DEPRECATED. Optionally filter by team access.

eval { 
    my $result = $api_instance->get_all_inboxes(before => $before, favourite => $favourite, page => $page, search => $search, since => $since, size => $size, sort => $sort, tag => $tag, team_access => $team_access);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_all_inboxes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 
 **favourite** | **boolean**| Optionally filter results for favourites only | [optional] [default to false]
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **search** | **string**| Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **tag** | **string**| Optionally filter by tags. Will return inboxes that include given tags | [optional] 
 **team_access** | **boolean**| DEPRECATED. Optionally filter by team access. | [optional] [default to false]

### Return type

[**PageInboxProjection**](PageInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_emails**
> ARRAY[EmailPreview] get_emails(inbox_id => $inbox_id, before => $before, delay_timeout => $delay_timeout, limit => $limit, min_count => $min_count, retry_timeout => $retry_timeout, since => $since, size => $size, sort => $sort, unread_only => $unread_only)

Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.

List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Id of inbox that emails belongs to
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Exclude emails received after this ISO 8601 date time
my $delay_timeout = 789; # int | delayTimeout
my $limit = 56; # int | Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller
my $min_count = 789; # int | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
my $retry_timeout = 789; # int | Maximum milliseconds to spend retrying inbox database until minCount emails are returned
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Exclude emails received before this ISO 8601 date time
my $size = 56; # int | Alias for limit. Assessed first before assessing any passed limit.
my $sort = "sort_example"; # string | Sort the results by received date and direction ASC or DESC
my $unread_only = null; # boolean | unreadOnly

eval { 
    my $result = $api_instance->get_emails(inbox_id => $inbox_id, before => $before, delay_timeout => $delay_timeout, limit => $limit, min_count => $min_count, retry_timeout => $retry_timeout, since => $since, size => $size, sort => $sort, unread_only => $unread_only);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Id of inbox that emails belongs to | 
 **before** | **DateTime**| Exclude emails received after this ISO 8601 date time | [optional] 
 **delay_timeout** | **int**| delayTimeout | [optional] 
 **limit** | **int**| Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller | [optional] 
 **min_count** | **int**| Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. | [optional] 
 **retry_timeout** | **int**| Maximum milliseconds to spend retrying inbox database until minCount emails are returned | [optional] 
 **since** | **DateTime**| Exclude emails received before this ISO 8601 date time | [optional] 
 **size** | **int**| Alias for limit. Assessed first before assessing any passed limit. | [optional] 
 **sort** | **string**| Sort the results by received date and direction ASC or DESC | [optional] 
 **unread_only** | **boolean**| unreadOnly | [optional] 

### Return type

[**ARRAY[EmailPreview]**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox**
> Inbox get_inbox(inbox_id => $inbox_id)

Get Inbox. Returns properties of an inbox.

Returns an inbox's properties, including its email address and ID.

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | inboxId

eval { 
    my $result = $api_instance->get_inbox(inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| inboxId | 

### Return type

[**Inbox**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_count**
> CountDto get_inbox_count()

Get total inbox count

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_inbox_count();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_count: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_email_count**
> CountDto get_inbox_email_count(inbox_id => $inbox_id)

Get email count in inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Id of inbox that emails belongs to

eval { 
    my $result = $api_instance->get_inbox_email_count(inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_email_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Id of inbox that emails belongs to | 

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_emails_paginated**
> PageEmailPreview get_inbox_emails_paginated(inbox_id => $inbox_id, before => $before, page => $page, since => $since, size => $size, sort => $sort)

Get inbox emails paginated

Get a paginated list of emails in an inbox. Does not hold connections open.

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | Id of inbox that emails belongs to
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by received before given date time
my $page = 0; # int | Optional page index in inbox emails list pagination
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by received after given date time
my $size = 20; # int | Optional page size in inbox emails list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_inbox_emails_paginated(inbox_id => $inbox_id, before => $before, page => $page, since => $since, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_emails_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Id of inbox that emails belongs to | 
 **before** | **DateTime**| Optional filter by received before given date time | [optional] 
 **page** | **int**| Optional page index in inbox emails list pagination | [optional] [default to 0]
 **since** | **DateTime**| Optional filter by received after given date time | [optional] 
 **size** | **int**| Optional page size in inbox emails list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageEmailPreview**](PageEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_sent_emails**
> PageSentEmailProjection get_inbox_sent_emails(inbox_id => $inbox_id, before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort)

Get Inbox Sent Emails

Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | inboxId
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by sent before given date time
my $page = 0; # int | Optional page index in inbox sent email list pagination
my $search_filter = "search_filter_example"; # string | Optional sent email search
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by sent after given date time
my $size = 20; # int | Optional page size in inbox sent email list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_inbox_sent_emails(inbox_id => $inbox_id, before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_sent_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| inboxId | 
 **before** | **DateTime**| Optional filter by sent before given date time | [optional] 
 **page** | **int**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional sent email search | [optional] 
 **since** | **DateTime**| Optional filter by sent after given date time | [optional] 
 **size** | **int**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_tags**
> ARRAY[string] get_inbox_tags()

Get inbox tags

Get all inbox tags

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_inbox_tags();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_tags: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ARRAY[string]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inboxes**
> ARRAY[Inbox] get_inboxes(before => $before, since => $since, size => $size, sort => $sort)

List Inboxes and email addresses

List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended and allows paginated access using a limit and sort parameter.

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $size = 100; # int | Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries.
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_inboxes(before => $before, since => $since, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inboxes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **size** | **int**| Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated &#x60;getAllEmails&#x60; for larger queries. | [optional] [default to 100]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**ARRAY[Inbox]**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_organization_inboxes**
> PageOrganizationInboxProjection get_organization_inboxes(before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort)

List Organization Inboxes Paginated

List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time
my $page = 0; # int | Optional page index in list pagination
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_organization_inboxes(before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_organization_inboxes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageOrganizationInboxProjection**](PageOrganizationInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **list_inbox_rulesets**
> PageInboxRulesetDto list_inbox_rulesets(inbox_id => $inbox_id, before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort)

List inbox rulesets

List all rulesets attached to an inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | inboxId
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time
my $page = 0; # int | Optional page index in inbox ruleset list pagination
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $size = 20; # int | Optional page size in inbox ruleset list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->list_inbox_rulesets(inbox_id => $inbox_id, before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->list_inbox_rulesets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| inboxId | 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 
 **page** | **int**| Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **size** | **int**| Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageInboxRulesetDto**](PageInboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **list_inbox_tracking_pixels**
> PageTrackingPixelProjection list_inbox_tracking_pixels(inbox_id => $inbox_id, before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort)

List inbox tracking pixels

List all tracking pixels sent from an inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | inboxId
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time
my $page = 0; # int | Optional page index in inbox tracking pixel list pagination
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $size = 20; # int | Optional page size in inbox tracking pixel list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->list_inbox_tracking_pixels(inbox_id => $inbox_id, before => $before, page => $page, search_filter => $search_filter, since => $since, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->list_inbox_tracking_pixels: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| inboxId | 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 
 **page** | **int**| Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **size** | **int**| Optional page size in inbox tracking pixel list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_email**
> send_email(inbox_id => $inbox_id, send_email_options => $send_email_options)

Send Email

Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | ID of the inbox you want to send the email from
my $send_email_options = MailSlurp::Object::SendEmailOptions->new(); # SendEmailOptions | Options for the email

eval { 
    $api_instance->send_email(inbox_id => $inbox_id, send_email_options => $send_email_options);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->send_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of the inbox you want to send the email from | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)| Options for the email | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_email_and_confirm**
> SentEmailDto send_email_and_confirm(inbox_id => $inbox_id, send_email_options => $send_email_options)

Send email and return sent confirmation

Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | ID of the inbox you want to send the email from
my $send_email_options = MailSlurp::Object::SendEmailOptions->new(); # SendEmailOptions | Options for the email

eval { 
    my $result = $api_instance->send_email_and_confirm(inbox_id => $inbox_id, send_email_options => $send_email_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->send_email_and_confirm: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of the inbox you want to send the email from | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)| Options for the email | [optional] 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_test_email**
> send_test_email(inbox_id => $inbox_id)

Send a test email to inbox

Send an inbox a test email to test email receiving is working

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | inboxId

eval { 
    $api_instance->send_test_email(inbox_id => $inbox_id);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->send_test_email: $@\n";
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

# **set_inbox_favourited**
> Inbox set_inbox_favourited(inbox_id => $inbox_id, set_inbox_favourited_options => $set_inbox_favourited_options)

Set inbox favourited state

Set and return new favourite state for an inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | inboxId
my $set_inbox_favourited_options = MailSlurp::Object::SetInboxFavouritedOptions->new(); # SetInboxFavouritedOptions | setInboxFavouritedOptions

eval { 
    my $result = $api_instance->set_inbox_favourited(inbox_id => $inbox_id, set_inbox_favourited_options => $set_inbox_favourited_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->set_inbox_favourited: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| inboxId | 
 **set_inbox_favourited_options** | [**SetInboxFavouritedOptions**](SetInboxFavouritedOptions)| setInboxFavouritedOptions | 

### Return type

[**Inbox**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_inbox**
> Inbox update_inbox(inbox_id => $inbox_id, update_inbox_options => $update_inbox_options)

Update Inbox. Change name and description. Email address is not editable.

Update editable fields on an inbox

### Example 
```perl
use Data::Dumper;
use MailSlurp::InboxControllerApi;
my $api_instance = MailSlurp::InboxControllerApi->new(

    # Configure API key authorization: API_KEY
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $inbox_id = null; # string | inboxId
my $update_inbox_options = MailSlurp::Object::UpdateInboxOptions->new(); # UpdateInboxOptions | updateInboxOptions

eval { 
    my $result = $api_instance->update_inbox(inbox_id => $inbox_id, update_inbox_options => $update_inbox_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->update_inbox: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| inboxId | 
 **update_inbox_options** | [**UpdateInboxOptions**](UpdateInboxOptions)| updateInboxOptions | 

### Return type

[**Inbox**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

