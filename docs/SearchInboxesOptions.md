# MailSlurp::Object::SearchInboxesOptions

## Load the model package
```perl
use MailSlurp::Object::SearchInboxesOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page_index** | **int** | Optional page index in list pagination | [optional] 
**page_size** | **int** | Optional page size in list pagination | [optional] 
**sort_direction** | **string** | Optional createdAt sort direction ASC or DESC | [optional] 
**favourite** | **boolean** | Optionally filter results for favourites only | [optional] 
**search** | **string** | Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
**tag** | **string** | Optionally filter by tags. Will return inboxes that include given tags | [optional] 
**since** | **DateTime** | Optional filter by created after given date time | [optional] 
**before** | **DateTime** | Optional filter by created before given date time | [optional] 
**inbox_type** | **string** | Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send). | [optional] 
**inbox_function** | **string** | Optional filter by inbox function | [optional] 
**domain_id** | **string** | Optional domain ID filter | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


