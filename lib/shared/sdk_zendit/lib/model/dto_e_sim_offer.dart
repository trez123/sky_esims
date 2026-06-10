//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DtoESimOffer {
  /// Returns a new [DtoESimOffer] instance.
  DtoESimOffer({
    this.brand,
    required this.cost,
    this.country,
    this.createdAt,
    this.dataGB,
    this.dataSpeeds = const [],
    this.dataUnlimited,
    this.durationDays,
    this.enabled,
    required this.notes,
    this.offerId,
    required this.price,
    this.priceType,
    required this.productType,
    this.regions = const [],
    this.roaming = const [],
    required this.shortNotes,
    this.smsNumber,
    this.smsUnlimited,
    this.subTypes = const [],
    this.updatedAt,
    this.voiceMinutes,
    this.voiceUnlimited,
  });

  /// Brand of eSIM
  String? brand;

  /// 
  DtoCost cost;

  /// Destination country for eSIM (blank for regional eSIM products)
  String? country;

  /// Date/time offer was added to the catalog
  String? createdAt;

  /// Amount of data included in eSIM offer (0 when data is unlimited)
  num? dataGB;

  List<DataSpeed>? dataSpeeds;

  /// Flag for eSIMs with unlimited data
  bool? dataUnlimited;

  /// Duration of the eSIM offer in days
  num? durationDays;

  /// Flag for whether the offer is enabled
  bool? enabled;

  /// Notes included about the eSIM offer
  String notes;

  /// Catalog ID of the offer (used for purchases)
  String? offerId;

  /// 
  DtoPrice price;

  /// 
  DtoESimOfferPriceTypeEnum? priceType;

  /// 
  DtoESimOfferProductTypeEnum productType;

  /// Regions for the eSIM
  List<DtoESimOfferRegionsEnum>? regions;

  /// Roaming information for regional eSIM products (empty array for NO ROAM eSIM offers)
  List<DtoESimRoaming>? roaming;

  /// Short notes for eSIM offer
  String shortNotes;

  /// Included SMS messages with eSIM (0 when unlimited or not included, check smsUnlimited flag)
  num? smsNumber;

  /// Flag whether SMS messaging is unlimited for offer
  bool? smsUnlimited;

  /// Subtypes for the eSIM offer
  List<String> subTypes;

  /// Last date/time the offer was updated
  String? updatedAt;

  /// Voice minutes included in eSIM offer (0 when unlimited or not included, check voiceUnlimited Flag)
  num? voiceMinutes;

  /// Flag whether voice minutes are unlimited for the offer
  bool? voiceUnlimited;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DtoESimOffer &&
    other.brand == brand &&
    other.cost == cost &&
    other.country == country &&
    other.createdAt == createdAt &&
    other.dataGB == dataGB &&
    _deepEquality.equals(other.dataSpeeds, dataSpeeds) &&
    other.dataUnlimited == dataUnlimited &&
    other.durationDays == durationDays &&
    other.enabled == enabled &&
    other.notes == notes &&
    other.offerId == offerId &&
    other.price == price &&
    other.priceType == priceType &&
    other.productType == productType &&
    _deepEquality.equals(other.regions, regions) &&
    _deepEquality.equals(other.roaming, roaming) &&
    other.shortNotes == shortNotes &&
    other.smsNumber == smsNumber &&
    other.smsUnlimited == smsUnlimited &&
    _deepEquality.equals(other.subTypes, subTypes) &&
    other.updatedAt == updatedAt &&
    other.voiceMinutes == voiceMinutes &&
    other.voiceUnlimited == voiceUnlimited;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (brand == null ? 0 : brand!.hashCode) +
    (cost.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (dataGB == null ? 0 : dataGB!.hashCode) +
    (dataSpeeds == null ? 0 : dataSpeeds!.hashCode) +
    (dataUnlimited == null ? 0 : dataUnlimited!.hashCode) +
    (durationDays == null ? 0 : durationDays!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (notes.hashCode) +
    (offerId == null ? 0 : offerId!.hashCode) +
    (price.hashCode) +
    (priceType == null ? 0 : priceType!.hashCode) +
    (productType.hashCode) +
    (regions == null ? 0 : regions!.hashCode) +
    (roaming == null ? 0 : roaming!.hashCode) +
    (shortNotes.hashCode) +
    (smsNumber == null ? 0 : smsNumber!.hashCode) +
    (smsUnlimited == null ? 0 : smsUnlimited!.hashCode) +
    (subTypes.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (voiceMinutes == null ? 0 : voiceMinutes!.hashCode) +
    (voiceUnlimited == null ? 0 : voiceUnlimited!.hashCode);

  @override
  String toString() => 'DtoESimOffer[brand=$brand, cost=$cost, country=$country, createdAt=$createdAt, dataGB=$dataGB, dataSpeeds=$dataSpeeds, dataUnlimited=$dataUnlimited, durationDays=$durationDays, enabled=$enabled, notes=$notes, offerId=$offerId, price=$price, priceType=$priceType, productType=$productType, regions=$regions, roaming=$roaming, shortNotes=$shortNotes, smsNumber=$smsNumber, smsUnlimited=$smsUnlimited, subTypes=$subTypes, updatedAt=$updatedAt, voiceMinutes=$voiceMinutes, voiceUnlimited=$voiceUnlimited]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.brand != null) {
      json[r'brand'] = this.brand;
    } else {
      json[r'brand'] = null;
    }
      json[r'cost'] = this.cost;
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.dataGB != null) {
      json[r'dataGB'] = this.dataGB;
    } else {
      json[r'dataGB'] = null;
    }
    if (this.dataSpeeds != null) {
      json[r'dataSpeeds'] = this.dataSpeeds;
    } else {
      json[r'dataSpeeds'] = null;
    }
    if (this.dataUnlimited != null) {
      json[r'dataUnlimited'] = this.dataUnlimited;
    } else {
      json[r'dataUnlimited'] = null;
    }
    if (this.durationDays != null) {
      json[r'durationDays'] = this.durationDays;
    } else {
      json[r'durationDays'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
      json[r'notes'] = this.notes;
    if (this.offerId != null) {
      json[r'offerId'] = this.offerId;
    } else {
      json[r'offerId'] = null;
    }
      json[r'price'] = this.price;
    if (this.priceType != null) {
      json[r'priceType'] = this.priceType;
    } else {
      json[r'priceType'] = null;
    }
      json[r'productType'] = this.productType;
    if (this.regions != null) {
      json[r'regions'] = this.regions;
    } else {
      json[r'regions'] = null;
    }
    if (this.roaming != null) {
      json[r'roaming'] = this.roaming;
    } else {
      json[r'roaming'] = null;
    }
      json[r'shortNotes'] = this.shortNotes;
    if (this.smsNumber != null) {
      json[r'smsNumber'] = this.smsNumber;
    } else {
      json[r'smsNumber'] = null;
    }
    if (this.smsUnlimited != null) {
      json[r'smsUnlimited'] = this.smsUnlimited;
    } else {
      json[r'smsUnlimited'] = null;
    }
      json[r'subTypes'] = this.subTypes;
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.voiceMinutes != null) {
      json[r'voiceMinutes'] = this.voiceMinutes;
    } else {
      json[r'voiceMinutes'] = null;
    }
    if (this.voiceUnlimited != null) {
      json[r'voiceUnlimited'] = this.voiceUnlimited;
    } else {
      json[r'voiceUnlimited'] = null;
    }
    return json;
  }

  /// Returns a new [DtoESimOffer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DtoESimOffer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DtoESimOffer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DtoESimOffer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DtoESimOffer(
        brand: mapValueOfType<String>(json, r'brand'),
        cost: DtoCost.fromJson(json[r'cost'])!,
        country: mapValueOfType<String>(json, r'country'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        dataGB: json[r'dataGB'] == null
            ? null
            : num.parse('${json[r'dataGB']}'),
        dataSpeeds: DataSpeed.listFromJson(json[r'dataSpeeds']),
        dataUnlimited: mapValueOfType<bool>(json, r'dataUnlimited'),
        durationDays: json[r'durationDays'] == null
            ? null
            : num.parse('${json[r'durationDays']}'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        notes: mapValueOfType<String>(json, r'notes')!,
        offerId: mapValueOfType<String>(json, r'offerId'),
        price: DtoPrice.fromJson(json[r'price'])!,
        priceType: DtoESimOfferPriceTypeEnum.fromJson(json[r'priceType']),
        productType: DtoESimOfferProductTypeEnum.fromJson(json[r'productType'])!,
        regions: DtoESimOfferRegionsEnum.listFromJson(json[r'regions']),
        roaming: DtoESimRoaming.listFromJson(json[r'roaming']),
        shortNotes: mapValueOfType<String>(json, r'shortNotes')!,
        smsNumber: json[r'smsNumber'] == null
            ? null
            : num.parse('${json[r'smsNumber']}'),
        smsUnlimited: mapValueOfType<bool>(json, r'smsUnlimited'),
        subTypes: json[r'subTypes'] is Iterable
            ? (json[r'subTypes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
        voiceMinutes: json[r'voiceMinutes'] == null
            ? null
            : num.parse('${json[r'voiceMinutes']}'),
        voiceUnlimited: mapValueOfType<bool>(json, r'voiceUnlimited'),
      );
    }
    return null;
  }

  static List<DtoESimOffer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimOffer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimOffer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DtoESimOffer> mapFromJson(dynamic json) {
    final map = <String, DtoESimOffer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DtoESimOffer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DtoESimOffer-objects as value to a dart map
  static Map<String, List<DtoESimOffer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DtoESimOffer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DtoESimOffer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'cost',
    'notes',
    'price',
    'productType',
    'shortNotes',
    'subTypes',
  };
}

/// 
class DtoESimOfferPriceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DtoESimOfferPriceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FIXED = DtoESimOfferPriceTypeEnum._(r'FIXED');
  static const RANGE = DtoESimOfferPriceTypeEnum._(r'RANGE');

  /// List of all possible values in this [enum][DtoESimOfferPriceTypeEnum].
  static const values = <DtoESimOfferPriceTypeEnum>[
    FIXED,
    RANGE,
  ];

  static DtoESimOfferPriceTypeEnum? fromJson(dynamic value) => DtoESimOfferPriceTypeEnumTypeTransformer().decode(value);

  static List<DtoESimOfferPriceTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimOfferPriceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimOfferPriceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DtoESimOfferPriceTypeEnum] to String,
