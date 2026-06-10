//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DtoESimPurchase {
  /// Returns a new [DtoESimPurchase] instance.
  DtoESimPurchase({
    this.brand,
    this.confirmation,
    this.cost,
    this.costCurrency,
    this.costCurrencyDivisor,
    this.country,
    this.createdAt,
    this.dataGB,
    this.dataSpeeds = const [],
    this.dataUnlimited,
    this.durationDays,
    this.error,
    this.log = const [],
    this.notes,
    this.offerId,
    this.price,
    this.priceCurrency,
    this.priceCurrencyDivisor,
    this.priceType,
    this.productType,
    this.regions = const [],
    this.roaming = const [],
    this.shortNotes,
    this.smsNumber,
    this.smsUnlimited,
    this.status,
    this.subTypes = const [],
    this.transactionId,
    this.updatedAt,
    this.value,
    this.voiceMinutes,
    this.voiceUnlimited,
  });

  /// Brand of eSIM
  String? brand;

  /// 
  DtoESimConfirmation? confirmation;

  /// Cost of the eSIM to Partner
  num? cost;

  /// Currency of cost to eSIM Partner
  String? costCurrency;

  /// Divisor for display of cost
  num? costCurrencyDivisor;

  /// Destination country for eSIM offer (blank when eSIM offer is regional)
  String? country;

  /// Date/time transaction was created
  String? createdAt;

  /// GB of data included in eSIM (0 when data is unlimited)
  num? dataGB;

  List<DataSpeed>? dataSpeeds;

  /// Flag indicating whether data is unlimited on the eSIM
  bool? dataUnlimited;

  /// Duration of the eSIM offer in days
  num? durationDays;

  /// 
  DtoError? error;

  /// Trace log for fulfillment of transaction
  List<DtoTransactionLogItem>? log;

  /// Notes included about the eSIM offer
  String? notes;

  /// Catalog ID of the offer (used for purchases)
  String? offerId;

  /// Price to customer for eSIM (when using the zendit pricing module)
  num? price;

  /// Currency of price charged to customer for eSIM (when using the zendit pricing module)
  String? priceCurrency;

  /// Divisor for display of price
  num? priceCurrencyDivisor;

  /// 
  DtoESimPurchasePriceTypeEnum? priceType;

  /// 
  DtoESimPurchaseProductTypeEnum? productType;

  List<Regions>? regions;

  /// Roaming information for regional eSIM products (empty array for NO ROAM eSIM offers)
  List<DtoESimRoaming>? roaming;

  /// Short notes for eSIM offer
  String? shortNotes;

  /// Included SMS messages with eSIM (0 when unlimited or not included, check smsUnlimited flag)
  num? smsNumber;

  /// Flag whether SMS messaging is unlimited for offer
  bool? smsUnlimited;

  /// 
  DtoESimPurchaseStatusEnum? status;

  /// Subtypes for the eSIM offer
  List<String>? subTypes;

  /// Transaction Id provided by partner
  String? transactionId;

  /// Date/Time of last update to transaction
  String? updatedAt;

  /// 
  DtoPurchaseValues? value;

  /// Voice minutes included in eSIM offer (0 when unlimited or not included, check voiceUnlimited Flag)
  num? voiceMinutes;

  /// Flag whether voice minutes are unlimited for the offer
  bool? voiceUnlimited;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DtoESimPurchase &&
    other.brand == brand &&
    other.confirmation == confirmation &&
    other.cost == cost &&
    other.costCurrency == costCurrency &&
    other.costCurrencyDivisor == costCurrencyDivisor &&
    other.country == country &&
    other.createdAt == createdAt &&
    other.dataGB == dataGB &&
    _deepEquality.equals(other.dataSpeeds, dataSpeeds) &&
    other.dataUnlimited == dataUnlimited &&
    other.durationDays == durationDays &&
    other.error == error &&
    _deepEquality.equals(other.log, log) &&
    other.notes == notes &&
    other.offerId == offerId &&
    other.price == price &&
    other.priceCurrency == priceCurrency &&
    other.priceCurrencyDivisor == priceCurrencyDivisor &&
    other.priceType == priceType &&
    other.productType == productType &&
    _deepEquality.equals(other.regions, regions) &&
    _deepEquality.equals(other.roaming, roaming) &&
    other.shortNotes == shortNotes &&
    other.smsNumber == smsNumber &&
    other.smsUnlimited == smsUnlimited &&
    other.status == status &&
    _deepEquality.equals(other.subTypes, subTypes) &&
    other.transactionId == transactionId &&
    other.updatedAt == updatedAt &&
    other.value == value &&
    other.voiceMinutes == voiceMinutes &&
    other.voiceUnlimited == voiceUnlimited;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (brand == null ? 0 : brand!.hashCode) +
    (confirmation == null ? 0 : confirmation!.hashCode) +
    (cost == null ? 0 : cost!.hashCode) +
    (costCurrency == null ? 0 : costCurrency!.hashCode) +
    (costCurrencyDivisor == null ? 0 : costCurrencyDivisor!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (dataGB == null ? 0 : dataGB!.hashCode) +
    (dataSpeeds == null ? 0 : dataSpeeds!.hashCode) +
    (dataUnlimited == null ? 0 : dataUnlimited!.hashCode) +
    (durationDays == null ? 0 : durationDays!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (log == null ? 0 : log!.hashCode) +
    (notes == null ? 0 : notes!.hashCode) +
    (offerId == null ? 0 : offerId!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (priceCurrency == null ? 0 : priceCurrency!.hashCode) +
    (priceCurrencyDivisor == null ? 0 : priceCurrencyDivisor!.hashCode) +
    (priceType == null ? 0 : priceType!.hashCode) +
    (productType == null ? 0 : productType!.hashCode) +
    (regions == null ? 0 : regions!.hashCode) +
    (roaming == null ? 0 : roaming!.hashCode) +
    (shortNotes == null ? 0 : shortNotes!.hashCode) +
    (smsNumber == null ? 0 : smsNumber!.hashCode) +
    (smsUnlimited == null ? 0 : smsUnlimited!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (subTypes == null ? 0 : subTypes!.hashCode) +
    (transactionId == null ? 0 : transactionId!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (voiceMinutes == null ? 0 : voiceMinutes!.hashCode) +
    (voiceUnlimited == null ? 0 : voiceUnlimited!.hashCode);

  @override
  String toString() => 'DtoESimPurchase[brand=$brand, confirmation=$confirmation, cost=$cost, costCurrency=$costCurrency, costCurrencyDivisor=$costCurrencyDivisor, country=$country, createdAt=$createdAt, dataGB=$dataGB, dataSpeeds=$dataSpeeds, dataUnlimited=$dataUnlimited, durationDays=$durationDays, error=$error, log=$log, notes=$notes, offerId=$offerId, price=$price, priceCurrency=$priceCurrency, priceCurrencyDivisor=$priceCurrencyDivisor, priceType=$priceType, productType=$productType, regions=$regions, roaming=$roaming, shortNotes=$shortNotes, smsNumber=$smsNumber, smsUnlimited=$smsUnlimited, status=$status, subTypes=$subTypes, transactionId=$transactionId, updatedAt=$updatedAt, value=$value, voiceMinutes=$voiceMinutes, voiceUnlimited=$voiceUnlimited]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.brand != null) {
      json[r'brand'] = this.brand;
    } else {
      json[r'brand'] = null;
    }
    if (this.confirmation != null) {
      json[r'confirmation'] = this.confirmation;
    } else {
      json[r'confirmation'] = null;
    }
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
    if (this.costCurrency != null) {
      json[r'costCurrency'] = this.costCurrency;
    } else {
      json[r'costCurrency'] = null;
    }
    if (this.costCurrencyDivisor != null) {
      json[r'costCurrencyDivisor'] = this.costCurrencyDivisor;
    } else {
      json[r'costCurrencyDivisor'] = null;
    }
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
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.log != null) {
      json[r'log'] = this.log;
    } else {
      json[r'log'] = null;
    }
    if (this.notes != null) {
      json[r'notes'] = this.notes;
    } else {
      json[r'notes'] = null;
    }
    if (this.offerId != null) {
      json[r'offerId'] = this.offerId;
    } else {
      json[r'offerId'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.priceCurrency != null) {
      json[r'priceCurrency'] = this.priceCurrency;
    } else {
      json[r'priceCurrency'] = null;
    }
    if (this.priceCurrencyDivisor != null) {
      json[r'priceCurrencyDivisor'] = this.priceCurrencyDivisor;
    } else {
      json[r'priceCurrencyDivisor'] = null;
    }
    if (this.priceType != null) {
      json[r'priceType'] = this.priceType;
    } else {
      json[r'priceType'] = null;
    }
    if (this.productType != null) {
      json[r'productType'] = this.productType;
    } else {
      json[r'productType'] = null;
    }
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
    if (this.shortNotes != null) {
      json[r'shortNotes'] = this.shortNotes;
    } else {
      json[r'shortNotes'] = null;
    }
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
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.subTypes != null) {
      json[r'subTypes'] = this.subTypes;
    } else {
      json[r'subTypes'] = null;
    }
    if (this.transactionId != null) {
      json[r'transactionId'] = this.transactionId;
    } else {
      json[r'transactionId'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
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

  /// Returns a new [DtoESimPurchase] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DtoESimPurchase? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DtoESimPurchase[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DtoESimPurchase[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DtoESimPurchase(
        brand: mapValueOfType<String>(json, r'brand'),
        confirmation: DtoESimConfirmation.fromJson(json[r'confirmation']),
        cost: json[r'cost'] == null
            ? null
            : num.parse('${json[r'cost']}'),
        costCurrency: mapValueOfType<String>(json, r'costCurrency'),
        costCurrencyDivisor: json[r'costCurrencyDivisor'] == null
            ? null
            : num.parse('${json[r'costCurrencyDivisor']}'),
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
        error: DtoError.fromJson(json[r'error']),
        log: DtoTransactionLogItem.listFromJson(json[r'log']),
        notes: mapValueOfType<String>(json, r'notes'),
        offerId: mapValueOfType<String>(json, r'offerId'),
        price: json[r'price'] == null
            ? null
            : num.parse('${json[r'price']}'),
        priceCurrency: mapValueOfType<String>(json, r'priceCurrency'),
        priceCurrencyDivisor: json[r'priceCurrencyDivisor'] == null
            ? null
            : num.parse('${json[r'priceCurrencyDivisor']}'),
        priceType: DtoESimPurchasePriceTypeEnum.fromJson(json[r'priceType']),
        productType: DtoESimPurchaseProductTypeEnum.fromJson(json[r'productType']),
        regions: Regions.listFromJson(json[r'regions']),
        roaming: DtoESimRoaming.listFromJson(json[r'roaming']),
        shortNotes: mapValueOfType<String>(json, r'shortNotes'),
        smsNumber: json[r'smsNumber'] == null
            ? null
            : num.parse('${json[r'smsNumber']}'),
        smsUnlimited: mapValueOfType<bool>(json, r'smsUnlimited'),
        status: DtoESimPurchaseStatusEnum.fromJson(json[r'status']),
        subTypes: json[r'subTypes'] is Iterable
            ? (json[r'subTypes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        transactionId: mapValueOfType<String>(json, r'transactionId'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
        value: DtoPurchaseValues.fromJson(json[r'value']),
        voiceMinutes: json[r'voiceMinutes'] == null
            ? null
            : num.parse('${json[r'voiceMinutes']}'),
        voiceUnlimited: mapValueOfType<bool>(json, r'voiceUnlimited'),
      );
    }
    return null;
  }

  static List<DtoESimPurchase> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimPurchase>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimPurchase.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DtoESimPurchase> mapFromJson(dynamic json) {
    final map = <String, DtoESimPurchase>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DtoESimPurchase.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DtoESimPurchase-objects as value to a dart map
  static Map<String, List<DtoESimPurchase>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DtoESimPurchase>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DtoESimPurchase.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// 
class DtoESimPurchasePriceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DtoESimPurchasePriceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FIXED = DtoESimPurchasePriceTypeEnum._(r'FIXED');
  static const RANGE = DtoESimPurchasePriceTypeEnum._(r'RANGE');

  /// List of all possible values in this [enum][DtoESimPurchasePriceTypeEnum].
  static const values = <DtoESimPurchasePriceTypeEnum>[
    FIXED,
    RANGE,
  ];

  static DtoESimPurchasePriceTypeEnum? fromJson(dynamic value) => DtoESimPurchasePriceTypeEnumTypeTransformer().decode(value);

  static List<DtoESimPurchasePriceTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimPurchasePriceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimPurchasePriceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DtoESimPurchasePriceTypeEnum] to String,
/// and [decode] dynamic data back to [DtoESimPurchasePriceTypeEnum].
class DtoESimPurchasePriceTypeEnumTypeTransformer {
  factory DtoESimPurchasePriceTypeEnumTypeTransformer() => _instance ??= const DtoESimPurchasePriceTypeEnumTypeTransformer._();

  const DtoESimPurchasePriceTypeEnumTypeTransformer._();

  String encode(DtoESimPurchasePriceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DtoESimPurchasePriceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DtoESimPurchasePriceTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FIXED': return DtoESimPurchasePriceTypeEnum.FIXED;
        case r'RANGE': return DtoESimPurchasePriceTypeEnum.RANGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DtoESimPurchasePriceTypeEnumTypeTransformer] instance.
  static DtoESimPurchasePriceTypeEnumTypeTransformer? _instance;
}


/// 
class DtoESimPurchaseProductTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DtoESimPurchaseProductTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TOPUP = DtoESimPurchaseProductTypeEnum._(r'TOPUP');
  static const VOUCHER = DtoESimPurchaseProductTypeEnum._(r'VOUCHER');
  static const ESIM = DtoESimPurchaseProductTypeEnum._(r'ESIM');
  static const RECHARGE_SANDBOX = DtoESimPurchaseProductTypeEnum._(r'RECHARGE_SANDBOX');
  static const RECHARGE_WITH_CREDIT_CARD = DtoESimPurchaseProductTypeEnum._(r'RECHARGE_WITH_CREDIT_CARD');

  /// List of all possible values in this [enum][DtoESimPurchaseProductTypeEnum].
  static const values = <DtoESimPurchaseProductTypeEnum>[
    TOPUP,
    VOUCHER,
    ESIM,
    RECHARGE_SANDBOX,
    RECHARGE_WITH_CREDIT_CARD,
  ];

  static DtoESimPurchaseProductTypeEnum? fromJson(dynamic value) => DtoESimPurchaseProductTypeEnumTypeTransformer().decode(value);

  static List<DtoESimPurchaseProductTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimPurchaseProductTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimPurchaseProductTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DtoESimPurchaseProductTypeEnum] to String,
/// and [decode] dynamic data back to [DtoESimPurchaseProductTypeEnum].
class DtoESimPurchaseProductTypeEnumTypeTransformer {
  factory DtoESimPurchaseProductTypeEnumTypeTransformer() => _instance ??= const DtoESimPurchaseProductTypeEnumTypeTransformer._();

  const DtoESimPurchaseProductTypeEnumTypeTransformer._();

  String encode(DtoESimPurchaseProductTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DtoESimPurchaseProductTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DtoESimPurchaseProductTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TOPUP': return DtoESimPurchaseProductTypeEnum.TOPUP;
        case r'VOUCHER': return DtoESimPurchaseProductTypeEnum.VOUCHER;
        case r'ESIM': return DtoESimPurchaseProductTypeEnum.ESIM;
        case r'RECHARGE_SANDBOX': return DtoESimPurchaseProductTypeEnum.RECHARGE_SANDBOX;
        case r'RECHARGE_WITH_CREDIT_CARD': return DtoESimPurchaseProductTypeEnum.RECHARGE_WITH_CREDIT_CARD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DtoESimPurchaseProductTypeEnumTypeTransformer] instance.
  static DtoESimPurchaseProductTypeEnumTypeTransformer? _instance;
}


/// 
class DtoESimPurchaseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DtoESimPurchaseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DONE = DtoESimPurchaseStatusEnum._(r'DONE');
  static const FAILED = DtoESimPurchaseStatusEnum._(r'FAILED');
  static const PENDING = DtoESimPurchaseStatusEnum._(r'PENDING');
  static const ACCEPTED = DtoESimPurchaseStatusEnum._(r'ACCEPTED');
  static const AUTHORIZED = DtoESimPurchaseStatusEnum._(r'AUTHORIZED');
  static const IN_PROGRESS = DtoESimPurchaseStatusEnum._(r'IN_PROGRESS');

  /// List of all possible values in this [enum][DtoESimPurchaseStatusEnum].
  static const values = <DtoESimPurchaseStatusEnum>[
    DONE,
    FAILED,
    PENDING,
    ACCEPTED,
    AUTHORIZED,
    IN_PROGRESS,
  ];

  static DtoESimPurchaseStatusEnum? fromJson(dynamic value) => DtoESimPurchaseStatusEnumTypeTransformer().decode(value);

  static List<DtoESimPurchaseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimPurchaseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimPurchaseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DtoESimPurchaseStatusEnum] to String,
/// and [decode] dynamic data back to [DtoESimPurchaseStatusEnum].
class DtoESimPurchaseStatusEnumTypeTransformer {
  factory DtoESimPurchaseStatusEnumTypeTransformer() => _instance ??= const DtoESimPurchaseStatusEnumTypeTransformer._();

  const DtoESimPurchaseStatusEnumTypeTransformer._();

  String encode(DtoESimPurchaseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DtoESimPurchaseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DtoESimPurchaseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DONE': return DtoESimPurchaseStatusEnum.DONE;
        case r'FAILED': return DtoESimPurchaseStatusEnum.FAILED;
        case r'PENDING': return DtoESimPurchaseStatusEnum.PENDING;
        case r'ACCEPTED': return DtoESimPurchaseStatusEnum.ACCEPTED;
        case r'AUTHORIZED': return DtoESimPurchaseStatusEnum.AUTHORIZED;
        case r'IN_PROGRESS': return DtoESimPurchaseStatusEnum.IN_PROGRESS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DtoESimPurchaseStatusEnumTypeTransformer] instance.
  static DtoESimPurchaseStatusEnumTypeTransformer? _instance;
}


