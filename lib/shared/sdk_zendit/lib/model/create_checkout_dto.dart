//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateCheckoutDto {
  /// Returns a new [CreateCheckoutDto] instance.
  CreateCheckoutDto({
    required this.offerId,
    this.action,
    this.iccid,
  });

  String offerId;

  CreateCheckoutDtoActionEnum? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iccid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateCheckoutDto &&
    other.offerId == offerId &&
    other.action == action &&
    other.iccid == iccid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (offerId.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (iccid == null ? 0 : iccid!.hashCode);

  @override
  String toString() => 'CreateCheckoutDto[offerId=$offerId, action=$action, iccid=$iccid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'offerId'] = this.offerId;
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.iccid != null) {
      json[r'iccid'] = this.iccid;
    } else {
      json[r'iccid'] = null;
    }
    return json;
  }

  /// Returns a new [CreateCheckoutDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateCheckoutDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateCheckoutDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateCheckoutDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateCheckoutDto(
        offerId: mapValueOfType<String>(json, r'offerId')!,
        action: CreateCheckoutDtoActionEnum.fromJson(json[r'action']),
        iccid: mapValueOfType<String>(json, r'iccid'),
      );
    }
    return null;
  }

  static List<CreateCheckoutDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateCheckoutDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateCheckoutDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateCheckoutDto> mapFromJson(dynamic json) {
    final map = <String, CreateCheckoutDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateCheckoutDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateCheckoutDto-objects as value to a dart map
  static Map<String, List<CreateCheckoutDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateCheckoutDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateCheckoutDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'offerId',
  };
}


class CreateCheckoutDtoActionEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateCheckoutDtoActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const create = CreateCheckoutDtoActionEnum._(r'create');
  static const refill = CreateCheckoutDtoActionEnum._(r'refill');

  /// List of all possible values in this [enum][CreateCheckoutDtoActionEnum].
  static const values = <CreateCheckoutDtoActionEnum>[
    create,
    refill,
  ];

  static CreateCheckoutDtoActionEnum? fromJson(dynamic value) => CreateCheckoutDtoActionEnumTypeTransformer().decode(value);

  static List<CreateCheckoutDtoActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateCheckoutDtoActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateCheckoutDtoActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateCheckoutDtoActionEnum] to String,
/// and [decode] dynamic data back to [CreateCheckoutDtoActionEnum].
class CreateCheckoutDtoActionEnumTypeTransformer {
  factory CreateCheckoutDtoActionEnumTypeTransformer() => _instance ??= const CreateCheckoutDtoActionEnumTypeTransformer._();

  const CreateCheckoutDtoActionEnumTypeTransformer._();

  String encode(CreateCheckoutDtoActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateCheckoutDtoActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateCheckoutDtoActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'create': return CreateCheckoutDtoActionEnum.create;
        case r'refill': return CreateCheckoutDtoActionEnum.refill;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateCheckoutDtoActionEnumTypeTransformer] instance.
  static CreateCheckoutDtoActionEnumTypeTransformer? _instance;
}