/// and [decode] dynamic data back to [DtoESimOfferPriceTypeEnum].
class DtoESimOfferPriceTypeEnumTypeTransformer {
  factory DtoESimOfferPriceTypeEnumTypeTransformer() => _instance ??= const DtoESimOfferPriceTypeEnumTypeTransformer._();

  const DtoESimOfferPriceTypeEnumTypeTransformer._();

  String encode(DtoESimOfferPriceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DtoESimOfferPriceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DtoESimOfferPriceTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FIXED': return DtoESimOfferPriceTypeEnum.FIXED;
        case r'RANGE': return DtoESimOfferPriceTypeEnum.RANGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DtoESimOfferPriceTypeEnumTypeTransformer] instance.
  static DtoESimOfferPriceTypeEnumTypeTransformer? _instance;
}


/// 
class DtoESimOfferProductTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DtoESimOfferProductTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TOPUP = DtoESimOfferProductTypeEnum._(r'TOPUP');
  static const VOUCHER = DtoESimOfferProductTypeEnum._(r'VOUCHER');
  static const ESIM = DtoESimOfferProductTypeEnum._(r'ESIM');
  static const RECHARGE_SANDBOX = DtoESimOfferProductTypeEnum._(r'RECHARGE_SANDBOX');
  static const RECHARGE_WITH_CREDIT_CARD = DtoESimOfferProductTypeEnum._(r'RECHARGE_WITH_CREDIT_CARD');

  /// List of all possible values in this [enum][DtoESimOfferProductTypeEnum].
  static const values = <DtoESimOfferProductTypeEnum>[
    TOPUP,
    VOUCHER,
    ESIM,
    RECHARGE_SANDBOX,
    RECHARGE_WITH_CREDIT_CARD,
  ];

  static DtoESimOfferProductTypeEnum? fromJson(dynamic value) => DtoESimOfferProductTypeEnumTypeTransformer().decode(value);

  static List<DtoESimOfferProductTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimOfferProductTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimOfferProductTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DtoESimOfferProductTypeEnum] to String,
