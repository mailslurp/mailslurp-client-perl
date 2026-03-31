# MailSlurp::Object::TestSmtpServerResults

## Load the model package
```perl
use MailSlurp::Object::TestSmtpServerResults;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connected** | **boolean** |  | 
**banner** | **string** |  | [optional] 
**tls** | [**SmtpTlsDiagnosticResult**](SmtpTlsDiagnosticResult) |  | 
**auth** | [**SmtpAuthDiagnosticResult**](SmtpAuthDiagnosticResult) |  | 
**transcript** | [**ARRAY[SmtpDiagnosticStep]**](SmtpDiagnosticStep) |  | 
**warnings** | **ARRAY[string]** |  | 
**errors** | **ARRAY[string]** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


