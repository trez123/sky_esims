//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EsimsApi {
  EsimsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get eSIM plans by ICCID
  ///
  /// This request retrieves the available plans for a specific eSIM by its unique ICCID, which can be used to top up the eSIM with additional data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] iccid (required):
  Future<Response> getEsimPlansWithHttpInfo(String iccid,) async {
    // ignore: prefer_const_declarations
    final path = r'/esims/esim_plans/{iccid}'
      .replaceAll('{iccid}', iccid);

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

  /// Get eSIM plans by ICCID
  ///
  /// This request retrieves the available plans for a specific eSIM by its unique ICCID, which can be used to top up the eSIM with additional data.
  ///
  /// Parameters:
  ///
  /// * [String] iccid (required):
  Future<DtoESIMPlansResponse?> getEsimPlans(String iccid,) async {
    final response = await getEsimPlansWithHttpInfo(iccid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DtoESIMPlansResponse',) as DtoESIMPlansResponse;
    
    }
    return null;
  }

  /// Get eSIM purchase details by ID
  ///
  /// This request retrieves the details of a specific eSIM purchase by its unique ID, including the associated offer, its current status, and other relevant information.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getEsimPurchaseByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/esims/details/{id}'
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

  /// Get eSIM purchase details by ID
  ///
  /// This request retrieves the details of a specific eSIM purchase by its unique ID, including the associated offer, its current status, and other relevant information.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<DtoESimPurchase?> getEsimPurchaseById(String id,) async {
    final response = await getEsimPurchaseByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DtoESimPurchase',) as DtoESimPurchase;
    
    }
    return null;
  }

  /// Get a list of eSIM purchases
  ///
  /// This request retrieves a list of all eSIMs purchased through your account. It provides details such as the purchase ID, the associated offer, and the current status of each eSIM.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] page (required):
  ///
  /// * [num] limit (required):
  Future<Response> getEsimPurchasesWithHttpInfo(num page, num limit,) async {
    // ignore: prefer_const_declarations
    final path = r'/esims';

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

  /// Get a list of eSIM purchases
  ///
  /// This request retrieves a list of all eSIMs purchased through your account. It provides details such as the purchase ID, the associated offer, and the current status of each eSIM.
  ///
  /// Parameters:
  ///
  /// * [num] page (required):
  ///
  /// * [num] limit (required):
  Future<DtoESimPurchasesResponse?> getEsimPurchases(num page, num limit,) async {
    final response = await getEsimPurchasesWithHttpInfo(page, limit,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DtoESimPurchasesResponse',) as DtoESimPurchasesResponse;
    
    }
    return null;
  }

  /// Get eSIM QR code by ID
  ///
  /// This request retrieves the QR code for a specific eSIM by its unique ID, which can be used to install the eSIM on a compatible device.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getEsimQrCodeWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/esims/esim_qr_code/{id}'
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

  /// Get eSIM QR code by ID
  ///
  /// This request retrieves the QR code for a specific eSIM by its unique ID, which can be used to install the eSIM on a compatible device.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<MultipartFile?> getEsimQrCode(String id,) async {
    final response = await getEsimQrCodeWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get eSIM refund status by ID
  ///
  /// This request retrieves the refund status of a specific eSIM purchase by its unique ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getRefundStatusWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/esims/refund_status/{id}'
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

  /// Get eSIM refund status by ID
  ///
  /// This request retrieves the refund status of a specific eSIM purchase by its unique ID.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<DtoESimRefundStatus?> getRefundStatus(String id,) async {
    final response = await getRefundStatusWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DtoESimRefundStatus',) as DtoESimRefundStatus;
    
    }
    return null;
  }

  /// Purchase an eSIM
  ///
  /// This request allows you to purchase an eSIM. The request body must contain the necessary information, such as the offer ID and other relevant details.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EsimPurchaseBody] esimPurchaseBody (required):
  Future<Response> purchaseEsimWithHttpInfo(EsimPurchaseBody esimPurchaseBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/esims/purchase_esim';

    // ignore: prefer_final_locals
    Object? postBody = esimPurchaseBody;

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

  /// Purchase an eSIM
  ///
  /// This request allows you to purchase an eSIM. The request body must contain the necessary information, such as the offer ID and other relevant details.
  ///
  /// Parameters:
  ///
  /// * [EsimPurchaseBody] esimPurchaseBody (required):
  Future<DtoESimPurchaseResponse?> purchaseEsim(EsimPurchaseBody esimPurchaseBody,) async {
    final response = await purchaseEsimWithHttpInfo(esimPurchaseBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DtoESimPurchaseResponse',) as DtoESimPurchaseResponse;
    
    }
    return null;
  }

  /// Refund an eSIM by ID
  ///
  /// This request allows you to refund an eSIM purchase by its unique ID. The request body must contain the necessary information to process the refund.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> refundEsimWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/esims/refund_esim/{id}'
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

  /// Refund an eSIM by ID
  ///
  /// This request allows you to refund an eSIM purchase by its unique ID. The request body must contain the necessary information to process the refund.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<DtoESimRefund?> refundEsim(String id,) async {
    final response = await refundEsimWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DtoESimRefund',) as DtoESimRefund;
    
    }
    return null;
  }
}
