# MailSlurp::Object::WebhookNewAITransformResultPayload

## Load the model package
```perl
use MailSlurp::Object::WebhookNewAITransformResultPayload;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | **string** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhook_id** | **string** | ID of webhook entity being triggered | 
**event_name** | **string** | Name of the event type webhook is being triggered for. | 
**webhook_name** | **string** | Name of the webhook being triggered | [optional] 
**ai_transform_result_id** | **string** | AI Transform ID of event | 
**user_id** | **string** | User ID of event | 
**ai_transform_id** | **string** | ID of AI Transform | 
**ai_transform_mapping_id** | **string** | ID of AI Transform mapping | [optional] 
**entity_id** | **string** | ID of entity that triggered the transformation | [optional] 
**entity_type** | **string** | Entity type that triggered the transformation | [optional] 
**result** | **string** | JSON string result of the AI transformation | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


