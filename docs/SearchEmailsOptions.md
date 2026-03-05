# MailSlurp::Object::SearchEmailsOptions

## Load the model package
```perl
use MailSlurp::Object::SearchEmailsOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inbox_ids** | **ARRAY[string]** | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
**page_index** | **int** | Optional page index in email list pagination | [optional] 
**page_size** | **int** | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] 
**sort_direction** | **string** | Optional createdAt sort direction ASC or DESC | [optional] 
**unread_only** | **boolean** | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] 
**search_filter** | **string** | Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body | [optional] 
**since** | **DateTime** | Optional filter emails received after given date time | [optional] 
**before** | **DateTime** | Optional filter emails received before given date time | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


