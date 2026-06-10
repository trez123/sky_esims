//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DtoESimRoaming {
  /// Returns a new [DtoESimRoaming] instance.
  DtoESimRoaming({
    required this.country,
    this.dataSpeeds = const [],
  });

  /// 2 letter ISO country code
  String country;

  /// Available data speeds for destination
  List<DtoESimRoamingDataSpeedsEnum>? dataSpeeds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DtoESimRoaming &&
    other.country == country &&
    _deepEquality.equals(other.dataSpeeds, dataSpeeds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (country.hashCode) +
    (dataSpeeds == null ? 0 : dataSpeeds!.hashCode);

  @override
  String toString() => 'DtoESimRoaming[country=$country, dataSpeeds=$dataSpeeds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'country'] = this.country;
    if (this.dataSpeeds != null) {
      json[r'dataSpeeds'] = this.dataSpeeds;
    } else {
      json[r'dataSpeeds'] = null;
    }
    return json;
  }

  /// Returns a new [DtoESimRoaming] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DtoESimRoaming? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DtoESimRoaming[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DtoESimRoaming[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DtoESimRoaming(
        country: mapValueOfType<String>(json, r'country')!,
        dataSpeeds: DtoESimRoamingDataSpeedsEnum.listFromJson(json[r'dataSpeeds']),
      );
    }
    return null;
  }

  static List<DtoESimRoaming> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimRoaming>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimRoaming.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DtoESimRoaming> mapFromJson(dynamic json) {
    final map = <String, DtoESimRoaming>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DtoESimRoaming.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DtoESimRoaming-objects as value to a dart map
  static Map<String, List<DtoESimRoaming>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DtoESimRoaming>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DtoESimRoaming.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'country',
  };
}


class DtoESimRoamingDataSpeedsEnum {
  /// Instantiate a new enum with the provided [value].
  const DtoESimRoamingDataSpeedsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n2g = DtoESimRoamingDataSpeedsEnum._(r'2G');
  static const n3g = DtoESimRoamingDataSpeedsEnum._(r'3G');
  static const n4g = DtoESimRoamingDataSpeedsEnum._(r'4G');
  static const n5g = DtoESimRoamingDataSpeedsEnum._(r'5G');

  /// List of all possible values in this [enum][DtoESimRoamingDataSpeedsEnum].
  static const values = <DtoESimRoamingDataSpeedsEnum>[
    n2g,
    n3g,
    n4g,
    n5g,
  ];

  static DtoESimRoamingDataSpeedsEnum? fromJson(dynamic value) => DtoESimRoamingDataSpeedsEnumTypeTransformer().decode(value);

  static List<DtoESimRoamingDataSpeedsEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimRoamingDataSpeedsEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimRoamingDataSpeedsEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DtoESimRoamingDataSpeedsEnum] to String,
/// and [decode] dynamic data back to [DtoESimRoamingDataSpeedsEnum].
class DtoESimRoamingDataSpeedsEnumTypeTransformer {
  factory DtoESimRoamingDataSpeedsEnumTypeTransformer() => _instance ??= const DtoESimRoamingDataSpeedsEnumTypeTransformer._();

  const DtoESimRoamingDataSpeedsEnumTypeTransformer._();

  String encode(DtoESimRoamingDataSpeedsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DtoESimRoamingDataSpeedsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DtoESimRoamingDataSpeedsEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'2G': return DtoESimRoamingDataSpeedsEnum.n2g;
        case r'3G': return DtoESimRoamingDataSpeedsEnum.n3g;
        case r'4G': return DtoESimRoamingDataSpeedsEnum.n4g;
        case r'5G': return DtoESimRoamingDataSpeedsEnum.n5g;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DtoESimRoamingDataSpeedsEnumTypeTransformer] instance.
  static DtoESimRoamingDataSpeedsEnumTypeTransformer? _instance;
}


