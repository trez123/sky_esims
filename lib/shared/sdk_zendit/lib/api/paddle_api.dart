//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PaddleApi {
  PaddleApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Paddle checkout URL
  ///
  /// Create transaction and return checkout URL for redirect
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateCheckoutDto] createCheckoutDto (required):
  Future<Response> createCheckoutWithHttpInfo(CreateCheckoutDto createCheckoutDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/paddle/create-checkout';

    // ignore: prefer_final_locals
    Object? postBody = createCheckoutDto;

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

  /// Create Paddle checkout URL
  ///
  /// Create transaction and return checkout URL for redirect
  ///
  /// Parameters:
  ///
  /// * [CreateCheckoutDto] createCheckoutDto (required):
  Future<CheckoutResponse?> createCheckout(CreateCheckoutDto createCheckoutDto,) async {
    final response = await createCheckoutWithHttpInfo(createCheckoutDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckoutResponse',) as CheckoutResponse;
    
    }
    return null;
  }

  /// Get transaction status
  ///
  /// Check completion status of a transaction
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] transactionId (required):
  Future<Response> getTransactionStatusWithHttpInfo(String transactionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/paddle/get-transaction-status';

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

  /// Get transaction status
  ///
  /// Check completion status of a transaction
  ///
  /// Parameters:
  ///
  /// * [String] transactionId (required):
  Future<CheckoutResponse?> getTransactionStatus(String transactionId,) async {
    final response = await getTransactionStatusWithHttpInfo(transactionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckoutResponse',) as CheckoutResponse;
    
    }
    return null;
  }

  /// Get user transactions
  ///
  /// Get all transactions for the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUserTransactionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/paddle/transactions';

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
  /// Get all transactions for the authenticated user
  Future<List<TransactionDto>?> getUserTransactions() async {
    final response = await getUserTransactionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TransactionDto>') as List)
        .cast<TransactionDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Paddle webhook handler
  ///
  /// Receives and processes Paddle webhook events
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] paddleSignature (required):
  Future<Response> handleWebhookWithHttpInfo(String paddleSignature,) async {
    // ignore: prefer_const_declarations
    final path = r'/paddle/webhook';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'paddle-signature'] = parameterToString(paddleSignature);

    const contentTypes = <String>[];


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

  /// Paddle webhook handler
  ///
  /// Receives and processes Paddle webhook events
  ///
  /// Parameters:
  ///
  /// * [String] paddleSignature (required):
  Future<void> handleWebhook(String paddleSignature,) async {
    final response = await handleWebhookWithHttpInfo(paddleSignature,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Send test email
  ///
  /// Send a test eSIM delivery email
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SendTestEmailRequest] sendTestEmailRequest (required):
  Future<Response> sendTestEmailWithHttpInfo(SendTestEmailRequest sendTestEmailRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/paddle/test-email';

    // ignore: prefer_final_locals
    Object? postBody = sendTestEmailRequest;

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

  /// Send test email
  ///
  /// Send a test eSIM delivery email
  ///
  /// Parameters:
  ///
  /// * [SendTestEmailRequest] sendTestEmailRequest (required):
  Future<void> sendTestEmail(SendTestEmailRequest sendTestEmailRequest,) async {
    final response = await sendTestEmailWithHttpInfo(sendTestEmailRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
