//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DtoESimRefundStatus {
  /// Returns a new [DtoESimRefundStatus] instance.
  DtoESimRefundStatus({
    required this.amount,
    required this.createdAt,
    required this.currency,
    required this.error,
    this.log = const [],
    required this.productType,
    required this.refundedTransactionId,
    required this.status,
    required this.type,
    required this.updatedAt,
  });

  /// Transaction amount to refund to wallet
  num amount;

  /// Datetime that the refund request was created
  String createdAt;

  /// 3 letter ISO code for currency of transaction
  String currency;

  /// 
  DtoError error;

  /// Log of actions during refund process
  List<DtoTransactionLogItem> log;

  /// 
  DtoESimRefundStatusProductTypeEnum productType;

  /// Reference ID for transaction for refund
  String refundedTransactionId;

  /// 
  DtoESimRefundStatusStatusEnum status;

  /// 
  DtoESimRefundStatusTypeEnum type;

  /// Date transaction was last updated
  String updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DtoESimRefundStatus &&
    other.amount == amount &&
    other.createdAt == createdAt &&
    other.currency == currency &&
    other.error == error &&
    _deepEquality.equals(other.log, log) &&
    other.productType == productType &&
    other.refundedTransactionId == refundedTransactionId &&
    other.status == status &&
    other.type == type &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount.hashCode) +
    (createdAt.hashCode) +
    (currency.hashCode) +
    (error.hashCode) +
    (log.hashCode) +
    (productType.hashCode) +
    (refundedTransactionId.hashCode) +
    (status.hashCode) +
    (type.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DtoESimRefundStatus[amount=$amount, createdAt=$createdAt, currency=$currency, error=$error, log=$log, productType=$productType, refundedTransactionId=$refundedTransactionId, status=$status, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'amount'] = this.amount;
      json[r'createdAt'] = this.createdAt;
      json[r'currency'] = this.currency;
      json[r'error'] = this.error;
      json[r'log'] = this.log;
      json[r'productType'] = this.productType;
      json[r'refundedTransactionId'] = this.refundedTransactionId;
      json[r'status'] = this.status;
      json[r'type'] = this.type;
      json[r'updatedAt'] = this.updatedAt;
    return json;
  }

  /// Returns a new [DtoESimRefundStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DtoESimRefundStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DtoESimRefundStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DtoESimRefundStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DtoESimRefundStatus(
        amount: num.parse('${json[r'amount']}'),
        createdAt: mapValueOfType<String>(json, r'createdAt')!,
        currency: mapValueOfType<String>(json, r'currency')!,
        error: DtoError.fromJson(json[r'error'])!,
        log: DtoTransactionLogItem.listFromJson(json[r'log']),
        productType: DtoESimRefundStatusProductTypeEnum.fromJson(json[r'productType'])!,
        refundedTransactionId: mapValueOfType<String>(json, r'refundedTransactionId')!,
        status: DtoESimRefundStatusStatusEnum.fromJson(json[r'status'])!,
        type: DtoESimRefundStatusTypeEnum.fromJson(json[r'type'])!,
        updatedAt: mapValueOfType<String>(json, r'updatedAt')!,
      );
    }
    return null;
  }

  static List<DtoESimRefundStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimRefundStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimRefundStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DtoESimRefundStatus> mapFromJson(dynamic json) {
    final map = <String, DtoESimRefundStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DtoESimRefundStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DtoESimRefundStatus-objects as value to a dart map
  static Map<String, List<DtoESimRefundStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DtoESimRefundStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DtoESimRefundStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'amount',
    'createdAt',
    'currency',
    'error',
    'log',
    'productType',
    'refundedTransactionId',
    'status',
    'type',
    'updatedAt',
  };
}

/// 
class DtoESimRefundStatusProductTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DtoESimRefundStatusProductTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TOPUP = DtoESimRefundStatusProductTypeEnum._(r'TOPUP');
  static const VOUCHER = DtoESimRefundStatusProductTypeEnum._(r'VOUCHER');
  static const ESIM = DtoESimRefundStatusProductTypeEnum._(r'ESIM');
  static const RECHARGE_SANDBOX = DtoESimRefundStatusProductTypeEnum._(r'RECHARGE_SANDBOX');
  static const RECHARGE_WITH_CREDIT_CARD = DtoESimRefundStatusProductTypeEnum._(r'RECHARGE_WITH_CREDIT_CARD');

  /// List of all possible values in this [enum][DtoESimRefundStatusProductTypeEnum].
  static const values = <DtoESimRefundStatusProductTypeEnum>[
    TOPUP,
    VOUCHER,
    ESIM,
    RECHARGE_SANDBOX,
    RECHARGE_WITH_CREDIT_CARD,
  ];

  static DtoESimRefundStatusProductTypeEnum? fromJson(dynamic value) => DtoESimRefundStatusProductTypeEnumTypeTransformer().decode(value);

  static List<DtoESimRefundStatusProductTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimRefundStatusProductTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimRefundStatusProductTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DtoESimRefundStatusProductTypeEnum] to String,
