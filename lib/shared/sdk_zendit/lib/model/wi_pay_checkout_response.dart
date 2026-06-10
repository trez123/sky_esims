//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WiPayCheckoutResponse {
  /// Returns a new [WiPayCheckoutResponse] instance.
  WiPayCheckoutResponse({
    required this.checkoutUrl,
    required this.transactionId,
  });

  String checkoutUrl;

  String transactionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WiPayCheckoutResponse &&
    other.checkoutUrl == checkoutUrl &&
    other.transactionId == transactionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (checkoutUrl.hashCode) +
    (transactionId.hashCode);

  @override
  String toString() => 'WiPayCheckoutResponse[checkoutUrl=$checkoutUrl, transactionId=$transactionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'checkoutUrl'] = this.checkoutUrl;
      json[r'transactionId'] = this.transactionId;
    return json;
  }

  /// Returns a new [WiPayCheckoutResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WiPayCheckoutResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WiPayCheckoutResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WiPayCheckoutResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WiPayCheckoutResponse(
        checkoutUrl: mapValueOfType<String>(json, r'checkoutUrl')!,
        transactionId: mapValueOfType<String>(json, r'transactionId')!,
      );
    }
    return null;
  }

  static List<WiPayCheckoutResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WiPayCheckoutResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WiPayCheckoutResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WiPayCheckoutResponse> mapFromJson(dynamic json) {
    final map = <String, WiPayCheckoutResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WiPayCheckoutResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WiPayCheckoutResponse-objects as value to a dart map
  static Map<String, List<WiPayCheckoutResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WiPayCheckoutResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WiPayCheckoutResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'checkoutUrl',
    'transactionId',
  };
}

