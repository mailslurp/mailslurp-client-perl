# MailSlurp::Object::CreateWebhookOptions

## Load the model package
```perl
use MailSlurp::Object::CreateWebhookOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**basic_auth** | [**BasicAuthOptions**](BasicAuthOptions.md) |  | [optional] 
**name** | **string** | Optional name for the webhook | [optional] 
**url** | **string** | Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received. The payload of the submitted JSON is described by https://api.mailslurp.com/schemas/webhook-payload | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


