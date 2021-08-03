# MailSlurp::Object::WebhookDto

## Load the model package
```perl
use MailSlurp::Object::WebhookDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**basic_auth** | **boolean** | Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. | [optional] 
**created_at** | **DateTime** | When the webhook was created | [optional] 
**event_name** | **string** |  | [optional] 
**id** | **string** | ID of the Webhook | [optional] 
**inbox_id** | **string** | The inbox that the Webhook will be triggered by | [optional] 
**method** | **string** | HTTP method that your server endpoint must listen for | [optional] 
**name** | **string** | Name of the webhook | [optional] 
**payload_json_schema** | **string** | JSON Schema for the payload that will be sent to your URL via the HTTP method described. | [optional] 
**updated_at** | **DateTime** |  | 
**url** | **string** | URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. | [optional] 
**user_id** | **string** | User ID of the Webhook | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


