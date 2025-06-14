# MailSlurp::Object::WebhookDto

## Load the model package
```perl
use MailSlurp::Object::WebhookDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | ID of the Webhook | 
**user_id** | **string** | User ID of the Webhook | 
**basic_auth** | **boolean** | Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. | 
**name** | **string** | Name of the webhook | [optional] 
**phone_id** | **string** | The phoneNumberId that the Webhook will be triggered by. If null then webhook triggered at account level or inbox level if inboxId set | [optional] 
**inbox_id** | **string** | The inbox that the Webhook will be triggered by. If null then webhook triggered at account level or phone level if phoneId set | [optional] 
**request_body_template** | **string** | Request body template for HTTP request that will be sent for the webhook. Use Moustache style template variables to insert values from the original event payload. | [optional] 
**url** | **string** | URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. | 
**method** | **string** | HTTP method that your server endpoint must listen for | 
**payload_json_schema** | **string** | Deprecated. Fetch JSON Schema for webhook using the getJsonSchemaForWebhookPayload method | 
**created_at** | **DateTime** | When the webhook was created | 
**updated_at** | **DateTime** |  | 
**event_name** | **string** | Webhook trigger event name | [optional] 
**request_headers** | [**WebhookHeaders**](WebhookHeaders) |  | [optional] 
**ai_transform_id** | **string** | ID of AI transformer for payload | [optional] 
**ignore_insecure_ssl_certificates** | **boolean** | Should notifier ignore insecure SSL certificates | [optional] 
**use_static_ip_range** | **boolean** | Should notifier use static IP range when sending webhook payload | [optional] 
**health_status** | **string** | Webhook health | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


