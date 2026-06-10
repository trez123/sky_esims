# openapi.model.DtoESimRefundStatus

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **num** | Transaction amount to refund to wallet | 
**createdAt** | **String** | Datetime that the refund request was created | 
**currency** | **String** | 3 letter ISO code for currency of transaction | 
**error** | [**DtoError**](DtoError.md) |  | 
**log** | [**List<DtoTransactionLogItem>**](DtoTransactionLogItem.md) | Log of actions during refund process | [default to const []]
**productType** | **String** |  | 
**refundedTransactionId** | **String** | Reference ID for transaction for refund | 
**status** | **String** |  | 
**type** | **String** |  | 
**updatedAt** | **String** | Date transaction was last updated | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


