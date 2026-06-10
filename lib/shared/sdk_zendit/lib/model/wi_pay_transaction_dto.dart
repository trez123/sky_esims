//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WiPayTransactionDto {
  /// Returns a new [WiPayTransactionDto] instance.
  WiPayTransactionDto({
    required this.transactionId,
    required this.orderId,
    required this.wiPayTransactionId,
    required this.status,
    required this.description,
    required this.date,
    required this.currency,
    required this.amount,
    required this.amountFormatted,
    this.originalAmountUSD,
    this.exchangeRateUsed,
    this.fee,
    this.totalAmount,
    this.wiPayTotal,
    this.wiPayCard,
    this.wiPayDate,
    this.customData,
    this.errorMessage,
    this.esimData,
  });

  String transactionId;

  String orderId;

  String wiPayTransactionId;

  String status;

  String description;

  String date;

  String currency;

  num amount;

  String amountFormatted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? originalAmountUSD;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? exchangeRateUsed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? fee;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? totalAmount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? wiPayTotal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? wiPayCard;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? wiPayDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorMessage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? esimData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WiPayTransactionDto &&
    other.transactionId == transactionId &&
    other.orderId == orderId &&
    other.wiPayTransactionId == wiPayTransactionId &&
    other.status == status &&
    other.description == description &&
    other.date == date &&
    other.currency == currency &&
    other.amount == amount &&
    other.amountFormatted == amountFormatted &&
    other.originalAmountUSD == originalAmountUSD &&
    other.exchangeRateUsed == exchangeRateUsed &&
    other.fee == fee &&
    other.totalAmount == totalAmount &&
    other.wiPayTotal == wiPayTotal &&
    other.wiPayCard == wiPayCard &&
    other.wiPayDate == wiPayDate &&
    other.customData == customData &&
    other.errorMessage == errorMessage &&
    other.esimData == esimData;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (transactionId.hashCode) +
    (orderId.hashCode) +
    (wiPayTransactionId.hashCode) +
    (status.hashCode) +
    (description.hashCode) +
    (date.hashCode) +
    (currency.hashCode) +
    (amount.hashCode) +
    (amountFormatted.hashCode) +
    (originalAmountUSD == null ? 0 : originalAmountUSD!.hashCode) +
    (exchangeRateUsed == null ? 0 : exchangeRateUsed!.hashCode) +
    (fee == null ? 0 : fee!.hashCode) +
    (totalAmount == null ? 0 : totalAmount!.hashCode) +
    (wiPayTotal == null ? 0 : wiPayTotal!.hashCode) +
    (wiPayCard == null ? 0 : wiPayCard!.hashCode) +
    (wiPayDate == null ? 0 : wiPayDate!.hashCode) +
    (customData == null ? 0 : customData!.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (esimData == null ? 0 : esimData!.hashCode);

  @override
  String toString() => 'WiPayTransactionDto[transactionId=$transactionId, orderId=$orderId, wiPayTransactionId=$wiPayTransactionId, status=$status, description=$description, date=$date, currency=$currency, amount=$amount, amountFormatted=$amountFormatted, originalAmountUSD=$originalAmountUSD, exchangeRateUsed=$exchangeRateUsed, fee=$fee, totalAmount=$totalAmount, wiPayTotal=$wiPayTotal, wiPayCard=$wiPayCard, wiPayDate=$wiPayDate, customData=$customData, errorMessage=$errorMessage, esimData=$esimData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transactionId'] = this.transactionId;
      json[r'orderId'] = this.orderId;
      json[r'wiPayTransactionId'] = this.wiPayTransactionId;
      json[r'status'] = this.status;
      json[r'description'] = this.description;
      json[r'date'] = this.date;
      json[r'currency'] = this.currency;
      json[r'amount'] = this.amount;
      json[r'amountFormatted'] = this.amountFormatted;
    if (this.originalAmountUSD != null) {
      json[r'originalAmountUSD'] = this.originalAmountUSD;
    } else {
      json[r'originalAmountUSD'] = null;
    }
    if (this.exchangeRateUsed != null) {
      json[r'exchangeRateUsed'] = this.exchangeRateUsed;
    } else {
      json[r'exchangeRateUsed'] = null;
    }
    if (this.fee != null) {
      json[r'fee'] = this.fee;
    } else {
      json[r'fee'] = null;
    }
    if (this.totalAmount != null) {
      json[r'totalAmount'] = this.totalAmount;
    } else {
      json[r'totalAmount'] = null;
    }
    if (this.wiPayTotal != null) {
      json[r'wiPayTotal'] = this.wiPayTotal;
    } else {
      json[r'wiPayTotal'] = null;
    }
    if (this.wiPayCard != null) {
      json[r'wiPayCard'] = this.wiPayCard;
    } else {
      json[r'wiPayCard'] = null;
    }
    if (this.wiPayDate != null) {
      json[r'wiPayDate'] = this.wiPayDate;
    } else {
      json[r'wiPayDate'] = null;
    }
    if (this.customData != null) {
      json[r'customData'] = this.customData;
    } else {
      json[r'customData'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    if (this.esimData != null) {
      json[r'esimData'] = this.esimData;
    } else {
      json[r'esimData'] = null;
    }
    return json;
  }

  /// Returns a new [WiPayTransactionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WiPayTransactionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WiPayTransactionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WiPayTransactionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WiPayTransactionDto(
        transactionId: mapValueOfType<String>(json, r'transactionId')!,
        orderId: mapValueOfType<String>(json, r'orderId')!,
        wiPayTransactionId: mapValueOfType<String>(json, r'wiPayTransactionId')!,
        status: mapValueOfType<String>(json, r'status')!,
        description: mapValueOfType<String>(json, r'description')!,
        date: mapValueOfType<String>(json, r'date')!,
        currency: mapValueOfType<String>(json, r'currency')!,
        amount: num.parse('${json[r'amount']}'),
        amountFormatted: mapValueOfType<String>(json, r'amountFormatted')!,
        originalAmountUSD: num.parse('${json[r'originalAmountUSD']}'),
        exchangeRateUsed: num.parse('${json[r'exchangeRateUsed']}'),
        fee: num.parse('${json[r'fee']}'),
        totalAmount: num.parse('${json[r'totalAmount']}'),
        wiPayTotal: mapValueOfType<String>(json, r'wiPayTotal'),
        wiPayCard: mapValueOfType<String>(json, r'wiPayCard'),
        wiPayDate: mapValueOfType<String>(json, r'wiPayDate'),
        customData: mapValueOfType<String>(json, r'customData'),
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        esimData: mapValueOfType<Object>(json, r'esimData'),
      );
    }
    return null;
  }

  static List<WiPayTransactionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WiPayTransactionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WiPayTransactionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WiPayTransactionDto> mapFromJson(dynamic json) {
    final map = <String, WiPayTransactionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WiPayTransactionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WiPayTransactionDto-objects as value to a dart map
  static Map<String, List<WiPayTransactionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WiPayTransactionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WiPayTransactionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'transactionId',
    'orderId',
    'wiPayTransactionId',
    'status',
    'description',
    'date',
    'currency',
    'amount',
    'amountFormatted',
  };
}

