# MailSlurp::Object::WebhookNewContactPayload

## Load the model package
```perl
use MailSlurp::Object::WebhookNewContactPayload;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | **string** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhook_id** | **string** | ID of webhook entity being triggered | 
**webhook_name** | **string** | Name of the webhook being triggered | [optional] 
**event_name** | **string** | Name of the event type webhook is being triggered for. | 
**contact_id** | **string** | Contact ID | 
**group_id** | **string** | Contact group ID | [optional] 
**first_name** | **string** | Contact first name | [optional] 
**last_name** | **string** | Contact last name | [optional] 
**company** | **string** | Contact company name | [optional] 
**primary_email_address** | **string** | Primary email address for contact | [optional] 
**email_addresses** | **ARRAY[string]** | Email addresses for contact | 
**tags** | **ARRAY[string]** | Tags for contact | 
**meta_data** | [**object**]() |  | [optional] 
**opt_out** | **boolean** | Has contact opted out of emails | 
**created_at** | **DateTime** | Date time of event creation | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


