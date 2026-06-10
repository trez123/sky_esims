//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WiPayApi {
  WiPayApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create WiPay checkout URL
  ///
  /// Create transaction and return checkout URL for redirect
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateWiPayCheckoutDto] createWiPayCheckoutDto (required):
  Future<Response> createWiPayCheckoutWithHttpInfo(CreateWiPayCheckoutDto createWiPayCheckoutDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/wipay/create-checkout';

    // ignore: prefer_final_locals
    Object? postBody = createWiPayCheckoutDto;

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

  /// Create WiPay checkout URL
  ///
  /// Create transaction and return checkout URL for redirect
  ///
  /// Parameters:
  ///
  /// * [CreateWiPayCheckoutDto] createWiPayCheckoutDto (required):
  Future<WiPayCheckoutResponse?> createWiPayCheckout(CreateWiPayCheckoutDto createWiPayCheckoutDto,) async {
    final response = await createWiPayCheckoutWithHttpInfo(createWiPayCheckoutDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WiPayCheckoutResponse',) as WiPayCheckoutResponse;
    
    }
    return null;
  }

  /// Get current exchange rate
  ///
  /// Get the current USD to JMD exchange rate for display
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getExchangeRateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/wipay/exchange-rate';

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

  /// Get current exchange rate
  ///
  /// Get the current USD to JMD exchange rate for display
  Future<ExchangeRateResponseDto?> getExchangeRate() async {
    final response = await getExchangeRateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExchangeRateResponseDto',) as ExchangeRateResponseDto;
    
    }
    return null;
  }

  /// Get payment success details
  ///
  /// Get transaction details after successful payment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] transactionId (required):
  Future<Response> getPaymentSuccessDetailsWithHttpInfo(String transactionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/wipay/payment-success';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'transactionId', transactionId));

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

  /// Get payment success details
  ///
  /// Get transaction details after successful payment
  ///
  /// Parameters:
  ///
  /// * [String] transactionId (required):
  Future<WiPayPaymentSuccessDetailsDto?> getPaymentSuccessDetails(String transactionId,) async {
    final response = await getPaymentSuccessDetailsWithHttpInfo(transactionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WiPayPaymentSuccessDetailsDto',) as WiPayPaymentSuccessDetailsDto;
    
    }
    return null;
  }

  /// Get user transactions
  ///
  /// Get all WiPay transactions for the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWiPayUserTransactionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/wipay/transactions';

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

  /// Get user transactions
  ///
  /// Get all WiPay transactions for the authenticated user
  Future<List<WiPayTransactionDto>?> getWiPayUserTransactions() async {
    final response = await getWiPayUserTransactionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<WiPayTransactionDto>') as List)
        .cast<WiPayTransactionDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Handle WiPay payment redirect
  ///
  /// Processes the payment redirect from WiPay and redirects to frontend
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] errorMessage:
  ///
  /// * [Object] errorCode:
  ///
  /// * [Object] status:
  ///
  /// * [Object] transactionId:
  ///
  /// * [Object] orderId:
  Future<Response> handlePaymentRedirectWithHttpInfo({ Object? errorMessage, Object? errorCode, Object? status, Object? transactionId, Object? orderId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/wipay/payment-redirect';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (errorMessage != null) {
      queryParams.addAll(_queryParams('', 'error_message', errorMessage));
    }
    if (errorCode != null) {
      queryParams.addAll(_queryParams('', 'error_code', errorCode));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (transactionId != null) {
      queryParams.addAll(_queryParams('', 'transaction_id', transactionId));
    }
    if (orderId != null) {
      queryParams.addAll(_queryParams('', 'order_id', orderId));
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

  /// Handle WiPay payment redirect
  ///
  /// Processes the payment redirect from WiPay and redirects to frontend
  ///
  /// Parameters:
  ///
  /// * [Object] errorMessage:
  ///
  /// * [Object] errorCode:
  ///
  /// * [Object] status:
  ///
  /// * [Object] transactionId:
  ///
  /// * [Object] orderId:
  Future<void> handlePaymentRedirect({ Object? errorMessage, Object? errorCode, Object? status, Object? transactionId, Object? orderId, }) async {
    final response = await handlePaymentRedirectWithHttpInfo( errorMessage: errorMessage, errorCode: errorCode, status: status, transactionId: transactionId, orderId: orderId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