/// and [decode] dynamic data back to [DtoESimOfferProductTypeEnum].
class DtoESimOfferProductTypeEnumTypeTransformer {
  factory DtoESimOfferProductTypeEnumTypeTransformer() => _instance ??= const DtoESimOfferProductTypeEnumTypeTransformer._();

  const DtoESimOfferProductTypeEnumTypeTransformer._();

  String encode(DtoESimOfferProductTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DtoESimOfferProductTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DtoESimOfferProductTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TOPUP': return DtoESimOfferProductTypeEnum.TOPUP;
        case r'VOUCHER': return DtoESimOfferProductTypeEnum.VOUCHER;
        case r'ESIM': return DtoESimOfferProductTypeEnum.ESIM;
        case r'RECHARGE_SANDBOX': return DtoESimOfferProductTypeEnum.RECHARGE_SANDBOX;
        case r'RECHARGE_WITH_CREDIT_CARD': return DtoESimOfferProductTypeEnum.RECHARGE_WITH_CREDIT_CARD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DtoESimOfferProductTypeEnumTypeTransformer] instance.
  static DtoESimOfferProductTypeEnumTypeTransformer? _instance;
}



class DtoESimOfferRegionsEnum {
  /// Instantiate a new enum with the provided [value].
  const DtoESimOfferRegionsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const global = DtoESimOfferRegionsEnum._(r'Global');
  static const africa = DtoESimOfferRegionsEnum._(r'Africa');
  static const asia = DtoESimOfferRegionsEnum._(r'Asia');
  static const caribbean = DtoESimOfferRegionsEnum._(r'Caribbean');
  static const centralAmerica = DtoESimOfferRegionsEnum._(r'Central America');
  static const easternEurope = DtoESimOfferRegionsEnum._(r'Eastern Europe');
  static const westernEurope = DtoESimOfferRegionsEnum._(r'Western Europe');
  static const northAmerica = DtoESimOfferRegionsEnum._(r'North America');
  static const oceania = DtoESimOfferRegionsEnum._(r'Oceania');
  static const southAmerica = DtoESimOfferRegionsEnum._(r'South America');
  static const southAsia = DtoESimOfferRegionsEnum._(r'South Asia');
  static const southeastAsia = DtoESimOfferRegionsEnum._(r'Southeast Asia');
  static const middleEastAndNorthAfrica = DtoESimOfferRegionsEnum._(r'Middle East and North Africa');

