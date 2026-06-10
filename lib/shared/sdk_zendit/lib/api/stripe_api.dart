//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StripeApi {
  StripeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a payment intent
  ///
  /// Create a payment intent for a given amount and currency
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreatePaymentIntentDto] createPaymentIntentDto (required):
  Future<Response> createPaymentIntentWithHttpInfo(CreatePaymentIntentDto createPaymentIntentDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/stripe/create-payment-intent';

    // ignore: prefer_final_locals
    Object? postBody = createPaymentIntentDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a payment intent
  ///
  /// Create a payment intent for a given amount and currency
  ///
  /// Parameters:
  ///
  /// * [CreatePaymentIntentDto] createPaymentIntentDto (required):
  Future<PaymentIntentResponse?> createPaymentIntent(CreatePaymentIntentDto createPaymentIntentDto,) async {
    final response = await createPaymentIntentWithHttpInfo(createPaymentIntentDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaymentIntentResponse',) as PaymentIntentResponse;
    
    }
    return null;
  }

  /// Get a payment intent
  ///
  /// Get a payment intent for a given payment intent ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] paymentIntentId (required):
  Future<Response> getPaymentIntentWithHttpInfo(String paymentIntentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/stripe/get-payment-intent';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'paymentIntentId', paymentIntentId));

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

  /// Get a payment intent
  ///
  /// Get a payment intent for a given payment intent ID
  ///
  /// Parameters:
  ///
  /// * [String] paymentIntentId (required):
  Future<PaymentIntentResponse?> getPaymentIntent(String paymentIntentId,) async {
    final response = await getPaymentIntentWithHttpInfo(paymentIntentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaymentIntentResponse',) as PaymentIntentResponse;
    
    }
    return null;
  }

  /// Get all payment intents
  ///
  /// Get all payment intents
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPaymentIntentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/stripe/get-payment-intents';

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

  /// Get all payment intents
  ///
  /// Get all payment intents
  Future<List<PaymentIntentResponse>?> getPaymentIntents() async {
    final response = await getPaymentIntentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PaymentIntentResponse>') as List)
        .cast<PaymentIntentResponse>()
        .toList(growable: false);

    }
    return null;
  }
}
