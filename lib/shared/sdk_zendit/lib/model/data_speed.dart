//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Data speeds available for eSIM
class DataSpeed {
  /// Instantiate a new enum with the provided [value].
  const DataSpeed._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n2g = DataSpeed._(r'2G');
  static const n3g = DataSpeed._(r'3G');
  static const n4g = DataSpeed._(r'4G');
  static const n5g = DataSpeed._(r'5G');

  /// List of all possible values in this [enum][DataSpeed].
  static const values = <DataSpeed>[
    n2g,
    n3g,
    n4g,
    n5g,
  ];

  static DataSpeed? fromJson(dynamic value) => DataSpeedTypeTransformer().decode(value);

  static List<DataSpeed> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DataSpeed>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataSpeed.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DataSpeed] to String,
/// and [decode] dynamic data back to [DataSpeed].
class DataSpeedTypeTransformer {
  factory DataSpeedTypeTransformer() => _instance ??= const DataSpeedTypeTransformer._();

  const DataSpeedTypeTransformer._();

  String encode(DataSpeed data) => data.value;

  /// Decodes a [dynamic value][data] to a DataSpeed.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DataSpeed? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'2G': return DataSpeed.n2g;
        case r'3G': return DataSpeed.n3g;
        case r'4G': return DataSpeed.n4g;
        case r'5G': return DataSpeed.n5g;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DataSpeedTypeTransformer] instance.
  static DataSpeedTypeTransformer? _instance;
}

