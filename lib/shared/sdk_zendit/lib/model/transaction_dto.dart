//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TransactionDto {
  /// Returns a new [TransactionDto] instance.
  TransactionDto({
    this.transactionId,
    required this.status,
    required this.description,
    required this.date,
    required this.currency,
    required this.amount,
    this.esimData,
  });

  /// Transaction ID
  String? transactionId;

  String status;

  String description;

  DateTime date;

  String currency;

  num amount;

  EsimDataDto? esimData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransactionDto &&
    other.transactionId == transactionId &&
    other.status == status &&
    other.description == description &&
    other.date == date &&
    other.currency == currency &&
    other.amount == amount &&
    other.esimData == esimData;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (transactionId == null ? 0 : transactionId!.hashCode) +
    (status.hashCode) +
    (description.hashCode) +
    (date.hashCode) +
    (currency.hashCode) +
    (amount.hashCode) +
    (esimData == null ? 0 : esimData!.hashCode);

  @override
  String toString() => 'TransactionDto[transactionId=$transactionId, status=$status, description=$description, date=$date, currency=$currency, amount=$amount, esimData=$esimData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.transactionId != null) {
      json[r'transactionId'] = this.transactionId;
    } else {
      json[r'transactionId'] = null;
    }
      json[r'status'] = this.status;
      json[r'description'] = this.description;
      json[r'date'] = this.date.toUtc().toIso8601String();
      json[r'currency'] = this.currency;
      json[r'amount'] = this.amount;
    if (this.esimData != null) {
      json[r'esimData'] = this.esimData;
    } else {
      json[r'esimData'] = null;
    }
    return json;
  }

  /// Returns a new [TransactionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransactionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TransactionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TransactionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TransactionDto(
        transactionId: mapValueOfType<String>(json, r'transactionId'),
        status: mapValueOfType<String>(json, r'status')!,
        description: mapValueOfType<String>(json, r'description')!,
        date: mapDateTime(json, r'date', r'')!,
        currency: mapValueOfType<String>(json, r'currency')!,
        amount: num.parse('${json[r'amount']}'),
        esimData: EsimDataDto.fromJson(json[r'esimData']),
      );
    }
    return null;
  }

  static List<TransactionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TransactionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TransactionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TransactionDto> mapFromJson(dynamic json) {
    final map = <String, TransactionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TransactionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TransactionDto-objects as value to a dart map
  static Map<String, List<TransactionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TransactionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TransactionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
    'description',
    'date',
    'currency',
    'amount',
  };
}

