# MailSlurp::Object::StructuredOutputSchema

## Load the model package
```perl
use MailSlurp::Object::StructuredOutputSchema;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**any_of** | [**ARRAY[StructuredOutputSchema]**](StructuredOutputSchema) |  | [optional] 
**default** | [**object**]() |  | [optional] 
**description** | **string** | Provide a description of the schema to help the AI understand the schema. | [optional] 
**enum** | **ARRAY[string]** | When using type string and format enum pass a collection of enum values here. | [optional] 
**example** | [**object**]() |  | [optional] 
**format** | **string** | Format for string types. Can be null, date-time or enum. | [optional] 
**items** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**max_items** | **int** |  | [optional] 
**min_items** | **int** |  | [optional] 
**max_length** | **int** |  | [optional] 
**min_length** | **int** |  | [optional] 
**pattern** | **string** |  | [optional] 
**properties** | [**HASH[string,StructuredOutputSchema]**](StructuredOutputSchema) | Properties of an OBJECT schema. These are key value pairs where the key is the property name and the value is the schema for that property. | [optional] 
**property_ordering** | **ARRAY[string]** | Pass an array of property names to specify the order of properties in the generated JSON object if required. | [optional] 
**required** | **ARRAY[string]** |  | [optional] 
**max_properties** | **int** |  | [optional] 
**min_properties** | **int** |  | [optional] 
**maximum** | **double** |  | [optional] 
**minimum** | **double** |  | [optional] 
**nullable** | **boolean** |  | [optional] 
**title** | **string** |  | [optional] 
**type** | **string** | Primitive JSON schema types with a fallback CUSTOM for unknown values. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


