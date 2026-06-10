# openapi.api.PaddleApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCheckout**](PaddleApi.md#createcheckout) | **POST** /paddle/create-checkout | Create Paddle checkout URL
[**getTransactionStatus**](PaddleApi.md#gettransactionstatus) | **GET** /paddle/get-transaction-status | Get transaction status
[**getUserTransactions**](PaddleApi.md#getusertransactions) | **GET** /paddle/transactions | Get user transactions
[**handleWebhook**](PaddleApi.md#handlewebhook) | **POST** /paddle/webhook | Paddle webhook handler
[**sendTestEmail**](PaddleApi.md#sendtestemail) | **POST** /paddle/test-email | Send test email


# **createCheckout**
> CheckoutResponse createCheckout(createCheckoutDto)

Create Paddle checkout URL

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

final api_instance = PaddleApi();
final createCheckoutDto = CreateCheckoutDto(); // CreateCheckoutDto | 

try {
    final result = api_instance.createCheckout(createCheckoutDto);
    print(result);
} catch (e) {
    print('Exception when calling PaddleApi->createCheckout: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCheckoutDto** | [**CreateCheckoutDto**](CreateCheckoutDto.md)|  | 

### Return type

[**CheckoutResponse**](CheckoutResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionStatus**
> CheckoutResponse getTransactionStatus(transactionId)

Get transaction status

Check completion status of a transaction

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PaddleApi();
final transactionId = transactionId_example; // String | 

try {
    final result = api_instance.getTransactionStatus(transactionId);
    print(result);
} catch (e) {
    print('Exception when calling PaddleApi->getTransactionStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionId** | **String**|  | 

### Return type

[**CheckoutResponse**](CheckoutResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTransactions**
> List<TransactionDto> getUserTransactions()

Get user transactions

Get all transactions for the authenticated user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PaddleApi();

try {
    final result = api_instance.getUserTransactions();
    print(result);
} catch (e) {
    print('Exception when calling PaddleApi->getUserTransactions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<TransactionDto>**](TransactionDto.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **handleWebhook**
> handleWebhook(paddleSignature)

Paddle webhook handler

Receives and processes Paddle webhook events

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = PaddleApi();
final paddleSignature = paddleSignature_example; // String | 

try {
    api_instance.handleWebhook(paddleSignature);
} catch (e) {
    print('Exception when calling PaddleApi->handleWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paddleSignature** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTestEmail**
> sendTestEmail(sendTestEmailRequest)

Send test email

Send a test eSIM delivery email

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PaddleApi();
final sendTestEmailRequest = SendTestEmailRequest(); // SendTestEmailRequest | 

try {
    api_instance.sendTestEmail(sendTestEmailRequest);
} catch (e) {
    print('Exception when calling PaddleApi->sendTestEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendTestEmailRequest** | [**SendTestEmailRequest**](SendTestEmailRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

