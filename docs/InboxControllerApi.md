# MailSlurp::InboxControllerApi

## Load the API package
```perl
use MailSlurp::Object::InboxControllerApi;
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_scheduled_job**](InboxControllerApi#cancel_scheduled_job) | **DELETE** /inboxes/scheduled-jobs/{jobId} | Cancel a scheduled email job
[**create_inbox**](InboxControllerApi#create_inbox) | **POST** /inboxes | Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either &#x60;SMTP&#x60; or &#x60;HTTP&#x60; inboxes.
[**create_inbox_ruleset**](InboxControllerApi#create_inbox_ruleset) | **POST** /inboxes/{inboxId}/rulesets | Create an inbox ruleset
[**create_inbox_with_defaults**](InboxControllerApi#create_inbox_with_defaults) | **POST** /inboxes/withDefaults | Create an inbox with default options. Uses MailSlurp domain pool address and is private.
[**create_inbox_with_options**](InboxControllerApi#create_inbox_with_options) | **POST** /inboxes/withOptions | Create an inbox with options. Extended options for inbox creation.
[**delete_all_inbox_emails**](InboxControllerApi#delete_all_inbox_emails) | **DELETE** /inboxes/{inboxId}/deleteAllInboxEmails | Delete all emails in a given inboxes.
[**delete_all_inboxes**](InboxControllerApi#delete_all_inboxes) | **DELETE** /inboxes | Delete all inboxes
[**delete_all_inboxes_by_description**](InboxControllerApi#delete_all_inboxes_by_description) | **DELETE** /inboxes/by-description | Delete inboxes by description
[**delete_all_inboxes_by_name**](InboxControllerApi#delete_all_inboxes_by_name) | **DELETE** /inboxes/by-name | Delete inboxes by name
[**delete_all_inboxes_by_tag**](InboxControllerApi#delete_all_inboxes_by_tag) | **DELETE** /inboxes/by-tag | Delete inboxes by tag
[**delete_inbox**](InboxControllerApi#delete_inbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
[**does_inbox_exist**](InboxControllerApi#does_inbox_exist) | **GET** /inboxes/exists | Does inbox exist
[**does_inbox_have_automations**](InboxControllerApi#does_inbox_have_automations) | **GET** /inboxes/automations | Does inbox have automations
[**flush_expired**](InboxControllerApi#flush_expired) | **DELETE** /inboxes/expired | Remove expired inboxes
[**get_all_inboxes**](InboxControllerApi#get_all_inboxes) | **GET** /inboxes/paginated | List All Inboxes Paginated
[**get_all_inboxes_offset_paginated**](InboxControllerApi#get_all_inboxes_offset_paginated) | **GET** /inboxes/offset-paginated | List All Inboxes Offset Paginated
[**get_all_plus_addresses**](InboxControllerApi#get_all_plus_addresses) | **GET** /inboxes/plus-addresses | Get all sub address plus address aliases for an inbox
[**get_all_scheduled_jobs**](InboxControllerApi#get_all_scheduled_jobs) | **GET** /inboxes/scheduled-jobs | Get all scheduled email sending jobs for account
[**get_delivery_statuses_by_inbox_id**](InboxControllerApi#get_delivery_statuses_by_inbox_id) | **GET** /inboxes/{inboxId}/delivery-status | 
[**get_emails**](InboxControllerApi#get_emails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
[**get_imap_access**](InboxControllerApi#get_imap_access) | **GET** /inboxes/imap-access | 
[**get_imap_smtp_access**](InboxControllerApi#get_imap_smtp_access) | **GET** /inboxes/imap-smtp-access | 
[**get_imap_smtp_access_env**](InboxControllerApi#get_imap_smtp_access_env) | **GET** /inboxes/imap-smtp-access/env | 
[**get_imap_smtp_access_servers**](InboxControllerApi#get_imap_smtp_access_servers) | **GET** /inboxes/imap-smtp-access/servers | 
[**get_inbox**](InboxControllerApi#get_inbox) | **GET** /inboxes/{inboxId} | Get Inbox. Returns properties of an inbox.
[**get_inbox_by_email_address**](InboxControllerApi#get_inbox_by_email_address) | **GET** /inboxes/byEmailAddress | Search for an inbox with the provided email address
[**get_inbox_by_name**](InboxControllerApi#get_inbox_by_name) | **GET** /inboxes/byName | Search for an inbox with the given name
[**get_inbox_count**](InboxControllerApi#get_inbox_count) | **GET** /inboxes/count | Get total inbox count
[**get_inbox_email_count**](InboxControllerApi#get_inbox_email_count) | **GET** /inboxes/{inboxId}/emails/count | Get email count in inbox
[**get_inbox_emails_paginated**](InboxControllerApi#get_inbox_emails_paginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
[**get_inbox_ids**](InboxControllerApi#get_inbox_ids) | **GET** /inboxes/ids | Get all inbox IDs
[**get_inbox_plus_address**](InboxControllerApi#get_inbox_plus_address) | **GET** /inboxes/{inboxId}/plus-addresses/{plusAddressId} | Get sub address plus address for an inbox
[**get_inbox_plus_address_by_id**](InboxControllerApi#get_inbox_plus_address_by_id) | **GET** /inboxes/plus-addresses/{plusAddressId} | Get sub address plus address by ID
[**get_inbox_plus_address_emails**](InboxControllerApi#get_inbox_plus_address_emails) | **GET** /inboxes/{inboxId}/plus-addresses/emails | Get emails for a given inbox plus address
[**get_inbox_plus_address_emails_for_plus_address_id**](InboxControllerApi#get_inbox_plus_address_emails_for_plus_address_id) | **GET** /inboxes/{inboxId}/plus-addresses/{plusAddressId}/emails | Get emails for a given inbox plus address
[**get_inbox_plus_addresses**](InboxControllerApi#get_inbox_plus_addresses) | **GET** /inboxes/{inboxId}/plus-addresses | Get sub address plus address aliases for an inbox
[**get_inbox_sent_count**](InboxControllerApi#get_inbox_sent_count) | **GET** /inboxes/{inboxId}/sent/count | Get sent email count in inbox
[**get_inbox_sent_emails**](InboxControllerApi#get_inbox_sent_emails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
[**get_inbox_tags**](InboxControllerApi#get_inbox_tags) | **GET** /inboxes/tags | Get inbox tags
[**get_inbox_tags_paginated**](InboxControllerApi#get_inbox_tags_paginated) | **GET** /inboxes/tags/paginated | Get inbox tags paginated
[**get_inboxes**](InboxControllerApi#get_inboxes) | **GET** /inboxes | List Inboxes and email addresses
[**get_inboxes_by_tag**](InboxControllerApi#get_inboxes_by_tag) | **GET** /inboxes/tags/inboxes | Get inboxes for a tag
[**get_latest_email_in_inbox**](InboxControllerApi#get_latest_email_in_inbox) | **GET** /inboxes/getLatestEmail | Get latest email in an inbox. Use &#x60;WaitForController&#x60; to get emails that may not have arrived yet.
[**get_organization_inboxes**](InboxControllerApi#get_organization_inboxes) | **GET** /inboxes/organization | List Organization Inboxes Paginated
[**get_outboxes**](InboxControllerApi#get_outboxes) | **GET** /inboxes/outboxes | List all inboxes with sent emails
[**get_scheduled_job**](InboxControllerApi#get_scheduled_job) | **GET** /inboxes/scheduled-jobs/{jobId} | Get a scheduled email job
[**get_scheduled_jobs_by_inbox_id**](InboxControllerApi#get_scheduled_jobs_by_inbox_id) | **GET** /inboxes/{inboxId}/scheduled-jobs | Get all scheduled email sending jobs for the inbox
[**get_smtp_access**](InboxControllerApi#get_smtp_access) | **GET** /inboxes/smtp-access | 
[**is_email_address_available**](InboxControllerApi#is_email_address_available) | **POST** /inboxes/available | Is email address available
[**list_inbox_rulesets**](InboxControllerApi#list_inbox_rulesets) | **GET** /inboxes/{inboxId}/rulesets | List inbox rulesets
[**list_inbox_tracking_pixels**](InboxControllerApi#list_inbox_tracking_pixels) | **GET** /inboxes/{inboxId}/tracking-pixels | List inbox tracking pixels
[**search_inboxes**](InboxControllerApi#search_inboxes) | **POST** /inboxes/search | Search all inboxes and return matching inboxes
[**send_email**](InboxControllerApi#send_email) | **POST** /inboxes/{inboxId} | Send Email
[**send_email_and_confirm**](InboxControllerApi#send_email_and_confirm) | **POST** /inboxes/{inboxId}/confirm | Send email and return sent confirmation
[**send_email_with_queue**](InboxControllerApi#send_email_with_queue) | **POST** /inboxes/{inboxId}/with-queue | Send email with queue
[**send_smtp_envelope**](InboxControllerApi#send_smtp_envelope) | **POST** /inboxes/{inboxId}/smtp-envelope | Send email using an SMTP mail envelope and message body and return sent confirmation
[**send_test_email**](InboxControllerApi#send_test_email) | **POST** /inboxes/{inboxId}/send-test-email | Send a test email to inbox
[**send_with_schedule**](InboxControllerApi#send_with_schedule) | **POST** /inboxes/{inboxId}/with-schedule | Send email with with delay or schedule
[**set_inbox_favourited**](InboxControllerApi#set_inbox_favourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
[**update_imap_access**](InboxControllerApi#update_imap_access) | **PATCH** /inboxes/imap-access | 
[**update_inbox**](InboxControllerApi#update_inbox) | **PATCH** /inboxes/{inboxId} | Update Inbox. Change name and description. Email address is not editable.
[**update_smtp_access**](InboxControllerApi#update_smtp_access) | **PATCH** /inboxes/smtp-access | 


# **cancel_scheduled_job**
> ScheduledJobDto cancel_scheduled_job(job_id => $job_id)

Cancel a scheduled email job

Get a scheduled email job and cancel it. Will fail if status of job is already cancelled, failed, or complete.

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

my $job_id = null; # string | 

eval { 
    my $result = $api_instance->cancel_scheduled_job(job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->cancel_scheduled_job: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | [**string**]()|  | 

### Return type

[**ScheduledJobDto**](ScheduledJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_inbox**
> InboxDto create_inbox(email_address => $email_address, tags => $tags, name => $name, description => $description, use_domain_pool => $use_domain_pool, favourite => $favourite, expires_at => $expires_at, expires_in => $expires_in, allow_team_access => $allow_team_access, inbox_type => $inbox_type, virtual_inbox => $virtual_inbox, use_short_address => $use_short_address, domain_id => $domain_id, domain_name => $domain_name, prefix => $prefix)

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

my $email_address = "email_address_example"; # string | A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Avoid `SMTP` inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
my $tags = [("null")]; # ARRAY[string] | Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
my $name = "name_example"; # string | Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails.
my $description = "description_example"; # string | Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
my $use_domain_pool = null; # boolean | Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types.
my $favourite = null; # boolean | Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering
my $expires_at = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
my $expires_in = 789; # int | Number of milliseconds that inbox should exist for
my $allow_team_access = null; # boolean | DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization.
my $inbox_type = "inbox_type_example"; # string | HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at `mxslurp.click`.
my $virtual_inbox = null; # boolean | Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending.
my $use_short_address = null; # boolean | Use a shorter email address under 31 characters
my $domain_id = null; # string | ID of custom domain to use for email address.
my $domain_name = "domain_name_example"; # string | FQDN domain name for the domain you have verified. Will be appended with a randomly assigned recipient name. Use the `emailAddress` option instead to specify the full custom inbox.
my $prefix = "prefix_example"; # string | Prefix to add before the email address for easier labelling or identification.

eval { 
    my $result = $api_instance->create_inbox(email_address => $email_address, tags => $tags, name => $name, description => $description, use_domain_pool => $use_domain_pool, favourite => $favourite, expires_at => $expires_at, expires_in => $expires_in, allow_team_access => $allow_team_access, inbox_type => $inbox_type, virtual_inbox => $virtual_inbox, use_short_address => $use_short_address, domain_id => $domain_id, domain_name => $domain_name, prefix => $prefix);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->create_inbox: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **string**| A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as &#x60;123@mailslurp.com&#x60;. If you use the &#x60;useDomainPool&#x60; option when the email address is null it will generate an email address with a more varied domain ending such as &#x60;123@mailslurp.info&#x60; or &#x60;123@mailslurp.biz&#x60;. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so &#x60;SMTP&#x60; inboxes will only work with &#x60;SMTP&#x60; type domains. Avoid &#x60;SMTP&#x60; inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. | [optional] 
 **tags** | [**ARRAY[string]**](string)| Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. | [optional] 
 **name** | **string**| Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails. | [optional] 
 **description** | **string**| Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with | [optional] 
 **use_domain_pool** | **boolean**| Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default &#x60;@mailslurp.com&#x60; email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in &#x60;@mailslurp.{world,info,xyz,...}&#x60; . This means a TLD is randomly selecting from a list of &#x60;.biz&#x60;, &#x60;.info&#x60;, &#x60;.xyz&#x60; etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of &#x60;@mailslurp.com&#x60; or custom email address provided by the emailAddress field. Note this feature is only available for &#x60;HTTP&#x60; inbox types. | [optional] 
 **favourite** | **boolean**| Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering | [optional] 
 **expires_at** | **DateTime**| Optional inbox expiration date. If null then this inbox is permanent and the emails in it won&#39;t be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX. | [optional] 
 **expires_in** | **int**| Number of milliseconds that inbox should exist for | [optional] 
 **allow_team_access** | **boolean**| DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization. | [optional] 
 **inbox_type** | **string**| HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at &#x60;mxslurp.click&#x60;. | [optional] 
 **virtual_inbox** | **boolean**| Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending. | [optional] 
 **use_short_address** | **boolean**| Use a shorter email address under 31 characters | [optional] 
 **domain_id** | [**string**]()| ID of custom domain to use for email address. | [optional] 
 **domain_name** | **string**| FQDN domain name for the domain you have verified. Will be appended with a randomly assigned recipient name. Use the &#x60;emailAddress&#x60; option instead to specify the full custom inbox. | [optional] 
 **prefix** | **string**| Prefix to add before the email address for easier labelling or identification. | [optional] 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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
my $create_inbox_ruleset_options = MailSlurp::Object::CreateInboxRulesetOptions->new(); # CreateInboxRulesetOptions | 

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
 **create_inbox_ruleset_options** | [**CreateInboxRulesetOptions**](CreateInboxRulesetOptions)|  | 

### Return type

[**InboxRulesetDto**](InboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_inbox_with_defaults**
> InboxDto create_inbox_with_defaults()

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

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **create_inbox_with_options**
> InboxDto create_inbox_with_options(create_inbox_dto => $create_inbox_dto)

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

my $create_inbox_dto = MailSlurp::Object::CreateInboxDto->new(); # CreateInboxDto | 

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
 **create_inbox_dto** | [**CreateInboxDto**](CreateInboxDto)|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_all_inbox_emails**
> delete_all_inbox_emails(inbox_id => $inbox_id)

Delete all emails in a given inboxes.

Deletes all emails in an inbox. Be careful as emails cannot be recovered

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

my $inbox_id = null; # string | 

eval { 
    $api_instance->delete_all_inbox_emails(inbox_id => $inbox_id);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->delete_all_inbox_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

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

# **delete_all_inboxes_by_description**
> delete_all_inboxes_by_description(description => $description)

Delete inboxes by description

Permanently delete all inboxes by description

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

my $description = "description_example"; # string | 

eval { 
    $api_instance->delete_all_inboxes_by_description(description => $description);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->delete_all_inboxes_by_description: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **description** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_all_inboxes_by_name**
> delete_all_inboxes_by_name(name => $name)

Delete inboxes by name

Permanently delete all inboxes by name

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

my $name = "name_example"; # string | 

eval { 
    $api_instance->delete_all_inboxes_by_name(name => $name);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->delete_all_inboxes_by_name: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete_all_inboxes_by_tag**
> delete_all_inboxes_by_tag(tag => $tag)

Delete inboxes by tag

Permanently delete all inboxes by tag

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

my $tag = "tag_example"; # string | 

eval { 
    $api_instance->delete_all_inboxes_by_tag(tag => $tag);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->delete_all_inboxes_by_tag: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **string**|  | 

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

my $inbox_id = null; # string | 

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
 **inbox_id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **does_inbox_exist**
> InboxExistsDto does_inbox_exist(email_address => $email_address, allow_catch_all => $allow_catch_all)

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
my $allow_catch_all = null; # boolean | 

eval { 
    my $result = $api_instance->does_inbox_exist(email_address => $email_address, allow_catch_all => $allow_catch_all);
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
 **allow_catch_all** | **boolean**|  | [optional] 

### Return type

[**InboxExistsDto**](InboxExistsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **does_inbox_have_automations**
> does_inbox_have_automations()

Does inbox have automations

Check if an inbox has automations.

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
    $api_instance->does_inbox_have_automations();
};
if ($@) {
    warn "Exception when calling InboxControllerApi->does_inbox_have_automations: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_inboxes**
> PageInboxProjection get_all_inboxes(page => $page, size => $size, sort => $sort, favourite => $favourite, search => $search, tag => $tag, team_access => $team_access, since => $since, before => $before, inbox_type => $inbox_type, inbox_function => $inbox_function, domain_id => $domain_id)

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

my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $favourite = false; # boolean | Optionally filter results for favourites only
my $search = "search_example"; # string | Optionally filter by search words partial matching ID, tags, name, and email address
my $tag = "tag_example"; # string | Optionally filter by tags. Will return inboxes that include given tags
my $team_access = null; # boolean | DEPRECATED. Optionally filter by team access.
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time
my $inbox_type = "inbox_type_example"; # string | Optional filter by inbox type
my $inbox_function = "inbox_function_example"; # string | Optional filter by inbox function
my $domain_id = null; # string | Optional domain ID filter

eval { 
    my $result = $api_instance->get_all_inboxes(page => $page, size => $size, sort => $sort, favourite => $favourite, search => $search, tag => $tag, team_access => $team_access, since => $since, before => $before, inbox_type => $inbox_type, inbox_function => $inbox_function, domain_id => $domain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_all_inboxes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **favourite** | **boolean**| Optionally filter results for favourites only | [optional] [default to false]
 **search** | **string**| Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
 **tag** | **string**| Optionally filter by tags. Will return inboxes that include given tags | [optional] 
 **team_access** | **boolean**| DEPRECATED. Optionally filter by team access. | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 
 **inbox_type** | **string**| Optional filter by inbox type | [optional] 
 **inbox_function** | **string**| Optional filter by inbox function | [optional] 
 **domain_id** | [**string**]()| Optional domain ID filter | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_inboxes_offset_paginated**
> PageInboxProjection get_all_inboxes_offset_paginated(page => $page, size => $size, sort => $sort, favourite => $favourite, search => $search, tag => $tag, team_access => $team_access, since => $since, before => $before, inbox_type => $inbox_type, inbox_function => $inbox_function, domain_id => $domain_id)

List All Inboxes Offset Paginated

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

my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $favourite = false; # boolean | Optionally filter results for favourites only
my $search = "search_example"; # string | Optionally filter by search words partial matching ID, tags, name, and email address
my $tag = "tag_example"; # string | Optionally filter by tags. Will return inboxes that include given tags
my $team_access = null; # boolean | DEPRECATED. Optionally filter by team access.
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time
my $inbox_type = "inbox_type_example"; # string | Optional filter by inbox type
my $inbox_function = "inbox_function_example"; # string | Optional filter by inbox function
my $domain_id = null; # string | Optional domain ID filter

eval { 
    my $result = $api_instance->get_all_inboxes_offset_paginated(page => $page, size => $size, sort => $sort, favourite => $favourite, search => $search, tag => $tag, team_access => $team_access, since => $since, before => $before, inbox_type => $inbox_type, inbox_function => $inbox_function, domain_id => $domain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_all_inboxes_offset_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **favourite** | **boolean**| Optionally filter results for favourites only | [optional] [default to false]
 **search** | **string**| Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
 **tag** | **string**| Optionally filter by tags. Will return inboxes that include given tags | [optional] 
 **team_access** | **boolean**| DEPRECATED. Optionally filter by team access. | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 
 **inbox_type** | **string**| Optional filter by inbox type | [optional] 
 **inbox_function** | **string**| Optional filter by inbox function | [optional] 
 **domain_id** | [**string**]()| Optional domain ID filter | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_plus_addresses**
> PagePlusAddressProjection get_all_plus_addresses(page => $page, size => $size, sort => $sort, inbox_id => $inbox_id)

Get all sub address plus address aliases for an inbox

Returns paginated list of all plus alias addresses found for in account based on received emails that used the inbox address with a +xyz alias.

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

my $page = 0; # int | Optional page index in inbox tracking pixel list pagination
my $size = 20; # int | Optional page size in inbox tracking pixel list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $inbox_id = null; # string | Optional inboxId filter

eval { 
    my $result = $api_instance->get_all_plus_addresses(page => $page, size => $size, sort => $sort, inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_all_plus_addresses: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox tracking pixel list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **inbox_id** | [**string**]()| Optional inboxId filter | [optional] 

### Return type

[**PagePlusAddressProjection**](PagePlusAddressProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_all_scheduled_jobs**
> PageScheduledJobs get_all_scheduled_jobs(page => $page, size => $size, sort => $sort, since => $since, before => $before, inbox_id => $inbox_id)

Get all scheduled email sending jobs for account

Schedule sending of emails using scheduled jobs. These can be inbox or account level.

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

my $page = 0; # int | Optional page index in scheduled job list pagination
my $size = 20; # int | Optional page size in scheduled job list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp
my $inbox_id = null; # string | 

eval { 
    my $result = $api_instance->get_all_scheduled_jobs(page => $page, size => $size, sort => $sort, since => $since, before => $before, inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_all_scheduled_jobs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in scheduled job list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in scheduled job list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **inbox_id** | [**string**]()|  | [optional] 

### Return type

[**PageScheduledJobs**](PageScheduledJobs)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_delivery_statuses_by_inbox_id**
> PageDeliveryStatus get_delivery_statuses_by_inbox_id(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, since => $since, before => $before)



Get all email delivery statuses for an inbox

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

my $inbox_id = null; # string | 
my $page = 0; # int | Optional page index in delivery status list pagination
my $size = 20; # int | Optional page size in delivery status list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_delivery_statuses_by_inbox_id(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_delivery_statuses_by_inbox_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()|  | 
 **page** | **int**| Optional page index in delivery status list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in delivery status list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageDeliveryStatus**](PageDeliveryStatus)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_emails**
> ARRAY[EmailPreview] get_emails(inbox_id => $inbox_id, size => $size, limit => $limit, sort => $sort, retry_timeout => $retry_timeout, delay_timeout => $delay_timeout, min_count => $min_count, unread_only => $unread_only, before => $before, since => $since)

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
my $size = 56; # int | Alias for limit. Assessed first before assessing any passed limit.
my $limit = 56; # int | Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller
my $sort = "sort_example"; # string | Sort the results by received date and direction ASC or DESC
my $retry_timeout = 789; # int | Maximum milliseconds to spend retrying inbox database until minCount emails are returned
my $delay_timeout = 789; # int | 
my $min_count = 789; # int | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
my $unread_only = null; # boolean | 
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Exclude emails received after this ISO 8601 date time
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Exclude emails received before this ISO 8601 date time

eval { 
    my $result = $api_instance->get_emails(inbox_id => $inbox_id, size => $size, limit => $limit, sort => $sort, retry_timeout => $retry_timeout, delay_timeout => $delay_timeout, min_count => $min_count, unread_only => $unread_only, before => $before, since => $since);
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
 **size** | **int**| Alias for limit. Assessed first before assessing any passed limit. | [optional] 
 **limit** | **int**| Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller | [optional] 
 **sort** | **string**| Sort the results by received date and direction ASC or DESC | [optional] 
 **retry_timeout** | **int**| Maximum milliseconds to spend retrying inbox database until minCount emails are returned | [optional] 
 **delay_timeout** | **int**|  | [optional] 
 **min_count** | **int**| Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. | [optional] 
 **unread_only** | **boolean**|  | [optional] 
 **before** | **DateTime**| Exclude emails received after this ISO 8601 date time | [optional] 
 **since** | **DateTime**| Exclude emails received before this ISO 8601 date time | [optional] 

### Return type

[**ARRAY[EmailPreview]**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_imap_access**
> ImapAccessDetails get_imap_access(inbox_id => $inbox_id)



Get IMAP access usernames and passwords

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

my $inbox_id = null; # string | Inbox ID

eval { 
    my $result = $api_instance->get_imap_access(inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_imap_access: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Inbox ID | [optional] 

### Return type

[**ImapAccessDetails**](ImapAccessDetails)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_imap_smtp_access**
> ImapSmtpAccessDetails get_imap_smtp_access(inbox_id => $inbox_id)



Get IMAP and SMTP access usernames and passwords

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

my $inbox_id = null; # string | Inbox ID

eval { 
    my $result = $api_instance->get_imap_smtp_access(inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_imap_smtp_access: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Inbox ID | [optional] 

### Return type

[**ImapSmtpAccessDetails**](ImapSmtpAccessDetails)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_imap_smtp_access_env**
> string get_imap_smtp_access_env(inbox_id => $inbox_id)



Get IMAP and SMTP access details in .env format

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

my $inbox_id = null; # string | Inbox ID

eval { 
    my $result = $api_instance->get_imap_smtp_access_env(inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_imap_smtp_access_env: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Inbox ID | [optional] 

### Return type

**string**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_imap_smtp_access_servers**
> ImapSmtpAccessServers get_imap_smtp_access_servers()



Get IMAP and SMTP server hosts

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
    my $result = $api_instance->get_imap_smtp_access_servers();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_imap_smtp_access_servers: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ImapSmtpAccessServers**](ImapSmtpAccessServers)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox**
> InboxDto get_inbox(inbox_id => $inbox_id)

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

my $inbox_id = null; # string | 

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
 **inbox_id** | [**string**]()|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_by_email_address**
> InboxByEmailAddressResult get_inbox_by_email_address(email_address => $email_address)

Search for an inbox with the provided email address

Get a inbox result by email address

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

my $email_address = "email_address_example"; # string | 

eval { 
    my $result = $api_instance->get_inbox_by_email_address(email_address => $email_address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_by_email_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **string**|  | 

### Return type

[**InboxByEmailAddressResult**](InboxByEmailAddressResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_by_name**
> InboxByNameResult get_inbox_by_name(name => $name)

Search for an inbox with the given name

Get a inbox result by name

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

my $name = "name_example"; # string | 

eval { 
    my $result = $api_instance->get_inbox_by_name(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_by_name: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 

### Return type

[**InboxByNameResult**](InboxByNameResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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
 - **Accept**: */*

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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_emails_paginated**
> PageEmailPreview get_inbox_emails_paginated(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, since => $since, before => $before, sync_connectors => $sync_connectors)

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
my $page = 0; # int | Optional page index in inbox emails list pagination
my $size = 20; # int | Optional page size in inbox emails list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by received after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by received before given date time
my $sync_connectors = null; # boolean | Sync connectors before fetching emails

eval { 
    my $result = $api_instance->get_inbox_emails_paginated(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, since => $since, before => $before, sync_connectors => $sync_connectors);
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
 **page** | **int**| Optional page index in inbox emails list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox emails list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter by received after given date time | [optional] 
 **before** | **DateTime**| Optional filter by received before given date time | [optional] 
 **sync_connectors** | **boolean**| Sync connectors before fetching emails | [optional] 

### Return type

[**PageEmailPreview**](PageEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_ids**
> InboxIdsResult get_inbox_ids()

Get all inbox IDs

Get list of inbox IDs

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
    my $result = $api_instance->get_inbox_ids();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_ids: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InboxIdsResult**](InboxIdsResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_plus_address**
> PlusAddressDto get_inbox_plus_address(plus_address_id => $plus_address_id, inbox_id => $inbox_id)

Get sub address plus address for an inbox

Returns a plus address object based on emails that used the inbox address with a +xyz alias.

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

my $plus_address_id = null; # string | ID of the plus address you want to fetch
my $inbox_id = null; # string | ID of the inbox you want to fetch

eval { 
    my $result = $api_instance->get_inbox_plus_address(plus_address_id => $plus_address_id, inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_plus_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plus_address_id** | [**string**]()| ID of the plus address you want to fetch | 
 **inbox_id** | [**string**]()| ID of the inbox you want to fetch | 

### Return type

[**PlusAddressDto**](PlusAddressDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_plus_address_by_id**
> PlusAddressDto get_inbox_plus_address_by_id(plus_address_id => $plus_address_id, inbox_id => $inbox_id)

Get sub address plus address by ID

Returns a plus address object based on emails that used the inbox address with a +xyz alias.

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

my $plus_address_id = null; # string | ID of the plus address you want to fetch
my $inbox_id = null; # string | ID of the inbox you want to filter for

eval { 
    my $result = $api_instance->get_inbox_plus_address_by_id(plus_address_id => $plus_address_id, inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_plus_address_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plus_address_id** | [**string**]()| ID of the plus address you want to fetch | 
 **inbox_id** | [**string**]()| ID of the inbox you want to filter for | [optional] 

### Return type

[**PlusAddressDto**](PlusAddressDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_plus_address_emails**
> PageEmailPreview get_inbox_plus_address_emails(plus_address => $plus_address, inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, since => $since, before => $before)

Get emails for a given inbox plus address

Returns paginated list of all emails for a given plus alias addresses found for an inbox based on received emails that used the inbox address with a +xyz alias.

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

my $plus_address = "plus_address_example"; # string | The plus address to fetch emails for. If your inbox address is `123@test.com` and the email was sent to `123+abc@test.com` then the plus address is `abc`
my $inbox_id = null; # string | ID of the inbox you want to send the email from
my $page = 0; # int | Optional page index in inbox tracking pixel list pagination
my $size = 20; # int | Optional page size in inbox tracking pixel list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time

eval { 
    my $result = $api_instance->get_inbox_plus_address_emails(plus_address => $plus_address, inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_plus_address_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plus_address** | **string**| The plus address to fetch emails for. If your inbox address is &#x60;123@test.com&#x60; and the email was sent to &#x60;123+abc@test.com&#x60; then the plus address is &#x60;abc&#x60; | 
 **inbox_id** | [**string**]()| ID of the inbox you want to send the email from | 
 **page** | **int**| Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox tracking pixel list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageEmailPreview**](PageEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_plus_address_emails_for_plus_address_id**
> PageEmailPreview get_inbox_plus_address_emails_for_plus_address_id(plus_address_id => $plus_address_id, inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, since => $since, before => $before)

Get emails for a given inbox plus address

Returns paginated list of all emails for a given plus alias addresses found for an inbox based on received emails that used the inbox address with a +xyz alias.

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

my $plus_address_id = null; # string | The plus address ID to fetch emails for.
my $inbox_id = null; # string | ID of the inbox you want to send the email from
my $page = 0; # int | Optional page index in inbox tracking pixel list pagination
my $size = 20; # int | Optional page size in inbox tracking pixel list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time

eval { 
    my $result = $api_instance->get_inbox_plus_address_emails_for_plus_address_id(plus_address_id => $plus_address_id, inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_plus_address_emails_for_plus_address_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plus_address_id** | [**string**]()| The plus address ID to fetch emails for. | 
 **inbox_id** | [**string**]()| ID of the inbox you want to send the email from | 
 **page** | **int**| Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox tracking pixel list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageEmailPreview**](PageEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_plus_addresses**
> PagePlusAddressProjection get_inbox_plus_addresses(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort)

Get sub address plus address aliases for an inbox

Returns paginated list of all plus alias addresses found for an inbox based on received emails that used the inbox address with a +xyz alias.

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
my $page = 0; # int | Optional page index in inbox tracking pixel list pagination
my $size = 20; # int | Optional page size in inbox tracking pixel list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_inbox_plus_addresses(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_plus_addresses: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of the inbox you want to send the email from | 
 **page** | **int**| Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox tracking pixel list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PagePlusAddressProjection**](PagePlusAddressProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_sent_count**
> CountDto get_inbox_sent_count(inbox_id => $inbox_id)

Get sent email count in inbox

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

my $inbox_id = null; # string | Id of inbox that emails were sent from

eval { 
    my $result = $api_instance->get_inbox_sent_count(inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_sent_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Id of inbox that emails were sent from | 

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_sent_emails**
> PageSentEmailProjection get_inbox_sent_emails(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before)

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

my $inbox_id = null; # string | 
my $page = 0; # int | Optional page index in inbox sent email list pagination
my $size = 20; # int | Optional page size in inbox sent email list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional sent email search
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by sent after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by sent before given date time

eval { 
    my $result = $api_instance->get_inbox_sent_emails(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_sent_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()|  | 
 **page** | **int**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional sent email search | [optional] 
 **since** | **DateTime**| Optional filter by sent after given date time | [optional] 
 **before** | **DateTime**| Optional filter by sent before given date time | [optional] 

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_tags**
> ARRAY[string] get_inbox_tags(page => $page, size => $size, sort => $sort, search_filter => $search_filter)

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

my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter

eval { 
    my $result = $api_instance->get_inbox_tags(page => $page, size => $size, sort => $sort, search_filter => $search_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_tags: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 

### Return type

**ARRAY[string]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_tags_paginated**
> PageInboxTags get_inbox_tags_paginated(page => $page, size => $size, sort => $sort, search_filter => $search_filter)

Get inbox tags paginated

Get all inbox tags paginated

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

my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter

eval { 
    my $result = $api_instance->get_inbox_tags_paginated(page => $page, size => $size, sort => $sort, search_filter => $search_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_tags_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 

### Return type

[**PageInboxTags**](PageInboxTags)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inboxes**
> ARRAY[InboxDto] get_inboxes(size => $size, sort => $sort, since => $since, exclude_catch_all_inboxes => $exclude_catch_all_inboxes, before => $before, include => $include)

List Inboxes and email addresses

List the inboxes you have created. Note use of the more advanced `getAllInboxes` is recommended and allows paginated access using a limit and sort parameter.

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

my $size = 100; # int | Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries.
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $exclude_catch_all_inboxes = null; # boolean | Optional exclude catch all inboxes
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time
my $include = [("null")]; # ARRAY[string] | Optional inboxIds to include in result

eval { 
    my $result = $api_instance->get_inboxes(size => $size, sort => $sort, since => $since, exclude_catch_all_inboxes => $exclude_catch_all_inboxes, before => $before, include => $include);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inboxes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated &#x60;getAllEmails&#x60; for larger queries. | [optional] [default to 100]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **exclude_catch_all_inboxes** | **boolean**| Optional exclude catch all inboxes | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 
 **include** | [**ARRAY[string]**](string)| Optional inboxIds to include in result | [optional] 

### Return type

[**ARRAY[InboxDto]**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inboxes_by_tag**
> PageInboxProjection get_inboxes_by_tag(tag => $tag, page => $page, size => $size, sort => $sort, search_filter => $search_filter)

Get inboxes for a tag

Get all inboxes for a given inbox tag

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

my $tag = "tag_example"; # string | Tag to filter by
my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter

eval { 
    my $result = $api_instance->get_inboxes_by_tag(tag => $tag, page => $page, size => $size, sort => $sort, search_filter => $search_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inboxes_by_tag: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **string**| Tag to filter by | 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_latest_email_in_inbox**
> Email get_latest_email_in_inbox(inbox_id => $inbox_id, timeout_millis => $timeout_millis)

Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.

Get the newest email in an inbox or wait for one to arrive

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

my $inbox_id = null; # string | ID of the inbox you want to get the latest email from
my $timeout_millis = 789; # int | Timeout milliseconds to wait for latest email

eval { 
    my $result = $api_instance->get_latest_email_in_inbox(inbox_id => $inbox_id, timeout_millis => $timeout_millis);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_latest_email_in_inbox: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of the inbox you want to get the latest email from | 
 **timeout_millis** | **int**| Timeout milliseconds to wait for latest email | 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_organization_inboxes**
> PageOrganizationInboxProjection get_organization_inboxes(page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before)

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

my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time

eval { 
    my $result = $api_instance->get_organization_inboxes(page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_organization_inboxes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageOrganizationInboxProjection**](PageOrganizationInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_outboxes**
> PageInboxProjection get_outboxes(page => $page, size => $size, sort => $sort)

List all inboxes with sent emails

List inboxes that have sent emails

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

my $page = 0; # int | Optional page index in list pagination
my $size = 20; # int | Optional page size in list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC

eval { 
    my $result = $api_instance->get_outboxes(page => $page, size => $size, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_outboxes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageInboxProjection**](PageInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_scheduled_job**
> ScheduledJobDto get_scheduled_job(job_id => $job_id)

Get a scheduled email job

Get a scheduled email job details.

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

my $job_id = null; # string | 

eval { 
    my $result = $api_instance->get_scheduled_job(job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_scheduled_job: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | [**string**]()|  | 

### Return type

[**ScheduledJobDto**](ScheduledJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_scheduled_jobs_by_inbox_id**
> PageScheduledJobs get_scheduled_jobs_by_inbox_id(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, since => $since, before => $before)

Get all scheduled email sending jobs for the inbox

Schedule sending of emails using scheduled jobs.

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

my $inbox_id = null; # string | 
my $page = 0; # int | Optional page index in scheduled job list pagination
my $size = 20; # int | Optional page size in scheduled job list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at after the given timestamp
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Filter by created at before the given timestamp

eval { 
    my $result = $api_instance->get_scheduled_jobs_by_inbox_id(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_scheduled_jobs_by_inbox_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()|  | 
 **page** | **int**| Optional page index in scheduled job list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in scheduled job list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageScheduledJobs**](PageScheduledJobs)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_smtp_access**
> SmtpAccessDetails get_smtp_access(inbox_id => $inbox_id)



Get SMTP access usernames and passwords

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

my $inbox_id = null; # string | Inbox ID

eval { 
    my $result = $api_instance->get_smtp_access(inbox_id => $inbox_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_smtp_access: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| Inbox ID | [optional] 

### Return type

[**SmtpAccessDetails**](SmtpAccessDetails)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **is_email_address_available**
> EmailAvailableResult is_email_address_available(email_address => $email_address)

Is email address available

Returns whether an email address is available

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

my $email_address = "email_address_example"; # string | 

eval { 
    my $result = $api_instance->is_email_address_available(email_address => $email_address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->is_email_address_available: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **string**|  | 

### Return type

[**EmailAvailableResult**](EmailAvailableResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **list_inbox_rulesets**
> PageInboxRulesetDto list_inbox_rulesets(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before)

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

my $inbox_id = null; # string | 
my $page = 0; # int | Optional page index in inbox ruleset list pagination
my $size = 20; # int | Optional page size in inbox ruleset list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time

eval { 
    my $result = $api_instance->list_inbox_rulesets(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->list_inbox_rulesets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()|  | 
 **page** | **int**| Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageInboxRulesetDto**](PageInboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **list_inbox_tracking_pixels**
> PageTrackingPixelProjection list_inbox_tracking_pixels(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before)

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

my $inbox_id = null; # string | 
my $page = 0; # int | Optional page index in inbox tracking pixel list pagination
my $size = 20; # int | Optional page size in inbox tracking pixel list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time

eval { 
    my $result = $api_instance->list_inbox_tracking_pixels(inbox_id => $inbox_id, page => $page, size => $size, sort => $sort, search_filter => $search_filter, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->list_inbox_tracking_pixels: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()|  | 
 **page** | **int**| Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox tracking pixel list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **string**| Optional search filter | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **search_inboxes**
> PageInboxProjection search_inboxes(search_inboxes_options => $search_inboxes_options)

Search all inboxes and return matching inboxes

Search inboxes and return in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.

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

my $search_inboxes_options = MailSlurp::Object::SearchInboxesOptions->new(); # SearchInboxesOptions | 

eval { 
    my $result = $api_instance->search_inboxes(search_inboxes_options => $search_inboxes_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->search_inboxes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_inboxes_options** | [**SearchInboxesOptions**](SearchInboxesOptions)|  | 

### Return type

[**PageInboxProjection**](PageInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

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
my $send_email_options = MailSlurp::Object::SendEmailOptions->new(); # SendEmailOptions | 

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
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 

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
my $send_email_options = MailSlurp::Object::SendEmailOptions->new(); # SendEmailOptions | 

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
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_email_with_queue**
> send_email_with_queue(inbox_id => $inbox_id, validate_before_enqueue => $validate_before_enqueue, send_email_options => $send_email_options)

Send email with queue

Send an email using a queue. Will place the email onto a queue that will then be processed and sent. Use this queue method to enable any failed email sending to be recovered. This will prevent lost emails when sending if your account encounters a block or payment issue.

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
my $validate_before_enqueue = null; # boolean | Validate before adding to queue
my $send_email_options = MailSlurp::Object::SendEmailOptions->new(); # SendEmailOptions | 

eval { 
    $api_instance->send_email_with_queue(inbox_id => $inbox_id, validate_before_enqueue => $validate_before_enqueue, send_email_options => $send_email_options);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->send_email_with_queue: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of the inbox you want to send the email from | 
 **validate_before_enqueue** | **boolean**| Validate before adding to queue | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_smtp_envelope**
> SentEmailDto send_smtp_envelope(inbox_id => $inbox_id, send_smtp_envelope_options => $send_smtp_envelope_options)

Send email using an SMTP mail envelope and message body and return sent confirmation

Send email using an SMTP envelope containing RCPT TO, MAIL FROM, and a SMTP BODY.

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
my $send_smtp_envelope_options = MailSlurp::Object::SendSMTPEnvelopeOptions->new(); # SendSMTPEnvelopeOptions | 

eval { 
    my $result = $api_instance->send_smtp_envelope(inbox_id => $inbox_id, send_smtp_envelope_options => $send_smtp_envelope_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->send_smtp_envelope: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of the inbox you want to send the email from | 
 **send_smtp_envelope_options** | [**SendSMTPEnvelopeOptions**](SendSMTPEnvelopeOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

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

my $inbox_id = null; # string | 

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
 **inbox_id** | [**string**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **send_with_schedule**
> ScheduledJobDto send_with_schedule(inbox_id => $inbox_id, send_email_options => $send_email_options, send_at_timestamp => $send_at_timestamp, send_at_now_plus_seconds => $send_at_now_plus_seconds, validate_before_enqueue => $validate_before_enqueue)

Send email with with delay or schedule

Send an email using a delay. Will place the email onto a scheduler that will then be processed and sent. Use delays to schedule email sending.

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
my $send_email_options = MailSlurp::Object::SendEmailOptions->new(); # SendEmailOptions | 
my $send_at_timestamp = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Sending timestamp
my $send_at_now_plus_seconds = 789; # int | Send after n seconds
my $validate_before_enqueue = null; # boolean | Validate before adding to queue

eval { 
    my $result = $api_instance->send_with_schedule(inbox_id => $inbox_id, send_email_options => $send_email_options, send_at_timestamp => $send_at_timestamp, send_at_now_plus_seconds => $send_at_now_plus_seconds, validate_before_enqueue => $validate_before_enqueue);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->send_with_schedule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**string**]()| ID of the inbox you want to send the email from | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 
 **send_at_timestamp** | **DateTime**| Sending timestamp | [optional] 
 **send_at_now_plus_seconds** | **int**| Send after n seconds | [optional] 
 **validate_before_enqueue** | **boolean**| Validate before adding to queue | [optional] 

### Return type

[**ScheduledJobDto**](ScheduledJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **set_inbox_favourited**
> InboxDto set_inbox_favourited(inbox_id => $inbox_id, set_inbox_favourited_options => $set_inbox_favourited_options)

Set inbox favourited state

Set and return new favorite state for an inbox

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

my $inbox_id = null; # string | ID of inbox to set favourite state
my $set_inbox_favourited_options = MailSlurp::Object::SetInboxFavouritedOptions->new(); # SetInboxFavouritedOptions | 

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
 **inbox_id** | [**string**]()| ID of inbox to set favourite state | 
 **set_inbox_favourited_options** | [**SetInboxFavouritedOptions**](SetInboxFavouritedOptions)|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_imap_access**
> update_imap_access(update_imap_access_options => $update_imap_access_options, inbox_id => $inbox_id)



Update IMAP access usernames and passwords

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

my $update_imap_access_options = MailSlurp::Object::UpdateImapAccessOptions->new(); # UpdateImapAccessOptions | 
my $inbox_id = null; # string | Inbox ID

eval { 
    $api_instance->update_imap_access(update_imap_access_options => $update_imap_access_options, inbox_id => $inbox_id);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->update_imap_access: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_imap_access_options** | [**UpdateImapAccessOptions**](UpdateImapAccessOptions)|  | 
 **inbox_id** | [**string**]()| Inbox ID | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_inbox**
> InboxDto update_inbox(inbox_id => $inbox_id, update_inbox_options => $update_inbox_options)

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

my $inbox_id = null; # string | 
my $update_inbox_options = MailSlurp::Object::UpdateInboxOptions->new(); # UpdateInboxOptions | 

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
 **inbox_id** | [**string**]()|  | 
 **update_inbox_options** | [**UpdateInboxOptions**](UpdateInboxOptions)|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **update_smtp_access**
> update_smtp_access(update_smtp_access_options => $update_smtp_access_options, inbox_id => $inbox_id)



Update SMTP access usernames and passwords

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

my $update_smtp_access_options = MailSlurp::Object::UpdateSmtpAccessOptions->new(); # UpdateSmtpAccessOptions | 
my $inbox_id = null; # string | Inbox ID

eval { 
    $api_instance->update_smtp_access(update_smtp_access_options => $update_smtp_access_options, inbox_id => $inbox_id);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->update_smtp_access: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_smtp_access_options** | [**UpdateSmtpAccessOptions**](UpdateSmtpAccessOptions)|  | 
 **inbox_id** | [**string**]()| Inbox ID | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

