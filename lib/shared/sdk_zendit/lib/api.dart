//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/brands_api.dart';
part 'api/default_api.dart';
part 'api/esims_api.dart';
part 'api/offers_api.dart';
part 'api/paddle_api.dart';
part 'api/stripe_api.dart';
part 'api/wi_pay_api.dart';

part 'model/brand.dart';
part 'model/brand_min.dart';
part 'model/brands_response.dart';
part 'model/checkout_response.dart';
part 'model/create_checkout_dto.dart';
part 'model/create_payment_intent_dto.dart';
part 'model/create_wi_pay_checkout_dto.dart';
part 'model/data_speed.dart';
part 'model/dto_balance_response.dart';
part 'model/dto_cost.dart';
part 'model/dto_esim_plans.dart';
part 'model/dto_esim_plans_response.dart';
part 'model/dto_e_sim_confirmation.dart';
part 'model/dto_e_sim_offer.dart';
part 'model/dto_e_sim_offers_response.dart';
part 'model/dto_e_sim_purchase.dart';
part 'model/dto_e_sim_purchase_response.dart';
part 'model/dto_e_sim_purchases_response.dart';
part 'model/dto_e_sim_refund.dart';
part 'model/dto_e_sim_refund_status.dart';
part 'model/dto_e_sim_roaming.dart';
part 'model/dto_error.dart';
part 'model/dto_price.dart';
part 'model/dto_purchase_values.dart';
part 'model/dto_transaction_log_item.dart';
part 'model/esim_data_dto.dart';
part 'model/esim_purchase_body.dart';
part 'model/exchange_rate_response_dto.dart';
part 'model/input_masks.dart';
part 'model/payment_intent_response.dart';
part 'model/redemption_instructions.dart';
part 'model/redemption_instructions_min.dart';
part 'model/regions.dart';
part 'model/required_fields_labels.dart';
part 'model/send_test_email_request.dart';
part 'model/transaction_dto.dart';
part 'model/wi_pay_checkout_response.dart';
part 'model/wi_pay_payment_success_details_dto.dart';
part 'model/wi_pay_transaction_dto.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
