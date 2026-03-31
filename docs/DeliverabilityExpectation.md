# MailSlurp::Object::DeliverabilityExpectation

## Load the model package
```perl
use MailSlurp::Object::DeliverabilityExpectation;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Optional label for this expectation | [optional] 
**min_count** | **int** | Minimum number of matching messages required for this expectation to pass | 
**from** | **string** | Optional sender filter. Matching is case-insensitive contains against inbound sender/from values. | [optional] 
**to** | **string** | Optional recipient filter. Matching is case-insensitive contains against recipient/to values. | [optional] 
**subject** | **string** | Optional subject filter for INBOX scope tests. Ignored for PHONE scope tests. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


