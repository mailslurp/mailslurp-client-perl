# MailSlurp::Object::InlineObject

## Load the model package
```perl
use MailSlurp::Object::InlineObject;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_to** | **string** | The email address that submitted form should be sent to. | [optional] 
**_subject** | **string** | Optional subject of the email that will be sent. | [optional] 
**_email_address** | **string** | Email address of the submitting user. Include this if you wish to record the submitters email address and reply to it later. | [optional] 
**_success_message** | **string** | Optional success message to display if no _redirectTo present. | [optional] 
**_spam_check** | **string** | Optional but recommended field that catches spammers out. Include as a hidden form field but LEAVE EMPTY. Spam-bots will usually fill every field. If the _spamCheck field is filled the form submission will be ignored. | [optional] 
**other_parameters** | **string** | All other parameters or fields will be accepted and attached to the sent email. This includes files and any HTML form field with a name. These fields will become the body of the email that is sent. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


