//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RedemptionInstructionsMin {
  /// Returns a new [RedemptionInstructionsMin] instance.
  RedemptionInstructionsMin({
    required this.country,
    required this.deliveryType,
    required this.language,
    required this.link,
  });

  /// 2 letter ISO code for the destination country
  String country;

  /// Delivery type (matches delivery type of transactions)
  String deliveryType;

  /// 2 letter ISO code for language of instructions
  String language;

  /// URL to the redemption instructions and terms & conditions
  String link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RedemptionInstructionsMin &&
    other.country == country &&
    other.deliveryType == deliveryType &&
    other.language == language &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (country.hashCode) +
    (deliveryType.hashCode) +
    (language.hashCode) +
    (link.hashCode);

  @override
  String toString() => 'RedemptionInstructionsMin[country=$country, deliveryType=$deliveryType, language=$language, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'country'] = this.country;
      json[r'deliveryType'] = this.deliveryType;
      json[r'language'] = this.language;
      json[r'link'] = this.link;
    return json;
  }

  /// Returns a new [RedemptionInstructionsMin] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RedemptionInstructionsMin? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RedemptionInstructionsMin[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RedemptionInstructionsMin[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RedemptionInstructionsMin(
        country: mapValueOfType<String>(json, r'country')!,
        deliveryType: mapValueOfType<String>(json, r'deliveryType')!,
        language: mapValueOfType<String>(json, r'language')!,
        link: mapValueOfType<String>(json, r'link')!,
      );
    }
    return null;
  }

  static List<RedemptionInstructionsMin> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RedemptionInstructionsMin>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RedemptionInstructionsMin.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RedemptionInstructionsMin> mapFromJson(dynamic json) {
    final map = <String, RedemptionInstructionsMin>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RedemptionInstructionsMin.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RedemptionInstructionsMin-objects as value to a dart map
  static Map<String, List<RedemptionInstructionsMin>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RedemptionInstructionsMin>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RedemptionInstructionsMin.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'country',
    'deliveryType',
    'language',
    'link',
  };
}

