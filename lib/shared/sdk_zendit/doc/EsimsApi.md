# openapi.api.EsimsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEsimPlans**](EsimsApi.md#getesimplans) | **GET** /esims/esim_plans/{iccid} | Get eSIM plans by ICCID
[**getEsimPurchaseById**](EsimsApi.md#getesimpurchasebyid) | **GET** /esims/details/{id} | Get eSIM purchase details by ID
[**getEsimPurchases**](EsimsApi.md#getesimpurchases) | **GET** /esims | Get a list of eSIM purchases
[**getEsimQrCode**](EsimsApi.md#getesimqrcode) | **GET** /esims/esim_qr_code/{id} | Get eSIM QR code by ID
[**getRefundStatus**](EsimsApi.md#getrefundstatus) | **GET** /esims/refund_status/{id} | Get eSIM refund status by ID
[**purchaseEsim**](EsimsApi.md#purchaseesim) | **POST** /esims/purchase_esim | Purchase an eSIM
[**refundEsim**](EsimsApi.md#refundesim) | **GET** /esims/refund_esim/{id} | Refund an eSIM by ID


# **getEsimPlans**
> DtoESIMPlansResponse getEsimPlans(iccid)

Get eSIM plans by ICCID

This request retrieves the available plans for a specific eSIM by its unique ICCID, which can be used to top up the eSIM with additional data.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EsimsApi();
final iccid = iccid_example; // String | 

try {
    final result = api_instance.getEsimPlans(iccid);
    print(result);
} catch (e) {
    print('Exception when calling EsimsApi->getEsimPlans: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iccid** | **String**|  | 

### Return type

[**DtoESIMPlansResponse**](DtoESIMPlansResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEsimPurchaseById**
> DtoESimPurchase getEsimPurchaseById(id)

Get eSIM purchase details by ID

This request retrieves the details of a specific eSIM purchase by its unique ID, including the associated offer, its current status, and other relevant information.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EsimsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getEsimPurchaseById(id);
    print(result);
} catch (e) {
    print('Exception when calling EsimsApi->getEsimPurchaseById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DtoESimPurchase**](DtoESimPurchase.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEsimPurchases**
> DtoESimPurchasesResponse getEsimPurchases(page, limit)

Get a list of eSIM purchases

This request retrieves a list of all eSIMs purchased through your account. It provides details such as the purchase ID, the associated offer, and the current status of each eSIM.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EsimsApi();
final page = 8.14; // num | 
final limit = 8.14; // num | 

try {
    final result = api_instance.getEsimPurchases(page, limit);
    print(result);
} catch (e) {
    print('Exception when calling EsimsApi->getEsimPurchases: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **num**|  | 
 **limit** | **num**|  | 

### Return type

[**DtoESimPurchasesResponse**](DtoESimPurchasesResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEsimQrCode**
> MultipartFile getEsimQrCode(id)

Get eSIM QR code by ID

This request retrieves the QR code for a specific eSIM by its unique ID, which can be used to install the eSIM on a compatible device.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EsimsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getEsimQrCode(id);
    print(result);
} catch (e) {
    print('Exception when calling EsimsApi->getEsimQrCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRefundStatus**
> DtoESimRefundStatus getRefundStatus(id)

Get eSIM refund status by ID

This request retrieves the refund status of a specific eSIM purchase by its unique ID.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EsimsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getRefundStatus(id);
    print(result);
} catch (e) {
    print('Exception when calling EsimsApi->getRefundStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DtoESimRefundStatus**](DtoESimRefundStatus.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purchaseEsim**
> DtoESimPurchaseResponse purchaseEsim(esimPurchaseBody)

Purchase an eSIM

This request allows you to purchase an eSIM. The request body must contain the necessary information, such as the offer ID and other relevant details.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EsimsApi();
final esimPurchaseBody = EsimPurchaseBody(); // EsimPurchaseBody | 

try {
    final result = api_instance.purchaseEsim(esimPurchaseBody);
    print(result);
} catch (e) {
    print('Exception when calling EsimsApi->purchaseEsim: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **esimPurchaseBody** | [**EsimPurchaseBody**](EsimPurchaseBody.md)|  | 

### Return type

[**DtoESimPurchaseResponse**](DtoESimPurchaseResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refundEsim**
> DtoESimRefund refundEsim(id)

Refund an eSIM by ID

This request allows you to refund an eSIM purchase by its unique ID. The request body must contain the necessary information to process the refund.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = EsimsApi();
final id = id_example; // String | 

try {
    final result = api_instance.refundEsim(id);
    print(result);
} catch (e) {
    print('Exception when calling EsimsApi->refundEsim: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DtoESimRefund**](DtoESimRefund.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

