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
> InboxDto create_inbox(a_custom_email_address_to_use_with_the_inbox/_defaults_to_null/_when_null_mail_slurp_will_assign_a_random_email_address_to_the_inbox_such_as_&#x60;123@mailslurp/com&#x60;/_if_you_use_the_&#x60;use_domain_pool&#x60;_option_when_the_email_address_is_null_it_will_generate_an_email_address_with_a_more_varied_domain_ending_such_as_&#x60;123@mailslurp/info&#x60;_or_&#x60;123@mailslurp/biz&#x60;/_when_a_custom_email_address_is_provided_the_address_is_split_into_a_domain_and_the_domain_is_queried_against_your_user/_if_you_have_created_the_domain_in_the_mail_slurp_dashboard_and_verified_it_you_can_use_any_email_address_that_ends_with_the_domain/_note_domain_types_must_match_the_inbox_type___so_&#x60;smtp&#x60;_inboxes_will_only_work_with_&#x60;smtp&#x60;_type_domains/_avoid_&#x60;smtp&#x60;_inboxes_if_you_need_to_send_emails_as_they_can_only_receive/_send_an_email_to_this_address_and_the_inbox_will_receive_and_store_it_for_you/_to_retrieve_the_email_use_the_inbox_and_email_controller_endpoints_with_the_inbox_id/ => $a_custom_email_address_to_use_with_the_inbox/_defaults_to_null/_when_null_mail_slurp_will_assign_a_random_email_address_to_the_inbox_such_as_&#x60;123@mailslurp/com&#x60;/_if_you_use_the_&#x60;use_domain_pool&#x60;_option_when_the_email_address_is_null_it_will_generate_an_email_address_with_a_more_varied_domain_ending_such_as_&#x60;123@mailslurp/info&#x60;_or_&#x60;123@mailslurp/biz&#x60;/_when_a_custom_email_address_is_provided_the_address_is_split_into_a_domain_and_the_domain_is_queried_against_your_user/_if_you_have_created_the_domain_in_the_mail_slurp_dashboard_and_verified_it_you_can_use_any_email_address_that_ends_with_the_domain/_note_domain_types_must_match_the_inbox_type___so_&#x60;smtp&#x60;_inboxes_will_only_work_with_&#x60;smtp&#x60;_type_domains/_avoid_&#x60;smtp&#x60;_inboxes_if_you_need_to_send_emails_as_they_can_only_receive/_send_an_email_to_this_address_and_the_inbox_will_receive_and_store_it_for_you/_to_retrieve_the_email_use_the_inbox_and_email_controller_endpoints_with_the_inbox_id/, tags_that_inbox_has_been_tagged_with/_tags_can_be_added_to_inboxes_to_group_different_inboxes_within_an_account/_you_can_also_search_for_inboxes_by_tag_in_the_dashboard_ui/ => $tags_that_inbox_has_been_tagged_with/_tags_can_be_added_to_inboxes_to_group_different_inboxes_within_an_account/_you_can_also_search_for_inboxes_by_tag_in_the_dashboard_ui/, optional_name_of_the_inbox/_displayed_in_the_dashboard_for_easier_search_and_used_as_the_sender_name_when_sending_emails/ => $optional_name_of_the_inbox/_displayed_in_the_dashboard_for_easier_search_and_used_as_the_sender_name_when_sending_emails/, optional_description_of_the_inbox_for_labelling_purposes/_is_shown_in_the_dashboard_and_can_be_used_with => $optional_description_of_the_inbox_for_labelling_purposes/_is_shown_in_the_dashboard_and_can_be_used_with, use_the_mail_slurp_domain_name_pool_with_this_inbox_when_creating_the_email_address/_defaults_to_null/_if_enabled_the_inbox_will_be_an_email_address_with_a_domain_randomly_chosen_from_a_list_of_the_mail_slurp_domains/_this_is_useful_when_the_default_&#x60;@mailslurp/com&#x60;_email_addresses_used_with_inboxes_are_blocked_or_considered_spam_by_a_provider_or_receiving_service/_when_domain_pool_is_enabled_an_email_address_will_be_generated_ending_in_&#x60;@mailslurp/{world,info,xyz,///}&#x60;_/_this_means_a_tld_is_randomly_selecting_from_a_list_of_&#x60;/biz&#x60;,_&#x60;/info&#x60;,_&#x60;/xyz&#x60;_etc_to_add_variance_to_the_generated_email_addresses/_when_null_or_false_mail_slurp_uses_the_default_behavior_of_&#x60;@mailslurp/com&#x60;_or_custom_email_address_provided_by_the_email_address_field/_note_this_feature_is_only_available_for_&#x60;http&#x60;_inbox_types/ => $use_the_mail_slurp_domain_name_pool_with_this_inbox_when_creating_the_email_address/_defaults_to_null/_if_enabled_the_inbox_will_be_an_email_address_with_a_domain_randomly_chosen_from_a_list_of_the_mail_slurp_domains/_this_is_useful_when_the_default_&#x60;@mailslurp/com&#x60;_email_addresses_used_with_inboxes_are_blocked_or_considered_spam_by_a_provider_or_receiving_service/_when_domain_pool_is_enabled_an_email_address_will_be_generated_ending_in_&#x60;@mailslurp/{world,info,xyz,///}&#x60;_/_this_means_a_tld_is_randomly_selecting_from_a_list_of_&#x60;/biz&#x60;,_&#x60;/info&#x60;,_&#x60;/xyz&#x60;_etc_to_add_variance_to_the_generated_email_addresses/_when_null_or_false_mail_slurp_uses_the_default_behavior_of_&#x60;@mailslurp/com&#x60;_or_custom_email_address_provided_by_the_email_address_field/_note_this_feature_is_only_available_for_&#x60;http&#x60;_inbox_types/, is_the_inbox_a_favorite/_marking_an_inbox_as_a_favorite_is_typically_done_in_the_dashboard_for_quick_access_or_filtering => $is_the_inbox_a_favorite/_marking_an_inbox_as_a_favorite_is_typically_done_in_the_dashboard_for_quick_access_or_filtering, optional_inbox_expiration_date/_if_null_then_this_inbox_is_permanent_and_the_emails_in_it_won&#39;t_be_deleted/_if_an_expiration_date_is_provided_or_is_required_by_your_plan_the_inbox_will_be_closed_when_the_expiration_time_is_reached/_expired_inboxes_still_contain_their_emails_but_can_no_longer_send_or_receive_emails/_an_expired_inbox_record_is_created_when_an_inbox_and_the_email_address_and_inbox_id_are_recorded/_the_expires_at_property_is_a_timestamp_string_in_iso_date_time_format_yyyy_mm_dd&#39;t&#39;hh:mm:ss/sssxxx/ => $optional_inbox_expiration_date/_if_null_then_this_inbox_is_permanent_and_the_emails_in_it_won&#39;t_be_deleted/_if_an_expiration_date_is_provided_or_is_required_by_your_plan_the_inbox_will_be_closed_when_the_expiration_time_is_reached/_expired_inboxes_still_contain_their_emails_but_can_no_longer_send_or_receive_emails/_an_expired_inbox_record_is_created_when_an_inbox_and_the_email_address_and_inbox_id_are_recorded/_the_expires_at_property_is_a_timestamp_string_in_iso_date_time_format_yyyy_mm_dd&#39;t&#39;hh:mm:ss/sssxxx/, number_of_milliseconds_that_inbox_should_exist_for => $number_of_milliseconds_that_inbox_should_exist_for, deprecated_(team_access_is_always_true)/_grant_team_access_to_this_inbox_and_the_emails_that_belong_to_it_for_team_members_of_your_organization/ => $deprecated_(team_access_is_always_true)/_grant_team_access_to_this_inbox_and_the_emails_that_belong_to_it_for_team_members_of_your_organization/, http_(default)_or_smtp_inbox_type/_http_inboxes_are_default_and_best_solution_for_most_cases/_smtp_inboxes_are_more_reliable_for_public_inbound_email_consumption_(but_do_not_support_sending_emails)/_when_using_custom_domains_the_domain_type_must_match_the_inbox_type/_http_inboxes_are_processed_by_aws_ses_while_smtp_inboxes_use_a_custom_mail_server_running_at_&#x60;mx/mailslurp/com&#x60;/ => $http_(default)_or_smtp_inbox_type/_http_inboxes_are_default_and_best_solution_for_most_cases/_smtp_inboxes_are_more_reliable_for_public_inbound_email_consumption_(but_do_not_support_sending_emails)/_when_using_custom_domains_the_domain_type_must_match_the_inbox_type/_http_inboxes_are_processed_by_aws_ses_while_smtp_inboxes_use_a_custom_mail_server_running_at_&#x60;mx/mailslurp/com&#x60;/)

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

my $a_custom_email_address_to_use_with_the_inbox/_defaults_to_null/_when_null_mail_slurp_will_assign_a_random_email_address_to_the_inbox_such_as_&#x60;123@mailslurp/com&#x60;/_if_you_use_the_&#x60;use_domain_pool&#x60;_option_when_the_email_address_is_null_it_will_generate_an_email_address_with_a_more_varied_domain_ending_such_as_&#x60;123@mailslurp/info&#x60;_or_&#x60;123@mailslurp/biz&#x60;/_when_a_custom_email_address_is_provided_the_address_is_split_into_a_domain_and_the_domain_is_queried_against_your_user/_if_you_have_created_the_domain_in_the_mail_slurp_dashboard_and_verified_it_you_can_use_any_email_address_that_ends_with_the_domain/_note_domain_types_must_match_the_inbox_type___so_&#x60;smtp&#x60;_inboxes_will_only_work_with_&#x60;smtp&#x60;_type_domains/_avoid_&#x60;smtp&#x60;_inboxes_if_you_need_to_send_emails_as_they_can_only_receive/_send_an_email_to_this_address_and_the_inbox_will_receive_and_store_it_for_you/_to_retrieve_the_email_use_the_inbox_and_email_controller_endpoints_with_the_inbox_id/ = "a_custom_email_address_to_use_with_the_inbox/_defaults_to_null/_when_null_mail_slurp_will_assign_a_random_email_address_to_the_inbox_such_as_`123@mailslurp/com`/_if_you_use_the_`use_domain_pool`_option_when_the_email_address_is_null_it_will_generate_an_email_address_with_a_more_varied_domain_ending_such_as_`123@mailslurp/info`_or_`123@mailslurp/biz`/_when_a_custom_email_address_is_provided_the_address_is_split_into_a_domain_and_the_domain_is_queried_against_your_user/_if_you_have_created_the_domain_in_the_mail_slurp_dashboard_and_verified_it_you_can_use_any_email_address_that_ends_with_the_domain/_note_domain_types_must_match_the_inbox_type___so_`smtp`_inboxes_will_only_work_with_`smtp`_type_domains/_avoid_`smtp`_inboxes_if_you_need_to_send_emails_as_they_can_only_receive/_send_an_email_to_this_address_and_the_inbox_will_receive_and_store_it_for_you/_to_retrieve_the_email_use_the_inbox_and_email_controller_endpoints_with_the_inbox_id/_example"; # string | 
my $tags_that_inbox_has_been_tagged_with/_tags_can_be_added_to_inboxes_to_group_different_inboxes_within_an_account/_you_can_also_search_for_inboxes_by_tag_in_the_dashboard_ui/ = [("null")]; # ARRAY[string] | 
my $optional_name_of_the_inbox/_displayed_in_the_dashboard_for_easier_search_and_used_as_the_sender_name_when_sending_emails/ = "optional_name_of_the_inbox/_displayed_in_the_dashboard_for_easier_search_and_used_as_the_sender_name_when_sending_emails/_example"; # string | 
my $optional_description_of_the_inbox_for_labelling_purposes/_is_shown_in_the_dashboard_and_can_be_used_with = "optional_description_of_the_inbox_for_labelling_purposes/_is_shown_in_the_dashboard_and_can_be_used_with_example"; # string | 
my $use_the_mail_slurp_domain_name_pool_with_this_inbox_when_creating_the_email_address/_defaults_to_null/_if_enabled_the_inbox_will_be_an_email_address_with_a_domain_randomly_chosen_from_a_list_of_the_mail_slurp_domains/_this_is_useful_when_the_default_&#x60;@mailslurp/com&#x60;_email_addresses_used_with_inboxes_are_blocked_or_considered_spam_by_a_provider_or_receiving_service/_when_domain_pool_is_enabled_an_email_address_will_be_generated_ending_in_&#x60;@mailslurp/{world,info,xyz,///}&#x60;_/_this_means_a_tld_is_randomly_selecting_from_a_list_of_&#x60;/biz&#x60;,_&#x60;/info&#x60;,_&#x60;/xyz&#x60;_etc_to_add_variance_to_the_generated_email_addresses/_when_null_or_false_mail_slurp_uses_the_default_behavior_of_&#x60;@mailslurp/com&#x60;_or_custom_email_address_provided_by_the_email_address_field/_note_this_feature_is_only_available_for_&#x60;http&#x60;_inbox_types/ = null; # boolean | 
my $is_the_inbox_a_favorite/_marking_an_inbox_as_a_favorite_is_typically_done_in_the_dashboard_for_quick_access_or_filtering = null; # boolean | 
my $optional_inbox_expiration_date/_if_null_then_this_inbox_is_permanent_and_the_emails_in_it_won&#39;t_be_deleted/_if_an_expiration_date_is_provided_or_is_required_by_your_plan_the_inbox_will_be_closed_when_the_expiration_time_is_reached/_expired_inboxes_still_contain_their_emails_but_can_no_longer_send_or_receive_emails/_an_expired_inbox_record_is_created_when_an_inbox_and_the_email_address_and_inbox_id_are_recorded/_the_expires_at_property_is_a_timestamp_string_in_iso_date_time_format_yyyy_mm_dd&#39;t&#39;hh:mm:ss/sssxxx/ = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $number_of_milliseconds_that_inbox_should_exist_for = 789; # int | 
my $deprecated_(team_access_is_always_true)/_grant_team_access_to_this_inbox_and_the_emails_that_belong_to_it_for_team_members_of_your_organization/ = null; # boolean | 
my $http_(default)_or_smtp_inbox_type/_http_inboxes_are_default_and_best_solution_for_most_cases/_smtp_inboxes_are_more_reliable_for_public_inbound_email_consumption_(but_do_not_support_sending_emails)/_when_using_custom_domains_the_domain_type_must_match_the_inbox_type/_http_inboxes_are_processed_by_aws_ses_while_smtp_inboxes_use_a_custom_mail_server_running_at_&#x60;mx/mailslurp/com&#x60;/ = "http_(default)_or_smtp_inbox_type/_http_inboxes_are_default_and_best_solution_for_most_cases/_smtp_inboxes_are_more_reliable_for_public_inbound_email_consumption_(but_do_not_support_sending_emails)/_when_using_custom_domains_the_domain_type_must_match_the_inbox_type/_http_inboxes_are_processed_by_aws_ses_while_smtp_inboxes_use_a_custom_mail_server_running_at_`mx/mailslurp/com`/_example"; # string | 

eval { 
    my $result = $api_instance->create_inbox(a_custom_email_address_to_use_with_the_inbox/_defaults_to_null/_when_null_mail_slurp_will_assign_a_random_email_address_to_the_inbox_such_as_&#x60;123@mailslurp/com&#x60;/_if_you_use_the_&#x60;use_domain_pool&#x60;_option_when_the_email_address_is_null_it_will_generate_an_email_address_with_a_more_varied_domain_ending_such_as_&#x60;123@mailslurp/info&#x60;_or_&#x60;123@mailslurp/biz&#x60;/_when_a_custom_email_address_is_provided_the_address_is_split_into_a_domain_and_the_domain_is_queried_against_your_user/_if_you_have_created_the_domain_in_the_mail_slurp_dashboard_and_verified_it_you_can_use_any_email_address_that_ends_with_the_domain/_note_domain_types_must_match_the_inbox_type___so_&#x60;smtp&#x60;_inboxes_will_only_work_with_&#x60;smtp&#x60;_type_domains/_avoid_&#x60;smtp&#x60;_inboxes_if_you_need_to_send_emails_as_they_can_only_receive/_send_an_email_to_this_address_and_the_inbox_will_receive_and_store_it_for_you/_to_retrieve_the_email_use_the_inbox_and_email_controller_endpoints_with_the_inbox_id/ => $a_custom_email_address_to_use_with_the_inbox/_defaults_to_null/_when_null_mail_slurp_will_assign_a_random_email_address_to_the_inbox_such_as_&#x60;123@mailslurp/com&#x60;/_if_you_use_the_&#x60;use_domain_pool&#x60;_option_when_the_email_address_is_null_it_will_generate_an_email_address_with_a_more_varied_domain_ending_such_as_&#x60;123@mailslurp/info&#x60;_or_&#x60;123@mailslurp/biz&#x60;/_when_a_custom_email_address_is_provided_the_address_is_split_into_a_domain_and_the_domain_is_queried_against_your_user/_if_you_have_created_the_domain_in_the_mail_slurp_dashboard_and_verified_it_you_can_use_any_email_address_that_ends_with_the_domain/_note_domain_types_must_match_the_inbox_type___so_&#x60;smtp&#x60;_inboxes_will_only_work_with_&#x60;smtp&#x60;_type_domains/_avoid_&#x60;smtp&#x60;_inboxes_if_you_need_to_send_emails_as_they_can_only_receive/_send_an_email_to_this_address_and_the_inbox_will_receive_and_store_it_for_you/_to_retrieve_the_email_use_the_inbox_and_email_controller_endpoints_with_the_inbox_id/, tags_that_inbox_has_been_tagged_with/_tags_can_be_added_to_inboxes_to_group_different_inboxes_within_an_account/_you_can_also_search_for_inboxes_by_tag_in_the_dashboard_ui/ => $tags_that_inbox_has_been_tagged_with/_tags_can_be_added_to_inboxes_to_group_different_inboxes_within_an_account/_you_can_also_search_for_inboxes_by_tag_in_the_dashboard_ui/, optional_name_of_the_inbox/_displayed_in_the_dashboard_for_easier_search_and_used_as_the_sender_name_when_sending_emails/ => $optional_name_of_the_inbox/_displayed_in_the_dashboard_for_easier_search_and_used_as_the_sender_name_when_sending_emails/, optional_description_of_the_inbox_for_labelling_purposes/_is_shown_in_the_dashboard_and_can_be_used_with => $optional_description_of_the_inbox_for_labelling_purposes/_is_shown_in_the_dashboard_and_can_be_used_with, use_the_mail_slurp_domain_name_pool_with_this_inbox_when_creating_the_email_address/_defaults_to_null/_if_enabled_the_inbox_will_be_an_email_address_with_a_domain_randomly_chosen_from_a_list_of_the_mail_slurp_domains/_this_is_useful_when_the_default_&#x60;@mailslurp/com&#x60;_email_addresses_used_with_inboxes_are_blocked_or_considered_spam_by_a_provider_or_receiving_service/_when_domain_pool_is_enabled_an_email_address_will_be_generated_ending_in_&#x60;@mailslurp/{world,info,xyz,///}&#x60;_/_this_means_a_tld_is_randomly_selecting_from_a_list_of_&#x60;/biz&#x60;,_&#x60;/info&#x60;,_&#x60;/xyz&#x60;_etc_to_add_variance_to_the_generated_email_addresses/_when_null_or_false_mail_slurp_uses_the_default_behavior_of_&#x60;@mailslurp/com&#x60;_or_custom_email_address_provided_by_the_email_address_field/_note_this_feature_is_only_available_for_&#x60;http&#x60;_inbox_types/ => $use_the_mail_slurp_domain_name_pool_with_this_inbox_when_creating_the_email_address/_defaults_to_null/_if_enabled_the_inbox_will_be_an_email_address_with_a_domain_randomly_chosen_from_a_list_of_the_mail_slurp_domains/_this_is_useful_when_the_default_&#x60;@mailslurp/com&#x60;_email_addresses_used_with_inboxes_are_blocked_or_considered_spam_by_a_provider_or_receiving_service/_when_domain_pool_is_enabled_an_email_address_will_be_generated_ending_in_&#x60;@mailslurp/{world,info,xyz,///}&#x60;_/_this_means_a_tld_is_randomly_selecting_from_a_list_of_&#x60;/biz&#x60;,_&#x60;/info&#x60;,_&#x60;/xyz&#x60;_etc_to_add_variance_to_the_generated_email_addresses/_when_null_or_false_mail_slurp_uses_the_default_behavior_of_&#x60;@mailslurp/com&#x60;_or_custom_email_address_provided_by_the_email_address_field/_note_this_feature_is_only_available_for_&#x60;http&#x60;_inbox_types/, is_the_inbox_a_favorite/_marking_an_inbox_as_a_favorite_is_typically_done_in_the_dashboard_for_quick_access_or_filtering => $is_the_inbox_a_favorite/_marking_an_inbox_as_a_favorite_is_typically_done_in_the_dashboard_for_quick_access_or_filtering, optional_inbox_expiration_date/_if_null_then_this_inbox_is_permanent_and_the_emails_in_it_won&#39;t_be_deleted/_if_an_expiration_date_is_provided_or_is_required_by_your_plan_the_inbox_will_be_closed_when_the_expiration_time_is_reached/_expired_inboxes_still_contain_their_emails_but_can_no_longer_send_or_receive_emails/_an_expired_inbox_record_is_created_when_an_inbox_and_the_email_address_and_inbox_id_are_recorded/_the_expires_at_property_is_a_timestamp_string_in_iso_date_time_format_yyyy_mm_dd&#39;t&#39;hh:mm:ss/sssxxx/ => $optional_inbox_expiration_date/_if_null_then_this_inbox_is_permanent_and_the_emails_in_it_won&#39;t_be_deleted/_if_an_expiration_date_is_provided_or_is_required_by_your_plan_the_inbox_will_be_closed_when_the_expiration_time_is_reached/_expired_inboxes_still_contain_their_emails_but_can_no_longer_send_or_receive_emails/_an_expired_inbox_record_is_created_when_an_inbox_and_the_email_address_and_inbox_id_are_recorded/_the_expires_at_property_is_a_timestamp_string_in_iso_date_time_format_yyyy_mm_dd&#39;t&#39;hh:mm:ss/sssxxx/, number_of_milliseconds_that_inbox_should_exist_for => $number_of_milliseconds_that_inbox_should_exist_for, deprecated_(team_access_is_always_true)/_grant_team_access_to_this_inbox_and_the_emails_that_belong_to_it_for_team_members_of_your_organization/ => $deprecated_(team_access_is_always_true)/_grant_team_access_to_this_inbox_and_the_emails_that_belong_to_it_for_team_members_of_your_organization/, http_(default)_or_smtp_inbox_type/_http_inboxes_are_default_and_best_solution_for_most_cases/_smtp_inboxes_are_more_reliable_for_public_inbound_email_consumption_(but_do_not_support_sending_emails)/_when_using_custom_domains_the_domain_type_must_match_the_inbox_type/_http_inboxes_are_processed_by_aws_ses_while_smtp_inboxes_use_a_custom_mail_server_running_at_&#x60;mx/mailslurp/com&#x60;/ => $http_(default)_or_smtp_inbox_type/_http_inboxes_are_default_and_best_solution_for_most_cases/_smtp_inboxes_are_more_reliable_for_public_inbound_email_consumption_(but_do_not_support_sending_emails)/_when_using_custom_domains_the_domain_type_must_match_the_inbox_type/_http_inboxes_are_processed_by_aws_ses_while_smtp_inboxes_use_a_custom_mail_server_running_at_&#x60;mx/mailslurp/com&#x60;/);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->create_inbox: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **a_custom_email_address_to_use_with_the_inbox/_defaults_to_null/_when_null_mail_slurp_will_assign_a_random_email_address_to_the_inbox_such_as_&#x60;123@mailslurp/com&#x60;/_if_you_use_the_&#x60;use_domain_pool&#x60;_option_when_the_email_address_is_null_it_will_generate_an_email_address_with_a_more_varied_domain_ending_such_as_&#x60;123@mailslurp/info&#x60;_or_&#x60;123@mailslurp/biz&#x60;/_when_a_custom_email_address_is_provided_the_address_is_split_into_a_domain_and_the_domain_is_queried_against_your_user/_if_you_have_created_the_domain_in_the_mail_slurp_dashboard_and_verified_it_you_can_use_any_email_address_that_ends_with_the_domain/_note_domain_types_must_match_the_inbox_type___so_&#x60;smtp&#x60;_inboxes_will_only_work_with_&#x60;smtp&#x60;_type_domains/_avoid_&#x60;smtp&#x60;_inboxes_if_you_need_to_send_emails_as_they_can_only_receive/_send_an_email_to_this_address_and_the_inbox_will_receive_and_store_it_for_you/_to_retrieve_the_email_use_the_inbox_and_email_controller_endpoints_with_the_inbox_id/** | **string**|  | [optional] 
 **tags_that_inbox_has_been_tagged_with/_tags_can_be_added_to_inboxes_to_group_different_inboxes_within_an_account/_you_can_also_search_for_inboxes_by_tag_in_the_dashboard_ui/** | [**ARRAY[string]**](string)|  | [optional] 
 **optional_name_of_the_inbox/_displayed_in_the_dashboard_for_easier_search_and_used_as_the_sender_name_when_sending_emails/** | **string**|  | [optional] 
 **optional_description_of_the_inbox_for_labelling_purposes/_is_shown_in_the_dashboard_and_can_be_used_with** | **string**|  | [optional] 
 **use_the_mail_slurp_domain_name_pool_with_this_inbox_when_creating_the_email_address/_defaults_to_null/_if_enabled_the_inbox_will_be_an_email_address_with_a_domain_randomly_chosen_from_a_list_of_the_mail_slurp_domains/_this_is_useful_when_the_default_&#x60;@mailslurp/com&#x60;_email_addresses_used_with_inboxes_are_blocked_or_considered_spam_by_a_provider_or_receiving_service/_when_domain_pool_is_enabled_an_email_address_will_be_generated_ending_in_&#x60;@mailslurp/{world,info,xyz,///}&#x60;_/_this_means_a_tld_is_randomly_selecting_from_a_list_of_&#x60;/biz&#x60;,_&#x60;/info&#x60;,_&#x60;/xyz&#x60;_etc_to_add_variance_to_the_generated_email_addresses/_when_null_or_false_mail_slurp_uses_the_default_behavior_of_&#x60;@mailslurp/com&#x60;_or_custom_email_address_provided_by_the_email_address_field/_note_this_feature_is_only_available_for_&#x60;http&#x60;_inbox_types/** | **boolean**|  | [optional] 
 **is_the_inbox_a_favorite/_marking_an_inbox_as_a_favorite_is_typically_done_in_the_dashboard_for_quick_access_or_filtering** | **boolean**|  | [optional] 
 **optional_inbox_expiration_date/_if_null_then_this_inbox_is_permanent_and_the_emails_in_it_won&#39;t_be_deleted/_if_an_expiration_date_is_provided_or_is_required_by_your_plan_the_inbox_will_be_closed_when_the_expiration_time_is_reached/_expired_inboxes_still_contain_their_emails_but_can_no_longer_send_or_receive_emails/_an_expired_inbox_record_is_created_when_an_inbox_and_the_email_address_and_inbox_id_are_recorded/_the_expires_at_property_is_a_timestamp_string_in_iso_date_time_format_yyyy_mm_dd&#39;t&#39;hh:mm:ss/sssxxx/** | **DateTime**|  | [optional] 
 **number_of_milliseconds_that_inbox_should_exist_for** | **int**|  | [optional] 
 **deprecated_(team_access_is_always_true)/_grant_team_access_to_this_inbox_and_the_emails_that_belong_to_it_for_team_members_of_your_organization/** | **boolean**|  | [optional] 
 **http_(default)_or_smtp_inbox_type/_http_inboxes_are_default_and_best_solution_for_most_cases/_smtp_inboxes_are_more_reliable_for_public_inbound_email_consumption_(but_do_not_support_sending_emails)/_when_using_custom_domains_the_domain_type_must_match_the_inbox_type/_http_inboxes_are_processed_by_aws_ses_while_smtp_inboxes_use_a_custom_mail_server_running_at_&#x60;mx/mailslurp/com&#x60;/** | **string**|  | [optional] 

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

my $inbox_id = null; # string | 
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
 **inbox_id** | [**string**]()|  | 
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
 - **Accept**: */*

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
> PageInboxProjection get_all_inboxes(page => $page, size => $size, sort => $sort, favourite => $favourite, search => $search, tag => $tag, deprecated/_optionally_filter_by_team_access/ => $deprecated/_optionally_filter_by_team_access/, since => $since, before => $before)

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
my $deprecated/_optionally_filter_by_team_access/ = null; # boolean | 
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time

eval { 
    my $result = $api_instance->get_all_inboxes(page => $page, size => $size, sort => $sort, favourite => $favourite, search => $search, tag => $tag, deprecated/_optionally_filter_by_team_access/ => $deprecated/_optionally_filter_by_team_access/, since => $since, before => $before);
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
 **deprecated/_optionally_filter_by_team_access/** | **boolean**|  | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_emails**
> ARRAY[EmailPreview] get_emails(id_of_inbox_that_emails_belongs_to => $id_of_inbox_that_emails_belongs_to, alias_for_limit/_assessed_first_before_assessing_any_passed_limit/ => $alias_for_limit/_assessed_first_before_assessing_any_passed_limit/, limit => $limit, sort_the_results_by_received_date_and_direction_asc_or_desc => $sort_the_results_by_received_date_and_direction_asc_or_desc, retry_timeout => $retry_timeout, delay_timeout => $delay_timeout, min_count => $min_count, unread_only => $unread_only, exclude_emails_received_after_this_iso_8601_date_time => $exclude_emails_received_after_this_iso_8601_date_time, exclude_emails_received_before_this_iso_8601_date_time => $exclude_emails_received_before_this_iso_8601_date_time)

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

my $id_of_inbox_that_emails_belongs_to = null; # string | 
my $alias_for_limit/_assessed_first_before_assessing_any_passed_limit/ = 56; # int | 
my $limit = 56; # int | Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller
my $sort_the_results_by_received_date_and_direction_asc_or_desc = "sort_the_results_by_received_date_and_direction_asc_or_desc_example"; # string | 
my $retry_timeout = 789; # int | Maximum milliseconds to spend retrying inbox database until minCount emails are returned
my $delay_timeout = 789; # int | 
my $min_count = 789; # int | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
my $unread_only = null; # boolean | 
my $exclude_emails_received_after_this_iso_8601_date_time = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 
my $exclude_emails_received_before_this_iso_8601_date_time = DateTime->from_epoch(epoch => str2time('null')); # DateTime | 

eval { 
    my $result = $api_instance->get_emails(id_of_inbox_that_emails_belongs_to => $id_of_inbox_that_emails_belongs_to, alias_for_limit/_assessed_first_before_assessing_any_passed_limit/ => $alias_for_limit/_assessed_first_before_assessing_any_passed_limit/, limit => $limit, sort_the_results_by_received_date_and_direction_asc_or_desc => $sort_the_results_by_received_date_and_direction_asc_or_desc, retry_timeout => $retry_timeout, delay_timeout => $delay_timeout, min_count => $min_count, unread_only => $unread_only, exclude_emails_received_after_this_iso_8601_date_time => $exclude_emails_received_after_this_iso_8601_date_time, exclude_emails_received_before_this_iso_8601_date_time => $exclude_emails_received_before_this_iso_8601_date_time);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_emails: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_of_inbox_that_emails_belongs_to** | [**string**]()|  | 
 **alias_for_limit/_assessed_first_before_assessing_any_passed_limit/** | **int**|  | [optional] 
 **limit** | **int**| Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller | [optional] 
 **sort_the_results_by_received_date_and_direction_asc_or_desc** | **string**|  | [optional] 
 **retry_timeout** | **int**| Maximum milliseconds to spend retrying inbox database until minCount emails are returned | [optional] 
 **delay_timeout** | **int**|  | [optional] 
 **min_count** | **int**| Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. | [optional] 
 **unread_only** | **boolean**|  | [optional] 
 **exclude_emails_received_after_this_iso_8601_date_time** | **DateTime**|  | [optional] 
 **exclude_emails_received_before_this_iso_8601_date_time** | **DateTime**|  | [optional] 

### Return type

[**ARRAY[EmailPreview]**](EmailPreview)

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
> CountDto get_inbox_email_count(id_of_inbox_that_emails_belongs_to => $id_of_inbox_that_emails_belongs_to)

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

my $id_of_inbox_that_emails_belongs_to = null; # string | 

eval { 
    my $result = $api_instance->get_inbox_email_count(id_of_inbox_that_emails_belongs_to => $id_of_inbox_that_emails_belongs_to);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_email_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_of_inbox_that_emails_belongs_to** | [**string**]()|  | 

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_emails_paginated**
> PageEmailPreview get_inbox_emails_paginated(id_of_inbox_that_emails_belongs_to => $id_of_inbox_that_emails_belongs_to, page => $page, size => $size, sort => $sort, since => $since, before => $before)

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

my $id_of_inbox_that_emails_belongs_to = null; # string | 
my $page = 0; # int | Optional page index in inbox emails list pagination
my $size = 20; # int | Optional page size in inbox emails list pagination
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by received after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by received before given date time

eval { 
    my $result = $api_instance->get_inbox_emails_paginated(id_of_inbox_that_emails_belongs_to => $id_of_inbox_that_emails_belongs_to, page => $page, size => $size, sort => $sort, since => $since, before => $before);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->get_inbox_emails_paginated: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_of_inbox_that_emails_belongs_to** | [**string**]()|  | 
 **page** | **int**| Optional page index in inbox emails list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox emails list pagination | [optional] [default to 20]
 **sort** | **string**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter by received after given date time | [optional] 
 **before** | **DateTime**| Optional filter by received before given date time | [optional] 

### Return type

[**PageEmailPreview**](PageEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inbox_sent_emails**
> PageSentEmailProjection get_inbox_sent_emails(inbox_id => $inbox_id, page => $page, optional_page_size_in_inbox_sent_email_list_pagination => $optional_page_size_in_inbox_sent_email_list_pagination, sort => $sort, search_filter => $search_filter, since => $since, before => $before)

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
my $optional_page_size_in_inbox_sent_email_list_pagination = 20; # int | 
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional sent email search
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by sent after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by sent before given date time

eval { 
    my $result = $api_instance->get_inbox_sent_emails(inbox_id => $inbox_id, page => $page, optional_page_size_in_inbox_sent_email_list_pagination => $optional_page_size_in_inbox_sent_email_list_pagination, sort => $sort, search_filter => $search_filter, since => $since, before => $before);
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
 **optional_page_size_in_inbox_sent_email_list_pagination** | **int**|  | [optional] [default to 20]
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **get_inboxes**
> ARRAY[InboxDto] get_inboxes(size => $size, sort => $sort, since => $since, before => $before)

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

my $size = 100; # int | Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries.
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time

eval { 
    my $result = $api_instance->get_inboxes(size => $size, sort => $sort, since => $since, before => $before);
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
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**ARRAY[InboxDto]**](InboxDto)

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
> PageTrackingPixelProjection list_inbox_tracking_pixels(inbox_id => $inbox_id, page => $page, optional_page_size_in_inbox_tracking_pixel_list_pagination => $optional_page_size_in_inbox_tracking_pixel_list_pagination, sort => $sort, search_filter => $search_filter, since => $since, before => $before)

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
my $optional_page_size_in_inbox_tracking_pixel_list_pagination = 20; # int | 
my $sort = 'ASC'; # string | Optional createdAt sort direction ASC or DESC
my $search_filter = "search_filter_example"; # string | Optional search filter
my $since = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created after given date time
my $before = DateTime->from_epoch(epoch => str2time('null')); # DateTime | Optional filter by created before given date time

eval { 
    my $result = $api_instance->list_inbox_tracking_pixels(inbox_id => $inbox_id, page => $page, optional_page_size_in_inbox_tracking_pixel_list_pagination => $optional_page_size_in_inbox_tracking_pixel_list_pagination, sort => $sort, search_filter => $search_filter, since => $since, before => $before);
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
 **optional_page_size_in_inbox_tracking_pixel_list_pagination** | **int**|  | [optional] [default to 20]
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

# **send_email**
> send_email(id_of_the_inbox_you_want_to_send_the_email_from => $id_of_the_inbox_you_want_to_send_the_email_from, send_email_options => $send_email_options)

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

my $id_of_the_inbox_you_want_to_send_the_email_from = null; # string | 
my $send_email_options = MailSlurp::Object::SendEmailOptions->new(); # SendEmailOptions | 

eval { 
    $api_instance->send_email(id_of_the_inbox_you_want_to_send_the_email_from => $id_of_the_inbox_you_want_to_send_the_email_from, send_email_options => $send_email_options);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->send_email: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_of_the_inbox_you_want_to_send_the_email_from** | [**string**]()|  | 
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
> SentEmailDto send_email_and_confirm(id_of_the_inbox_you_want_to_send_the_email_from => $id_of_the_inbox_you_want_to_send_the_email_from, send_email_options => $send_email_options)

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

my $id_of_the_inbox_you_want_to_send_the_email_from = null; # string | 
my $send_email_options = MailSlurp::Object::SendEmailOptions->new(); # SendEmailOptions | 

eval { 
    my $result = $api_instance->send_email_and_confirm(id_of_the_inbox_you_want_to_send_the_email_from => $id_of_the_inbox_you_want_to_send_the_email_from, send_email_options => $send_email_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InboxControllerApi->send_email_and_confirm: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_of_the_inbox_you_want_to_send_the_email_from** | [**string**]()|  | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 

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

# **set_inbox_favourited**
> InboxDto set_inbox_favourited(inbox_id => $inbox_id, set_inbox_favourited_options => $set_inbox_favourited_options)

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

my $inbox_id = null; # string | 
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
 **inbox_id** | [**string**]()|  | 
 **set_inbox_favourited_options** | [**SetInboxFavouritedOptions**](SetInboxFavouritedOptions)|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

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

