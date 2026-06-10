//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DtoPurchaseValues {
  /// Returns a new [DtoPurchaseValues] instance.
  DtoPurchaseValues({
    required this.type,
    required this.value,
  });

  /// Type of pricing to use
  DtoPurchaseValuesTypeEnum type;

  /// Value to send
  num value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DtoPurchaseValues &&
    other.type == type &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'DtoPurchaseValues[type=$type, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [DtoPurchaseValues] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DtoPurchaseValues? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DtoPurchaseValues[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DtoPurchaseValues[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DtoPurchaseValues(
        type: DtoPurchaseValuesTypeEnum.fromJson(json[r'type'])!,
        value: num.parse('${json[r'value']}'),
      );
    }
    return null;
  }

  static List<DtoPurchaseValues> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoPurchaseValues>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoPurchaseValues.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DtoPurchaseValues> mapFromJson(dynamic json) {
    final map = <String, DtoPurchaseValues>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DtoPurchaseValues.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DtoPurchaseValues-objects as value to a dart map
  static Map<String, List<DtoPurchaseValues>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DtoPurchaseValues>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DtoPurchaseValues.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'value',
  };
}

/// Type of pricing to use
class DtoPurchaseValuesTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DtoPurchaseValuesTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRICE = DtoPurchaseValuesTypeEnum._(r'PRICE');
  static const ZEND = DtoPurchaseValuesTypeEnum._(r'ZEND');

  /// List of all possible values in this [enum][DtoPurchaseValuesTypeEnum].
  static const values = <DtoPurchaseValuesTypeEnum>[
    PRICE,
    ZEND,
  ];

  static DtoPurchaseValuesTypeEnum? fromJson(dynamic value) => DtoPurchaseValuesTypeEnumTypeTransformer().decode(value);

  static List<DtoPurchaseValuesTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoPurchaseValuesTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoPurchaseValuesTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DtoPurchaseValuesTypeEnum] to String,
/// and [decode] dynamic data back to [DtoPurchaseValuesTypeEnum].
class DtoPurchaseValuesTypeEnumTypeTransformer {
  factory DtoPurchaseValuesTypeEnumTypeTransformer() => _instance ??= const DtoPurchaseValuesTypeEnumTypeTransformer._();

  const DtoPurchaseValuesTypeEnumTypeTransformer._();

  String encode(DtoPurchaseValuesTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DtoPurchaseValuesTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DtoPurchaseValuesTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PRICE': return DtoPurchaseValuesTypeEnum.PRICE;
        case r'ZEND': return DtoPurchaseValuesTypeEnum.ZEND;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DtoPurchaseValuesTypeEnumTypeTransformer] instance.
  static DtoPurchaseValuesTypeEnumTypeTransformer? _instance;
}


