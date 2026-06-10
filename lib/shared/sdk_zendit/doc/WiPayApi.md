# openapi.api.WiPayApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWiPayCheckout**](WiPayApi.md#createwipaycheckout) | **POST** /wipay/create-checkout | Create WiPay checkout URL
[**getExchangeRate**](WiPayApi.md#getexchangerate) | **GET** /wipay/exchange-rate | Get current exchange rate
[**getPaymentSuccessDetails**](WiPayApi.md#getpaymentsuccessdetails) | **GET** /wipay/payment-success | Get payment success details
[**getWiPayUserTransactions**](WiPayApi.md#getwipayusertransactions) | **GET** /wipay/transactions | Get user transactions
[**handlePaymentRedirect**](WiPayApi.md#handlepaymentredirect) | **GET** /wipay/payment-redirect | Handle WiPay payment redirect


# **createWiPayCheckout**
> WiPayCheckoutResponse createWiPayCheckout(createWiPayCheckoutDto)

Create WiPay checkout URL

Create transaction and return checkout URL for redirect

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WiPayApi();
final createWiPayCheckoutDto = CreateWiPayCheckoutDto(); // CreateWiPayCheckoutDto | 

try {
    final result = api_instance.createWiPayCheckout(createWiPayCheckoutDto);
    print(result);
} catch (e) {
    print('Exception when calling WiPayApi->createWiPayCheckout: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWiPayCheckoutDto** | [**CreateWiPayCheckoutDto**](CreateWiPayCheckoutDto.md)|  | 

### Return type

[**WiPayCheckoutResponse**](WiPayCheckoutResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExchangeRate**
> ExchangeRateResponseDto getExchangeRate()

Get current exchange rate

Get the current USD to JMD exchange rate for display

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = WiPayApi();

try {
    final result = api_instance.getExchangeRate();
    print(result);
} catch (e) {
    print('Exception when calling WiPayApi->getExchangeRate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ExchangeRateResponseDto**](ExchangeRateResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentSuccessDetails**
> WiPayPaymentSuccessDetailsDto getPaymentSuccessDetails(transactionId)

Get payment success details

Get transaction details after successful payment

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = WiPayApi();
final transactionId = transactionId_example; // String | 

try {
    final result = api_instance.getPaymentSuccessDetails(transactionId);
    print(result);
} catch (e) {
    print('Exception when calling WiPayApi->getPaymentSuccessDetails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionId** | **String**|  | 

### Return type

[**WiPayPaymentSuccessDetailsDto**](WiPayPaymentSuccessDetailsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWiPayUserTransactions**
> List<WiPayTransactionDto> getWiPayUserTransactions()

Get user transactions

Get all WiPay transactions for the authenticated user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WiPayApi();

try {
    final result = api_instance.getWiPayUserTransactions();
    print(result);
} catch (e) {
    print('Exception when calling WiPayApi->getWiPayUserTransactions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<WiPayTransactionDto>**](WiPayTransactionDto.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **handlePaymentRedirect**
> handlePaymentRedirect(errorMessage, errorCode, status, transactionId, orderId)

Handle WiPay payment redirect

Processes the payment redirect from WiPay and redirects to frontend

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = WiPayApi();
final errorMessage = ; // Object | 
final errorCode = ; // Object | 
final status = ; // Object | 
final transactionId = ; // Object | 
final orderId = ; // Object | 

try {
    api_instance.handlePaymentRedirect(errorMessage, errorCode, status, transactionId, orderId);
} catch (e) {
    print('Exception when calling WiPayApi->handlePaymentRedirect: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **errorMessage** | [**Object**](.md)|  | [optional] 
 **errorCode** | [**Object**](.md)|  | [optional] 
 **status** | [**Object**](.md)|  | [optional] 
 **transactionId** | [**Object**](.md)|  | [optional] 
 **orderId** | [**Object**](.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

