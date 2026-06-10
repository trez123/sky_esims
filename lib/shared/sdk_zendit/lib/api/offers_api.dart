//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OffersApi {
  OffersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get account balance
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAccountBalanceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/offers/get_balance';

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

  /// Get account balance
  Future<DtoBalanceResponse?> getAccountBalance() async {
    final response = await getAccountBalanceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DtoBalanceResponse',) as DtoBalanceResponse;
    
    }
    return null;
  }

  /// Get offer
  ///
  /// This request reveals a specific offer from Zendit Console that you can use in your Partner Account. It reveals the offer’s name, description, coverage, and available refills.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getOfferByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/offers/get_details/{id}'
      .replaceAll('{id}', id);

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

  /// Get offer
  ///
  /// This request reveals a specific offer from Zendit Console that you can use in your Partner Account. It reveals the offer’s name, description, coverage, and available refills.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<DtoESimOffer?> getOfferById(String id,) async {
    final response = await getOfferByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DtoESimOffer',) as DtoESimOffer;
    
    }
    return null;
  }

  /// Get a list of offers
  ///
  /// This request reveals a list of data offers from the Zendit Console that you can use in your account. It reveals the offer’s names, descriptions, coverage, and available refills.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] page (required):
  ///
  /// * [num] limit (required):
  ///
  /// * [String] brand:
  ///
  /// * [String] country:
  ///
  /// * [String] regions:
  ///   Select a region
  ///
  /// * [String] subType:
  Future<Response> getOffersWithHttpInfo(num page, num limit, { String? brand, String? country, String? regions, String? subType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/offers';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'page', page));
      queryParams.addAll(_queryParams('', 'limit', limit));
    if (brand != null) {
      queryParams.addAll(_queryParams('', 'brand', brand));
    }
    if (country != null) {
      queryParams.addAll(_queryParams('', 'country', country));
    }
    if (regions != null) {
      queryParams.addAll(_queryParams('', 'regions', regions));
    }
    if (subType != null) {
      queryParams.addAll(_queryParams('', 'subType', subType));
    }

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

  /// Get a list of offers
  ///
  /// This request reveals a list of data offers from the Zendit Console that you can use in your account. It reveals the offer’s names, descriptions, coverage, and available refills.
  ///
  /// Parameters:
  ///
  /// * [num] page (required):
  ///
  /// * [num] limit (required):
  ///
  /// * [String] brand:
  ///
  /// * [String] country:
  ///
  /// * [String] regions:
  ///   Select a region
  ///
  /// * [String] subType:
  Future<DtoESimOffersResponse?> getOffers(num page, num limit, { String? brand, String? country, String? regions, String? subType, }) async {
    final response = await getOffersWithHttpInfo(page, limit,  brand: brand, country: country, regions: regions, subType: subType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DtoESimOffersResponse',) as DtoESimOffersResponse;
    
    }
    return null;
  }
}
