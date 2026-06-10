//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DtoTransactionLogItem {
  /// Returns a new [DtoTransactionLogItem] instance.
  DtoTransactionLogItem({
    required this.dateTime,
    required this.status,
    required this.statusMessage,
  });

  /// Date/time of log event
  String dateTime;

  /// 
  DtoTransactionLogItemStatusEnum status;

  /// Detail of transaction log event
  String statusMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DtoTransactionLogItem &&
    other.dateTime == dateTime &&
    other.status == status &&
    other.statusMessage == statusMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dateTime.hashCode) +
    (status.hashCode) +
    (statusMessage.hashCode);

  @override
  String toString() => 'DtoTransactionLogItem[dateTime=$dateTime, status=$status, statusMessage=$statusMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'dateTime'] = this.dateTime;
      json[r'status'] = this.status;
      json[r'statusMessage'] = this.statusMessage;
    return json;
  }

  /// Returns a new [DtoTransactionLogItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DtoTransactionLogItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DtoTransactionLogItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DtoTransactionLogItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DtoTransactionLogItem(
        dateTime: mapValueOfType<String>(json, r'dateTime')!,
        status: DtoTransactionLogItemStatusEnum.fromJson(json[r'status'])!,
        statusMessage: mapValueOfType<String>(json, r'statusMessage')!,
      );
    }
    return null;
  }

  static List<DtoTransactionLogItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoTransactionLogItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoTransactionLogItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DtoTransactionLogItem> mapFromJson(dynamic json) {
    final map = <String, DtoTransactionLogItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DtoTransactionLogItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DtoTransactionLogItem-objects as value to a dart map
  static Map<String, List<DtoTransactionLogItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DtoTransactionLogItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DtoTransactionLogItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'dateTime',
    'status',
    'statusMessage',
  };
}

/// 
class DtoTransactionLogItemStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DtoTransactionLogItemStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DONE = DtoTransactionLogItemStatusEnum._(r'DONE');
  static const FAILED = DtoTransactionLogItemStatusEnum._(r'FAILED');
  static const PENDING = DtoTransactionLogItemStatusEnum._(r'PENDING');
  static const ACCEPTED = DtoTransactionLogItemStatusEnum._(r'ACCEPTED');
  static const AUTHORIZED = DtoTransactionLogItemStatusEnum._(r'AUTHORIZED');
  static const IN_PROGRESS = DtoTransactionLogItemStatusEnum._(r'IN_PROGRESS');

  /// List of all possible values in this [enum][DtoTransactionLogItemStatusEnum].
  static const values = <DtoTransactionLogItemStatusEnum>[
    DONE,
    FAILED,
    PENDING,
    ACCEPTED,
    AUTHORIZED,
    IN_PROGRESS,
  ];

  static DtoTransactionLogItemStatusEnum? fromJson(dynamic value) => DtoTransactionLogItemStatusEnumTypeTransformer().decode(value);

  static List<DtoTransactionLogItemStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoTransactionLogItemStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoTransactionLogItemStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DtoTransactionLogItemStatusEnum] to String,
/// and [decode] dynamic data back to [DtoTransactionLogItemStatusEnum].
class DtoTransactionLogItemStatusEnumTypeTransformer {
  factory DtoTransactionLogItemStatusEnumTypeTransformer() => _instance ??= const DtoTransactionLogItemStatusEnumTypeTransformer._();

  const DtoTransactionLogItemStatusEnumTypeTransformer._();

  String encode(DtoTransactionLogItemStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DtoTransactionLogItemStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DtoTransactionLogItemStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DONE': return DtoTransactionLogItemStatusEnum.DONE;
        case r'FAILED': return DtoTransactionLogItemStatusEnum.FAILED;
        case r'PENDING': return DtoTransactionLogItemStatusEnum.PENDING;
        case r'ACCEPTED': return DtoTransactionLogItemStatusEnum.ACCEPTED;
        case r'AUTHORIZED': return DtoTransactionLogItemStatusEnum.AUTHORIZED;
        case r'IN_PROGRESS': return DtoTransactionLogItemStatusEnum.IN_PROGRESS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DtoTransactionLogItemStatusEnumTypeTransformer] instance.
  static DtoTransactionLogItemStatusEnumTypeTransformer? _instance;
}


