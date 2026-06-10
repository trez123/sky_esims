# openapi.model.DtoESimOffer

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**brand** | **String** | Brand of eSIM | [optional] 
**cost** | [**DtoCost**](DtoCost.md) |  | 
**country** | **String** | Destination country for eSIM (blank for regional eSIM products) | [optional] 
**createdAt** | **String** | Date/time offer was added to the catalog | [optional] 
**dataGB** | **num** | Amount of data included in eSIM offer (0 when data is unlimited) | [optional] 
**dataSpeeds** | [**List<DataSpeed>**](DataSpeed.md) |  | [optional] [default to const []]
**dataUnlimited** | **bool** | Flag for eSIMs with unlimited data | [optional] 
**durationDays** | **num** | Duration of the eSIM offer in days | [optional] 
**enabled** | **bool** | Flag for whether the offer is enabled | [optional] 
**notes** | **String** | Notes included about the eSIM offer | 
**offerId** | **String** | Catalog ID of the offer (used for purchases) | [optional] 
**price** | [**DtoPrice**](DtoPrice.md) |  | 
**priceType** | **String** |  | [optional] 
**productType** | **String** |  | 
**regions** | **List<String>** | Regions for the eSIM | [optional] [default to const []]
**roaming** | [**List<DtoESimRoaming>**](DtoESimRoaming.md) | Roaming information for regional eSIM products (empty array for NO ROAM eSIM offers) | [optional] [default to const []]
**shortNotes** | **String** | Short notes for eSIM offer | 
**smsNumber** | **num** | Included SMS messages with eSIM (0 when unlimited or not included, check smsUnlimited flag) | [optional] 
**smsUnlimited** | **bool** | Flag whether SMS messaging is unlimited for offer | [optional] 
**subTypes** | **List<String>** | Subtypes for the eSIM offer | [default to const []]
**updatedAt** | **String** | Last date/time the offer was updated | [optional] 
**voiceMinutes** | **num** | Voice minutes included in eSIM offer (0 when unlimited or not included, check voiceUnlimited Flag) | [optional] 
**voiceUnlimited** | **bool** | Flag whether voice minutes are unlimited for the offer | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


