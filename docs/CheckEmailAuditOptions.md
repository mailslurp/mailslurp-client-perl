# MailSlurp::Object::CheckEmailAuditOptions

## Load the model package
```perl
use MailSlurp::Object::CheckEmailAuditOptions;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_address** | **string** | Optional sender address context | [optional] 
**recipient** | **string** | Optional recipient context | [optional] 
**subject** | **string** | Optional subject line context | [optional] 
**html_body** | **string** | Optional HTML email body | [optional] 
**text_body** | **string** | Optional text email body | [optional] 
**email_analysis** | [**EmailAnalysis**](EmailAnalysis) |  | [optional] 
**has_attachments** | **boolean** | Whether the source email included attachments | [optional] 
**captcha_token** | **string** | Optional captcha token for abuse protection | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


