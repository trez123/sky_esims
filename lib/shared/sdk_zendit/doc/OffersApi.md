# openapi.api.OffersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountBalance**](OffersApi.md#getaccountbalance) | **GET** /offers/get_balance | Get account balance
[**getOfferById**](OffersApi.md#getofferbyid) | **GET** /offers/get_details/{id} | Get offer
[**getOffers**](OffersApi.md#getoffers) | **GET** /offers | Get a list of offers


# **getAccountBalance**
> DtoBalanceResponse getAccountBalance()

Get account balance

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OffersApi();

try {
    final result = api_instance.getAccountBalance();
    print(result);
} catch (e) {
    print('Exception when calling OffersApi->getAccountBalance: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DtoBalanceResponse**](DtoBalanceResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOfferById**
> DtoESimOffer getOfferById(id)

Get offer

This request reveals a specific offer from Zendit Console that you can use in your Partner Account. It reveals the offer’s name, description, coverage, and available refills.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OffersApi();
final id = id_example; // String | 

try {
    final result = api_instance.getOfferById(id);
    print(result);
} catch (e) {
    print('Exception when calling OffersApi->getOfferById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DtoESimOffer**](DtoESimOffer.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOffers**
> DtoESimOffersResponse getOffers(page, limit, brand, country, regions, subType)

Get a list of offers

This request reveals a list of data offers from the Zendit Console that you can use in your account. It reveals the offer’s names, descriptions, coverage, and available refills.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OffersApi();
final page = 8.14; // num | 
final limit = 8.14; // num | 
final brand = brand_example; // String | 
final country = country_example; // String | 
final regions = regions_example; // String | Select a region
final subType = subType_example; // String | 

try {
    final result = api_instance.getOffers(page, limit, brand, country, regions, subType);
    print(result);
} catch (e) {
    print('Exception when calling OffersApi->getOffers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **num**|  | 
 **limit** | **num**|  | 
 **brand** | **String**|  | [optional] 
 **country** | **String**|  | [optional] 
 **regions** | **String**| Select a region | [optional] 
 **subType** | **String**|  | [optional] 

### Return type

[**DtoESimOffersResponse**](DtoESimOffersResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

