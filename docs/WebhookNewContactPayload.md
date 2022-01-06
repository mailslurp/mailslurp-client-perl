# MailSlurp::Object::WebhookNewContactPayload

## Load the model package
```perl
use MailSlurp::Object::WebhookNewContactPayload;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | **string** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**webhook_id** | **string** | ID of webhook entity being triggered | [optional] 
**webhook_name** | **string** | Name of the webhook being triggered | [optional] 
**event_name** | **string** | Name of the event type webhook is being triggered for. | [optional] 
**contact_id** | **string** |  | [optional] 
**group_id** | **string** |  | [optional] 
**first_name** | **string** |  | [optional] 
**last_name** | **string** |  | [optional] 
**company** | **string** |  | [optional] 
**primary_email_address** | **string** |  | [optional] 
**email_addresses** | **ARRAY[string]** |  | [optional] 
**tags** | **ARRAY[string]** |  | [optional] 
**meta_data** | [**object**]() |  | [optional] 
**opt_out** | **boolean** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


