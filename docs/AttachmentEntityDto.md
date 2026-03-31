# MailSlurp::Object::AttachmentEntityDto

## Load the model package
```perl
use MailSlurp::Object::AttachmentEntityDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The unique identifier for this attachment. | 
**attachment_id** | **string** | The identifier of the attachment file | 
**user_id** | **string** | The user identifier associated with this attachment. | 
**content_type** | **string** | The content type of the attachment. | [optional] 
**content_length** | **int** | The content length of the attachment in bytes. | [optional] 
**content_id** | **string** | The content identifier, which is a unique ID for the content part of the email. | [optional] 
**name** | **string** | The name of the attachment file. | [optional] 
**inbox_id** | **string** | The inbox identifier associated with this attachment. | [optional] 
**created_at** | **DateTime** | The timestamp when this attachment was created. | 
**updated_at** | **DateTime** | The timestamp when this attachment was last updated. | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


