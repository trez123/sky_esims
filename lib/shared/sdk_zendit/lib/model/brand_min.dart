//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BrandMin {
  /// Returns a new [BrandMin] instance.
  BrandMin({
    required this.brand,
    required this.brandName,
  });

  /// Short brand name as primary ID
  String brand;

  /// Full brand name for display
  String brandName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BrandMin &&
    other.brand == brand &&
    other.brandName == brandName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (brand.hashCode) +
    (brandName.hashCode);

  @override
  String toString() => 'BrandMin[brand=$brand, brandName=$brandName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'brand'] = this.brand;
      json[r'brandName'] = this.brandName;
    return json;
  }

  /// Returns a new [BrandMin] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BrandMin? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BrandMin[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BrandMin[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BrandMin(
        brand: mapValueOfType<String>(json, r'brand')!,
        brandName: mapValueOfType<String>(json, r'brandName')!,
      );
    }
    return null;
  }

  static List<BrandMin> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BrandMin>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BrandMin.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BrandMin> mapFromJson(dynamic json) {
    final map = <String, BrandMin>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BrandMin.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BrandMin-objects as value to a dart map
  static Map<String, List<BrandMin>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BrandMin>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BrandMin.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'brand',
    'brandName',
  };
}

