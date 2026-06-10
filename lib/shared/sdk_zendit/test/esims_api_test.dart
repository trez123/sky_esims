//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for EsimsApi
void main() {
  // final instance = EsimsApi();

  group('tests for EsimsApi', () {
    // Get eSIM plans by ICCID
    //
    // This request retrieves the available plans for a specific eSIM by its unique ICCID, which can be used to top up the eSIM with additional data.
    //
    //Future<DtoESIMPlansResponse> getEsimPlans(String iccid) async
    test('test getEsimPlans', () async {
      // TODO
    });

    // Get eSIM purchase details by ID
    //
    // This request retrieves the details of a specific eSIM purchase by its unique ID, including the associated offer, its current status, and other relevant information.
    //
    //Future<DtoESimPurchase> getEsimPurchaseById(String id) async
    test('test getEsimPurchaseById', () async {
      // TODO
    });

    // Get a list of eSIM purchases
    //
    // This request retrieves a list of all eSIMs purchased through your account. It provides details such as the purchase ID, the associated offer, and the current status of each eSIM.
    //
    //Future<DtoESimPurchasesResponse> getEsimPurchases(num page, num limit) async
    test('test getEsimPurchases', () async {
      // TODO
    });

    // Get eSIM QR code by ID
    //
    // This request retrieves the QR code for a specific eSIM by its unique ID, which can be used to install the eSIM on a compatible device.
    //
    //Future<MultipartFile> getEsimQrCode(String id) async
    test('test getEsimQrCode', () async {
      // TODO
    });

    // Get eSIM refund status by ID
    //
    // This request retrieves the refund status of a specific eSIM purchase by its unique ID.
    //
    //Future<DtoESimRefundStatus> getRefundStatus(String id) async
    test('test getRefundStatus', () async {
      // TODO
    });

    // Purchase an eSIM
    //
    // This request allows you to purchase an eSIM. The request body must contain the necessary information, such as the offer ID and other relevant details.
    //
    //Future<DtoESimPurchaseResponse> purchaseEsim(EsimPurchaseBody esimPurchaseBody) async
    test('test purchaseEsim', () async {
      // TODO
    });

    // Refund an eSIM by ID
    //
    // This request allows you to refund an eSIM purchase by its unique ID. The request body must contain the necessary information to process the refund.
    //
    //Future<DtoESimRefund> refundEsim(String id) async
    test('test refundEsim', () async {
      // TODO
    });

  });
}
