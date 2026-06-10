//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DtoESIMPlans {
  /// Returns a new [DtoESIMPlans] instance.
  DtoESIMPlans({
    required this.description,
    this.endAt,
    required this.iccid,
    required this.initialDataGB,
    required this.offerId,
    this.reamainingDataGB,
    this.startAt,
    required this.status,
  });

  /// Plan description
  String description;

  /// Date/Time the plan will end (for active plans)
  String? endAt;

  /// ICCID of the eSIM
  String iccid;

  /// Amount of data in bytes for the plan
  num initialDataGB;

  /// Offer ID for the plan
  String offerId;

  /// Amount of data remaining on the plan (for active plans)
  num? reamainingDataGB;

  /// Date/Time the plan was started (for active plans)
  String? startAt;

  /// Status of whether the plan is active or is queued for later use
  DtoESIMPlansStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DtoESIMPlans &&
    other.description == description &&
    other.endAt == endAt &&
    other.iccid == iccid &&
    other.initialDataGB == initialDataGB &&
    other.offerId == offerId &&
    other.reamainingDataGB == reamainingDataGB &&
    other.startAt == startAt &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description.hashCode) +
    (endAt == null ? 0 : endAt!.hashCode) +
    (iccid.hashCode) +
    (initialDataGB.hashCode) +
    (offerId.hashCode) +
    (reamainingDataGB == null ? 0 : reamainingDataGB!.hashCode) +
    (startAt == null ? 0 : startAt!.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'DtoESIMPlans[description=$description, endAt=$endAt, iccid=$iccid, initialDataGB=$initialDataGB, offerId=$offerId, reamainingDataGB=$reamainingDataGB, startAt=$startAt, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'description'] = this.description;
    if (this.endAt != null) {
      json[r'endAt'] = this.endAt;
    } else {
      json[r'endAt'] = null;
    }
      json[r'iccid'] = this.iccid;
      json[r'initialDataGB'] = this.initialDataGB;
      json[r'offerId'] = this.offerId;
    if (this.reamainingDataGB != null) {
      json[r'reamainingDataGB'] = this.reamainingDataGB;
    } else {
      json[r'reamainingDataGB'] = null;
    }
    if (this.startAt != null) {
      json[r'startAt'] = this.startAt;
    } else {
      json[r'startAt'] = null;
    }
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [DtoESIMPlans] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DtoESIMPlans? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DtoESIMPlans[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DtoESIMPlans[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DtoESIMPlans(
        description: mapValueOfType<String>(json, r'description')!,
        endAt: mapValueOfType<String>(json, r'endAt'),
        iccid: mapValueOfType<String>(json, r'iccid')!,
        initialDataGB: num.parse('${json[r'initialDataGB']}'),
        offerId: mapValueOfType<String>(json, r'offerId')!,
        reamainingDataGB: json[r'reamainingDataGB'] == null
            ? null
            : num.parse('${json[r'reamainingDataGB']}'),
        startAt: mapValueOfType<String>(json, r'startAt'),
        status: DtoESIMPlansStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<DtoESIMPlans> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESIMPlans>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESIMPlans.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DtoESIMPlans> mapFromJson(dynamic json) {
    final map = <String, DtoESIMPlans>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DtoESIMPlans.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DtoESIMPlans-objects as value to a dart map
  static Map<String, List<DtoESIMPlans>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DtoESIMPlans>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DtoESIMPlans.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'description',
    'iccid',
    'initialDataGB',
    'offerId',
    'status',
  };
}

/// Status of whether the plan is active or is queued for later use
class DtoESIMPlansStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DtoESIMPlansStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACTIVE = DtoESIMPlansStatusEnum._(r'ACTIVE');
  static const QUEUED = DtoESIMPlansStatusEnum._(r'QUEUED');

  /// List of all possible values in this [enum][DtoESIMPlansStatusEnum].
  static const values = <DtoESIMPlansStatusEnum>[
    ACTIVE,
    QUEUED,
  ];

  static DtoESIMPlansStatusEnum? fromJson(dynamic value) => DtoESIMPlansStatusEnumTypeTransformer().decode(value);

  static List<DtoESIMPlansStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESIMPlansStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESIMPlansStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DtoESIMPlansStatusEnum] to String,
/// and [decode] dynamic data back to [DtoESIMPlansStatusEnum].
class DtoESIMPlansStatusEnumTypeTransformer {
  factory DtoESIMPlansStatusEnumTypeTransformer() => _instance ??= const DtoESIMPlansStatusEnumTypeTransformer._();

  const DtoESIMPlansStatusEnumTypeTransformer._();

  String encode(DtoESIMPlansStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DtoESIMPlansStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DtoESIMPlansStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ACTIVE': return DtoESIMPlansStatusEnum.ACTIVE;
        case r'QUEUED': return DtoESIMPlansStatusEnum.QUEUED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DtoESIMPlansStatusEnumTypeTransformer] instance.
  static DtoESIMPlansStatusEnumTypeTransformer? _instance;
}


