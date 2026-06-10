//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EsimPurchaseBody {
  /// Returns a new [EsimPurchaseBody] instance.
  EsimPurchaseBody({
    this.iccid,
    required this.offerId,
  });

  /// ICCID to apply plan (omit to issue a new eSIM)
  String? iccid;

  /// Catalog ID of the offer (used for purchases)
  String offerId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsimPurchaseBody &&
    other.iccid == iccid &&
    other.offerId == offerId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (iccid == null ? 0 : iccid!.hashCode) +
    (offerId.hashCode);

  @override
  String toString() => 'EsimPurchaseBody[iccid=$iccid, offerId=$offerId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.iccid != null) {
      json[r'iccid'] = this.iccid;
    } else {
      json[r'iccid'] = null;
    }
      json[r'offerId'] = this.offerId;
    return json;
  }

  /// Returns a new [EsimPurchaseBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsimPurchaseBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsimPurchaseBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsimPurchaseBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsimPurchaseBody(
        iccid: mapValueOfType<String>(json, r'iccid'),
        offerId: mapValueOfType<String>(json, r'offerId')!,
      );
    }
    return null;
  }

  static List<EsimPurchaseBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsimPurchaseBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsimPurchaseBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsimPurchaseBody> mapFromJson(dynamic json) {
    final map = <String, EsimPurchaseBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsimPurchaseBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsimPurchaseBody-objects as value to a dart map
  static Map<String, List<EsimPurchaseBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsimPurchaseBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsimPurchaseBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'offerId',
  };
}

