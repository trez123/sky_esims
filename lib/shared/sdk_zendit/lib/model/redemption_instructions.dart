//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RedemptionInstructions {
  /// Returns a new [RedemptionInstructions] instance.
  RedemptionInstructions({
    required this.country,
    required this.deliveryType,
    required this.language,
    required this.redemptionInstructions,
    required this.terms,
    required this.redemptionVideo,
  });

  /// 2 letter ISO code for the destination country
  String country;

  /// Delivery type (matches delivery type of transactions)
  String deliveryType;

  /// 2 letter ISO code for language of instructions
  String language;

  /// HTML instructions for redeeming the gift or utility payment
  String redemptionInstructions;

  /// Plain text terms & conditions for the gift or utility product
  String terms;

  /// (Future suppoprt) video demonstrating redeeming the gift or utility product
  String redemptionVideo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RedemptionInstructions &&
    other.country == country &&
    other.deliveryType == deliveryType &&
    other.language == language &&
    other.redemptionInstructions == redemptionInstructions &&
    other.terms == terms &&
    other.redemptionVideo == redemptionVideo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (country.hashCode) +
    (deliveryType.hashCode) +
    (language.hashCode) +
    (redemptionInstructions.hashCode) +
    (terms.hashCode) +
    (redemptionVideo.hashCode);

  @override
  String toString() => 'RedemptionInstructions[country=$country, deliveryType=$deliveryType, language=$language, redemptionInstructions=$redemptionInstructions, terms=$terms, redemptionVideo=$redemptionVideo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'country'] = this.country;
      json[r'deliveryType'] = this.deliveryType;
      json[r'language'] = this.language;
      json[r'redemptionInstructions'] = this.redemptionInstructions;
      json[r'terms'] = this.terms;
      json[r'redemptionVideo'] = this.redemptionVideo;
    return json;
  }

  /// Returns a new [RedemptionInstructions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RedemptionInstructions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RedemptionInstructions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RedemptionInstructions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RedemptionInstructions(
        country: mapValueOfType<String>(json, r'country')!,
        deliveryType: mapValueOfType<String>(json, r'deliveryType')!,
        language: mapValueOfType<String>(json, r'language')!,
        redemptionInstructions: mapValueOfType<String>(json, r'redemptionInstructions')!,
        terms: mapValueOfType<String>(json, r'terms')!,
        redemptionVideo: mapValueOfType<String>(json, r'redemptionVideo')!,
      );
    }
    return null;
  }

  static List<RedemptionInstructions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RedemptionInstructions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RedemptionInstructions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RedemptionInstructions> mapFromJson(dynamic json) {
    final map = <String, RedemptionInstructions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RedemptionInstructions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RedemptionInstructions-objects as value to a dart map
  static Map<String, List<RedemptionInstructions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RedemptionInstructions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RedemptionInstructions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'country',
    'deliveryType',
    'language',
    'redemptionInstructions',
    'terms',
    'redemptionVideo',
  };
}

