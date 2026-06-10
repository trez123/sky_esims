//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Regions for the eSIM
class Regions {
  /// Instantiate a new enum with the provided [value].
  const Regions._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const global = Regions._(r'Global');
  static const africa = Regions._(r'Africa');
  static const asia = Regions._(r'Asia');
  static const caribbean = Regions._(r'Caribbean');
  static const centralAmerica = Regions._(r'Central America');
  static const easternEurope = Regions._(r'Eastern Europe');
  static const westernEurope = Regions._(r'Western Europe');
  static const northAmerica = Regions._(r'North America');
  static const oceania = Regions._(r'Oceania');
  static const southAmerica = Regions._(r'South America');
  static const southAsia = Regions._(r'South Asia');
  static const southeastAsia = Regions._(r'Southeast Asia');
  static const middleEastAndNorthAfrica = Regions._(r'Middle East and North Africa');

  /// List of all possible values in this [enum][Regions].
  static const values = <Regions>[
    global,
    africa,
    asia,
    caribbean,
    centralAmerica,
    easternEurope,
    westernEurope,
    northAmerica,
    oceania,
    southAmerica,
    southAsia,
    southeastAsia,
    middleEastAndNorthAfrica,
  ];

  static Regions? fromJson(dynamic value) => RegionsTypeTransformer().decode(value);

  static List<Regions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Regions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Regions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Regions] to String,
/// and [decode] dynamic data back to [Regions].
class RegionsTypeTransformer {
  factory RegionsTypeTransformer() => _instance ??= const RegionsTypeTransformer._();

  const RegionsTypeTransformer._();

  String encode(Regions data) => data.value;

  /// Decodes a [dynamic value][data] to a Regions.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Regions? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Global': return Regions.global;
        case r'Africa': return Regions.africa;
        case r'Asia': return Regions.asia;
        case r'Caribbean': return Regions.caribbean;
        case r'Central America': return Regions.centralAmerica;
        case r'Eastern Europe': return Regions.easternEurope;
        case r'Western Europe': return Regions.westernEurope;
        case r'North America': return Regions.northAmerica;
        case r'Oceania': return Regions.oceania;
        case r'South America': return Regions.southAmerica;
        case r'South Asia': return Regions.southAsia;
        case r'Southeast Asia': return Regions.southeastAsia;
        case r'Middle East and North Africa': return Regions.middleEastAndNorthAfrica;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RegionsTypeTransformer] instance.
  static RegionsTypeTransformer? _instance;
}

