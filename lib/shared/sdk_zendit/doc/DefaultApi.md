# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**paddleCheckoutControllerGetPricing**](DefaultApi.md#paddlecheckoutcontrollergetpricing) | **GET** /pricing | 
[**paddleCheckoutControllerGetPrivacy**](DefaultApi.md#paddlecheckoutcontrollergetprivacy) | **GET** /privacy | 
[**paddleCheckoutControllerGetRefundPolicy**](DefaultApi.md#paddlecheckoutcontrollergetrefundpolicy) | **GET** /refund | 
[**paddleCheckoutControllerGetTerms**](DefaultApi.md#paddlecheckoutcontrollergetterms) | **GET** /terms | 
[**paddleCheckoutControllerHandleCheckout**](DefaultApi.md#paddlecheckoutcontrollerhandlecheckout) | **GET** /paddle-checkout | 


# **paddleCheckoutControllerGetPricing**
> paddleCheckoutControllerGetPricing()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();

try {
    api_instance.paddleCheckoutControllerGetPricing();
} catch (e) {
    print('Exception when calling DefaultApi->paddleCheckoutControllerGetPricing: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paddleCheckoutControllerGetPrivacy**
> paddleCheckoutControllerGetPrivacy()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();

try {
    api_instance.paddleCheckoutControllerGetPrivacy();
} catch (e) {
    print('Exception when calling DefaultApi->paddleCheckoutControllerGetPrivacy: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paddleCheckoutControllerGetRefundPolicy**
> paddleCheckoutControllerGetRefundPolicy()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();

try {
    api_instance.paddleCheckoutControllerGetRefundPolicy();
} catch (e) {
    print('Exception when calling DefaultApi->paddleCheckoutControllerGetRefundPolicy: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paddleCheckoutControllerGetTerms**
> paddleCheckoutControllerGetTerms()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();

try {
    api_instance.paddleCheckoutControllerGetTerms();
} catch (e) {
    print('Exception when calling DefaultApi->paddleCheckoutControllerGetTerms: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paddleCheckoutControllerHandleCheckout**
> paddleCheckoutControllerHandleCheckout(ptxn)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final ptxn = ptxn_example; // String | 

try {
    api_instance.paddleCheckoutControllerHandleCheckout(ptxn);
} catch (e) {
    print('Exception when calling DefaultApi->paddleCheckoutControllerHandleCheckout: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ptxn** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