  /// List of all possible values in this [enum][DtoESimOfferRegionsEnum].
  static const values = <DtoESimOfferRegionsEnum>[
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

  static DtoESimOfferRegionsEnum? fromJson(dynamic value) => DtoESimOfferRegionsEnumTypeTransformer().decode(value);

  static List<DtoESimOfferRegionsEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimOfferRegionsEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimOfferRegionsEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DtoESimOfferRegionsEnum] to String,
/// and [decode] dynamic data back to [DtoESimOfferRegionsEnum].
class DtoESimOfferRegionsEnumTypeTransformer {
  factory DtoESimOfferRegionsEnumTypeTransformer() => _instance ??= const DtoESimOfferRegionsEnumTypeTransformer._();

  const DtoESimOfferRegionsEnumTypeTransformer._();

  String encode(DtoESimOfferRegionsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DtoESimOfferRegionsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DtoESimOfferRegionsEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Global': return DtoESimOfferRegionsEnum.global;
        case r'Africa': return DtoESimOfferRegionsEnum.africa;
        case r'Asia': return DtoESimOfferRegionsEnum.asia;
        case r'Caribbean': return DtoESimOfferRegionsEnum.caribbean;
        case r'Central America': return DtoESimOfferRegionsEnum.centralAmerica;
        case r'Eastern Europe': return DtoESimOfferRegionsEnum.easternEurope;
        case r'Western Europe': return DtoESimOfferRegionsEnum.westernEurope;
        case r'North America': return DtoESimOfferRegionsEnum.northAmerica;
        case r'Oceania': return DtoESimOfferRegionsEnum.oceania;
        case r'South America': return DtoESimOfferRegionsEnum.southAmerica;
        case r'South Asia': return DtoESimOfferRegionsEnum.southAsia;
        case r'Southeast Asia': return DtoESimOfferRegionsEnum.southeastAsia;
        case r'Middle East and North Africa': return DtoESimOfferRegionsEnum.middleEastAndNorthAfrica;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DtoESimOfferRegionsEnumTypeTransformer] instance.
  static DtoESimOfferRegionsEnumTypeTransformer? _instance;
}


