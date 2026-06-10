//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DtoESimRefund {
  /// Returns a new [DtoESimRefund] instance.
  DtoESimRefund({
    required this.status,
  });

  /// 
  DtoESimRefundStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DtoESimRefund &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode);

  @override
  String toString() => 'DtoESimRefund[status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [DtoESimRefund] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DtoESimRefund? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DtoESimRefund[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DtoESimRefund[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DtoESimRefund(
        status: DtoESimRefundStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<DtoESimRefund> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimRefund>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimRefund.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DtoESimRefund> mapFromJson(dynamic json) {
    final map = <String, DtoESimRefund>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DtoESimRefund.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DtoESimRefund-objects as value to a dart map
  static Map<String, List<DtoESimRefund>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DtoESimRefund>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DtoESimRefund.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
  };
}

/// 
class DtoESimRefundStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DtoESimRefundStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DONE = DtoESimRefundStatusEnum._(r'DONE');
  static const FAILED = DtoESimRefundStatusEnum._(r'FAILED');
  static const PENDING = DtoESimRefundStatusEnum._(r'PENDING');
  static const ACCEPTED = DtoESimRefundStatusEnum._(r'ACCEPTED');
  static const AUTHORIZED = DtoESimRefundStatusEnum._(r'AUTHORIZED');
  static const IN_PROGRESS = DtoESimRefundStatusEnum._(r'IN_PROGRESS');

  /// List of all possible values in this [enum][DtoESimRefundStatusEnum].
  static const values = <DtoESimRefundStatusEnum>[
    DONE,
    FAILED,
    PENDING,
    ACCEPTED,
    AUTHORIZED,
    IN_PROGRESS,
  ];

  static DtoESimRefundStatusEnum? fromJson(dynamic value) => DtoESimRefundStatusEnumTypeTransformer().decode(value);

  static List<DtoESimRefundStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimRefundStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimRefundStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DtoESimRefundStatusEnum] to String,
/// and [decode] dynamic data back to [DtoESimRefundStatusEnum].
class DtoESimRefundStatusEnumTypeTransformer {
  factory DtoESimRefundStatusEnumTypeTransformer() => _instance ??= const DtoESimRefundStatusEnumTypeTransformer._();

  const DtoESimRefundStatusEnumTypeTransformer._();

  String encode(DtoESimRefundStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DtoESimRefundStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DtoESimRefundStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DONE': return DtoESimRefundStatusEnum.DONE;
        case r'FAILED': return DtoESimRefundStatusEnum.FAILED;
        case r'PENDING': return DtoESimRefundStatusEnum.PENDING;
        case r'ACCEPTED': return DtoESimRefundStatusEnum.ACCEPTED;
        case r'AUTHORIZED': return DtoESimRefundStatusEnum.AUTHORIZED;
        case r'IN_PROGRESS': return DtoESimRefundStatusEnum.IN_PROGRESS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DtoESimRefundStatusEnumTypeTransformer] instance.
  static DtoESimRefundStatusEnumTypeTransformer? _instance;
}


