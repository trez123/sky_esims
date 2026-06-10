//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /pricing' operation and returns the [Response].
  Future<Response> paddleCheckoutControllerGetPricingWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/pricing';

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

  Future<void> paddleCheckoutControllerGetPricing() async {
    final response = await paddleCheckoutControllerGetPricingWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /privacy' operation and returns the [Response].
  Future<Response> paddleCheckoutControllerGetPrivacyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/privacy';

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

  Future<void> paddleCheckoutControllerGetPrivacy() async {
    final response = await paddleCheckoutControllerGetPrivacyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /refund' operation and returns the [Response].
  Future<Response> paddleCheckoutControllerGetRefundPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/refund';

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

  Future<void> paddleCheckoutControllerGetRefundPolicy() async {
    final response = await paddleCheckoutControllerGetRefundPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /terms' operation and returns the [Response].
  Future<Response> paddleCheckoutControllerGetTermsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/terms';

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

  Future<void> paddleCheckoutControllerGetTerms() async {
    final response = await paddleCheckoutControllerGetTermsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /paddle-checkout' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] ptxn (required):
  Future<Response> paddleCheckoutControllerHandleCheckoutWithHttpInfo(String ptxn,) async {
    // ignore: prefer_const_declarations
    final path = r'/paddle-checkout';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', '_ptxn', ptxn));

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

  /// Parameters:
  ///
  /// * [String] ptxn (required):
  Future<void> paddleCheckoutControllerHandleCheckout(String ptxn,) async {
    final response = await paddleCheckoutControllerHandleCheckoutWithHttpInfo(ptxn,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
