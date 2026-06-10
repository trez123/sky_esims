//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DtoBalanceResponse {
  /// Returns a new [DtoBalanceResponse] instance.
  DtoBalanceResponse({
    this.availableBalance,
    this.currency,
  });

  /// Available balance in the wallet
  num? availableBalance;

  /// Currency of the available balance
  String? currency;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DtoBalanceResponse &&
    other.availableBalance == availableBalance &&
    other.currency == currency;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (availableBalance == null ? 0 : availableBalance!.hashCode) +
    (currency == null ? 0 : currency!.hashCode);

  @override
  String toString() => 'DtoBalanceResponse[availableBalance=$availableBalance, currency=$currency]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.availableBalance != null) {
      json[r'availableBalance'] = this.availableBalance;
    } else {
      json[r'availableBalance'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    return json;
  }

  /// Returns a new [DtoBalanceResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DtoBalanceResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DtoBalanceResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DtoBalanceResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DtoBalanceResponse(
        availableBalance: json[r'availableBalance'] == null
            ? null
            : num.parse('${json[r'availableBalance']}'),
        currency: mapValueOfType<String>(json, r'currency'),
      );
    }
    return null;
  }

  static List<DtoBalanceResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoBalanceResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoBalanceResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DtoBalanceResponse> mapFromJson(dynamic json) {
    final map = <String, DtoBalanceResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DtoBalanceResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DtoBalanceResponse-objects as value to a dart map
  static Map<String, List<DtoBalanceResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DtoBalanceResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DtoBalanceResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

