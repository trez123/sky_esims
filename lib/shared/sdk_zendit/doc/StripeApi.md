# openapi.api.StripeApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPaymentIntent**](StripeApi.md#createpaymentintent) | **POST** /stripe/create-payment-intent | Create a payment intent
[**getPaymentIntent**](StripeApi.md#getpaymentintent) | **GET** /stripe/get-payment-intent | Get a payment intent
[**getPaymentIntents**](StripeApi.md#getpaymentintents) | **GET** /stripe/get-payment-intents | Get all payment intents


# **createPaymentIntent**
> PaymentIntentResponse createPaymentIntent(createPaymentIntentDto)

Create a payment intent

Create a payment intent for a given amount and currency

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StripeApi();
final createPaymentIntentDto = CreatePaymentIntentDto(); // CreatePaymentIntentDto | 

try {
    final result = api_instance.createPaymentIntent(createPaymentIntentDto);
    print(result);
} catch (e) {
    print('Exception when calling StripeApi->createPaymentIntent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPaymentIntentDto** | [**CreatePaymentIntentDto**](CreatePaymentIntentDto.md)|  | 

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentIntent**
> PaymentIntentResponse getPaymentIntent(paymentIntentId)

Get a payment intent

Get a payment intent for a given payment intent ID

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StripeApi();
final paymentIntentId = paymentIntentId_example; // String | 

try {
    final result = api_instance.getPaymentIntent(paymentIntentId);
    print(result);
} catch (e) {
    print('Exception when calling StripeApi->getPaymentIntent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentIntentId** | **String**|  | 

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentIntents**
> List<PaymentIntentResponse> getPaymentIntents()

Get all payment intents

Get all payment intents

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = StripeApi();

try {
    final result = api_instance.getPaymentIntents();
    print(result);
} catch (e) {
    print('Exception when calling StripeApi->getPaymentIntents: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PaymentIntentResponse>**](PaymentIntentResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

