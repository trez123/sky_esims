# openapi.api.BrandsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBrandByBrandCode**](BrandsApi.md#getbrandbybrandcode) | **GET** /brands/brand_by_brand_code/{brandCode} | Get a brand by brand code
[**getBrandRedemptionInstructions**](BrandsApi.md#getbrandredemptioninstructions) | **GET** /brands/brand_redemption_instructions/{brandCode}/{country}/{deliveryType}/{language} | Get brand redemption instructions by brand code
[**getBrands**](BrandsApi.md#getbrands) | **GET** /brands | Get a list of brands


# **getBrandByBrandCode**
> Brand getBrandByBrandCode(brandCode)

Get a brand by brand code

This request retrieves the details of a specific brand by its unique brand code.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BrandsApi();
final brandCode = brandCode_example; // String | 

try {
    final result = api_instance.getBrandByBrandCode(brandCode);
    print(result);
} catch (e) {
    print('Exception when calling BrandsApi->getBrandByBrandCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **brandCode** | **String**|  | 

### Return type

[**Brand**](Brand.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandRedemptionInstructions**
> RedemptionInstructions getBrandRedemptionInstructions(brandCode, country, deliveryType, language)

Get brand redemption instructions by brand code

This request retrieves the redemption instructions for a specific brand by its unique brand code.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BrandsApi();
final brandCode = brandCode_example; // String | The unique brand code of the brand
final country = country_example; // String | The country for which the redemption instructions are applicable
final deliveryType = deliveryType_example; // String | The delivery type for the redemption instructions
final language = language_example; // String | The language in which the redemption instructions are provided

try {
    final result = api_instance.getBrandRedemptionInstructions(brandCode, country, deliveryType, language);
    print(result);
} catch (e) {
    print('Exception when calling BrandsApi->getBrandRedemptionInstructions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **brandCode** | **String**| The unique brand code of the brand | 
 **country** | **String**| The country for which the redemption instructions are applicable | 
 **deliveryType** | **String**| The delivery type for the redemption instructions | 
 **language** | **String**| The language in which the redemption instructions are provided | 

### Return type

[**RedemptionInstructions**](RedemptionInstructions.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrands**
> BrandsResponse getBrands(page, limit)

Get a list of brands

This request reveals a list of data brands from the Console that you can use in your account. It reveals the brand’s names, descriptions, coverage, and available refills.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Authorization
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Authorization').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BrandsApi();
final page = 8.14; // num | 
final limit = 8.14; // num | 

try {
    final result = api_instance.getBrands(page, limit);
    print(result);
} catch (e) {
    print('Exception when calling BrandsApi->getBrands: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **num**|  | 
 **limit** | **num**|  | 

### Return type

[**BrandsResponse**](BrandsResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

