# openapi.model.DtoESimPurchase

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**brand** | **String** | Brand of eSIM | [optional] 
**confirmation** | [**DtoESimConfirmation**](DtoESimConfirmation.md) |  | [optional] 
**cost** | **num** | Cost of the eSIM to Partner | [optional] 
**costCurrency** | **String** | Currency of cost to eSIM Partner | [optional] 
**costCurrencyDivisor** | **num** | Divisor for display of cost | [optional] 
**country** | **String** | Destination country for eSIM offer (blank when eSIM offer is regional) | [optional] 
**createdAt** | **String** | Date/time transaction was created | [optional] 
**dataGB** | **num** | GB of data included in eSIM (0 when data is unlimited) | [optional] 
**dataSpeeds** | [**List<DataSpeed>**](DataSpeed.md) |  | [optional] [default to const []]
**dataUnlimited** | **bool** | Flag indicating whether data is unlimited on the eSIM | [optional] 
**durationDays** | **num** | Duration of the eSIM offer in days | [optional] 
**error** | [**DtoError**](DtoError.md) |  | [optional] 
**log** | [**List<DtoTransactionLogItem>**](DtoTransactionLogItem.md) | Trace log for fulfillment of transaction | [optional] [default to const []]
**notes** | **String** | Notes included about the eSIM offer | [optional] 
**offerId** | **String** | Catalog ID of the offer (used for purchases) | [optional] 
**price** | **num** | Price to customer for eSIM (when using the zendit pricing module) | [optional] 
**priceCurrency** | **String** | Currency of price charged to customer for eSIM (when using the zendit pricing module) | [optional] 
**priceCurrencyDivisor** | **num** | Divisor for display of price | [optional] 
**priceType** | **String** |  | [optional] 
**productType** | **String** |  | [optional] 
**regions** | [**List<Regions>**](Regions.md) |  | [optional] [default to const []]
**roaming** | [**List<DtoESimRoaming>**](DtoESimRoaming.md) | Roaming information for regional eSIM products (empty array for NO ROAM eSIM offers) | [optional] [default to const []]
**shortNotes** | **String** | Short notes for eSIM offer | [optional] 
**smsNumber** | **num** | Included SMS messages with eSIM (0 when unlimited or not included, check smsUnlimited flag) | [optional] 
**smsUnlimited** | **bool** | Flag whether SMS messaging is unlimited for offer | [optional] 
**status** | **String** |  | [optional] 
**subTypes** | **List<String>** | Subtypes for the eSIM offer | [optional] [default to const []]
**transactionId** | **String** | Transaction Id provided by partner | [optional] 
**updatedAt** | **String** | Date/Time of last update to transaction | [optional] 
**value** | [**DtoPurchaseValues**](DtoPurchaseValues.md) |  | [optional] 
**voiceMinutes** | **num** | Voice minutes included in eSIM offer (0 when unlimited or not included, check voiceUnlimited Flag) | [optional] 
**voiceUnlimited** | **bool** | Flag whether voice minutes are unlimited for the offer | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


