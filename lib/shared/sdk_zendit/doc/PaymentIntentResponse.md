# openapi.model.PaymentIntentResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**object** | **String** |  | 
**amount** | **num** | Amount in smallest currency unit (e.g., cents) | 
**currency** | **String** | Three-letter ISO currency code | 
**clientSecret** | **String** | Client secret used for client-side payment completion | 
**status** | **String** | Current status of the payment intent | 
**created** | **num** | Unix timestamp of creation | 
**customer** | **String** | Customer ID if associated with a customer | [optional] 
**description** | **String** | Description of the payment | [optional] 
**paymentMethodTypes** | **List<String>** | List of payment method types allowed | [default to const []]
**livemode** | **bool** | Whether this is a live mode payment | 
**metadata** | [**Object**](.md) | Additional metadata about the payment | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