/// and [decode] dynamic data back to [DtoESimRefundStatusProductTypeEnum].
class DtoESimRefundStatusProductTypeEnumTypeTransformer {
  factory DtoESimRefundStatusProductTypeEnumTypeTransformer() => _instance ??= const DtoESimRefundStatusProductTypeEnumTypeTransformer._();

  const DtoESimRefundStatusProductTypeEnumTypeTransformer._();

  String encode(DtoESimRefundStatusProductTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DtoESimRefundStatusProductTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DtoESimRefundStatusProductTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TOPUP': return DtoESimRefundStatusProductTypeEnum.TOPUP;
        case r'VOUCHER': return DtoESimRefundStatusProductTypeEnum.VOUCHER;
        case r'ESIM': return DtoESimRefundStatusProductTypeEnum.ESIM;
        case r'RECHARGE_SANDBOX': return DtoESimRefundStatusProductTypeEnum.RECHARGE_SANDBOX;
        case r'RECHARGE_WITH_CREDIT_CARD': return DtoESimRefundStatusProductTypeEnum.RECHARGE_WITH_CREDIT_CARD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DtoESimRefundStatusProductTypeEnumTypeTransformer] instance.
  static DtoESimRefundStatusProductTypeEnumTypeTransformer? _instance;
}


/// 
class DtoESimRefundStatusStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DtoESimRefundStatusStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DONE = DtoESimRefundStatusStatusEnum._(r'DONE');
  static const FAILED = DtoESimRefundStatusStatusEnum._(r'FAILED');
  static const PENDING = DtoESimRefundStatusStatusEnum._(r'PENDING');
  static const ACCEPTED = DtoESimRefundStatusStatusEnum._(r'ACCEPTED');
  static const AUTHORIZED = DtoESimRefundStatusStatusEnum._(r'AUTHORIZED');
  static const IN_PROGRESS = DtoESimRefundStatusStatusEnum._(r'IN_PROGRESS');

  /// List of all possible values in this [enum][DtoESimRefundStatusStatusEnum].
  static const values = <DtoESimRefundStatusStatusEnum>[
    DONE,
    FAILED,
    PENDING,
    ACCEPTED,
    AUTHORIZED,
    IN_PROGRESS,
  ];

  static DtoESimRefundStatusStatusEnum? fromJson(dynamic value) => DtoESimRefundStatusStatusEnumTypeTransformer().decode(value);

  static List<DtoESimRefundStatusStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimRefundStatusStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimRefundStatusStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DtoESimRefundStatusStatusEnum] to String,
/// and [decode] dynamic data back to [DtoESimRefundStatusStatusEnum].
class DtoESimRefundStatusStatusEnumTypeTransformer {
  factory DtoESimRefundStatusStatusEnumTypeTransformer() => _instance ??= const DtoESimRefundStatusStatusEnumTypeTransformer._();

  const DtoESimRefundStatusStatusEnumTypeTransformer._();

  String encode(DtoESimRefundStatusStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DtoESimRefundStatusStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DtoESimRefundStatusStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DONE': return DtoESimRefundStatusStatusEnum.DONE;
        case r'FAILED': return DtoESimRefundStatusStatusEnum.FAILED;
        case r'PENDING': return DtoESimRefundStatusStatusEnum.PENDING;
        case r'ACCEPTED': return DtoESimRefundStatusStatusEnum.ACCEPTED;
        case r'AUTHORIZED': return DtoESimRefundStatusStatusEnum.AUTHORIZED;
        case r'IN_PROGRESS': return DtoESimRefundStatusStatusEnum.IN_PROGRESS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DtoESimRefundStatusStatusEnumTypeTransformer] instance.
  static DtoESimRefundStatusStatusEnumTypeTransformer? _instance;
}


/// 
class DtoESimRefundStatusTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DtoESimRefundStatusTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEBIT = DtoESimRefundStatusTypeEnum._(r'DEBIT');
  static const CREDIT = DtoESimRefundStatusTypeEnum._(r'CREDIT');

  /// List of all possible values in this [enum][DtoESimRefundStatusTypeEnum].
  static const values = <DtoESimRefundStatusTypeEnum>[
    DEBIT,
    CREDIT,
  ];

  static DtoESimRefundStatusTypeEnum? fromJson(dynamic value) => DtoESimRefundStatusTypeEnumTypeTransformer().decode(value);

  static List<DtoESimRefundStatusTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimRefundStatusTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimRefundStatusTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DtoESimRefundStatusTypeEnum] to String,
/// and [decode] dynamic data back to [DtoESimRefundStatusTypeEnum].
class DtoESimRefundStatusTypeEnumTypeTransformer {
  factory DtoESimRefundStatusTypeEnumTypeTransformer() => _instance ??= const DtoESimRefundStatusTypeEnumTypeTransformer._();

  const DtoESimRefundStatusTypeEnumTypeTransformer._();

  String encode(DtoESimRefundStatusTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DtoESimRefundStatusTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DtoESimRefundStatusTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DEBIT': return DtoESimRefundStatusTypeEnum.DEBIT;
        case r'CREDIT': return DtoESimRefundStatusTypeEnum.CREDIT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DtoESimRefundStatusTypeEnumTypeTransformer] instance.
  static DtoESimRefundStatusTypeEnumTypeTransformer? _instance;
}


