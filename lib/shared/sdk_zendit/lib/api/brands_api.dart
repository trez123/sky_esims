//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BrandsApi {
  BrandsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get a brand by brand code
  ///
  /// This request retrieves the details of a specific brand by its unique brand code.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] brandCode (required):
  Future<Response> getBrandByBrandCodeWithHttpInfo(String brandCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/brands/brand_by_brand_code/{brandCode}'
      .replaceAll('{brandCode}', brandCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a brand by brand code
  ///
  /// This request retrieves the details of a specific brand by its unique brand code.
  ///
  /// Parameters:
  ///
  /// * [String] brandCode (required):
  Future<Brand?> getBrandByBrandCode(String brandCode,) async {
    final response = await getBrandByBrandCodeWithHttpInfo(brandCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Brand',) as Brand;
    
    }
    return null;
  }

  /// Get brand redemption instructions by brand code
  ///
  /// This request retrieves the redemption instructions for a specific brand by its unique brand code.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] brandCode (required):
  ///   The unique brand code of the brand
  ///
  /// * [String] country (required):
  ///   The country for which the redemption instructions are applicable
  ///
  /// * [String] deliveryType (required):
  ///   The delivery type for the redemption instructions
  ///
  /// * [String] language (required):
  ///   The language in which the redemption instructions are provided
  Future<Response> getBrandRedemptionInstructionsWithHttpInfo(String brandCode, String country, String deliveryType, String language,) async {
    // ignore: prefer_const_declarations
    final path = r'/brands/brand_redemption_instructions/{brandCode}/{country}/{deliveryType}/{language}'
      .replaceAll('{brandCode}', brandCode)
      .replaceAll('{country}', country)
      .replaceAll('{deliveryType}', deliveryType)
      .replaceAll('{language}', language);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get brand redemption instructions by brand code
  ///
  /// This request retrieves the redemption instructions for a specific brand by its unique brand code.
  ///
  /// Parameters:
  ///
  /// * [String] brandCode (required):
  ///   The unique brand code of the brand
  ///
  /// * [String] country (required):
  ///   The country for which the redemption instructions are applicable
  ///
  /// * [String] deliveryType (required):
  ///   The delivery type for the redemption instructions
  ///
  /// * [String] language (required):
  ///   The language in which the redemption instructions are provided
  Future<RedemptionInstructions?> getBrandRedemptionInstructions(String brandCode, String country, String deliveryType, String language,) async {
    final response = await getBrandRedemptionInstructionsWithHttpInfo(brandCode, country, deliveryType, language,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RedemptionInstructions',) as RedemptionInstructions;
    
    }
    return null;
  }

  /// Get a list of brands
  ///
  /// This request reveals a list of data brands from the Console that you can use in your account. It reveals the brand’s names, descriptions, coverage, and available refills.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] page (required):
  ///
  /// * [num] limit (required):
  Future<Response> getBrandsWithHttpInfo(num page, num limit,) async {
    // ignore: prefer_const_declarations
    final path = r'/brands';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'page', page));
      queryParams.addAll(_queryParams('', 'limit', limit));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a list of brands
  ///
  /// This request reveals a list of data brands from the Console that you can use in your account. It reveals the brand’s names, descriptions, coverage, and available refills.
  ///
  /// Parameters:
  ///
  /// * [num] page (required):
  ///
  /// * [num] limit (required):
  Future<BrandsResponse?> getBrands(num page, num limit,) async {
    final response = await getBrandsWithHttpInfo(page, limit,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BrandsResponse',) as BrandsResponse;
    
    }
    return null;
  }
}
