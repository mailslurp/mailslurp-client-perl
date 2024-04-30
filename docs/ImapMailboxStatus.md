# MailSlurp::Object::ImapMailboxStatus

## Load the model package
```perl
use MailSlurp::Object::ImapMailboxStatus;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | The mailbox name. | 
**read_only** | **boolean** | True if the mailbox is open in read-only mode. | 
**items** | **HASH[string,object]** | Results map | 
**flags** | **ARRAY[string]** | The mailbox flags. | 
**permanent_flags** | **ARRAY[string]** | The mailbox permanent flags. | 
**unseen_seq_num** | **int** | The sequence number of the first unseen message in the mailbox. | 
**messages** | **int** | The number of messages in this mailbox. | 
**recent** | **int** | The number of messages not seen since the last time the mailbox was opened. | 
**unseen** | **int** | The number of unread messages. | 
**uid_next** | **int** | The next UID. | 
**uid_validity** | **int** | Together with a UID, it is a unique identifier for a message. Must be greater than or equal to 1. | 
**append_limit** | **int** | Per-mailbox limit of message size. Set only if server supports the APPENDLIMIT extension | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


