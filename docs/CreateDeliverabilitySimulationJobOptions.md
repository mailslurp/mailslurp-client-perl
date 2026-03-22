# MailSlurp::Object::CreateDeliverabilitySimulationJobOptions

## Load the model package
```perl
use MailSlurp::Object::CreateDeliverabilitySimulationJobOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_inbox_id** | **string** | Sender inbox ID for INBOX scope tests | [optional] 
**sender_phone_id** | **string** | Sender phone ID for PHONE scope tests | [optional] 
**email** | [**DeliverabilitySimulationEmailOptions**](DeliverabilitySimulationEmailOptions) |  | [optional] 
**sms** | [**DeliverabilitySimulationSmsOptions**](DeliverabilitySimulationSmsOptions) |  | [optional] 
**delay_ms** | **int** | Delay between individual sends in milliseconds | [optional] 
**batch_size** | **int** | Maximum sends processed per scheduler batch | [optional] 
**sends_per_target** | **int** | Optional fixed sends per target. If omitted this is derived from test expectations. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


