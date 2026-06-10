//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DtoESimConfirmation {
  /// Returns a new [DtoESimConfirmation] instance.
  DtoESimConfirmation({
    required this.activationCode,
    required this.externalReferenceId,
    required this.iccid,
    required this.redemptionInstructions,
    required this.smdpAddress,
  });

  /// Activation PIN for eSIM
  String activationCode;

  /// Matching ID for the eSIM
  String externalReferenceId;

  /// ICCID of the eSIM
  String iccid;

  /// Instructions reference for installing the eSIM
  String redemptionInstructions;

  /// SMDP+ Address for installing the eSIM
  String smdpAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DtoESimConfirmation &&
    other.activationCode == activationCode &&
    other.externalReferenceId == externalReferenceId &&
    other.iccid == iccid &&
    other.redemptionInstructions == redemptionInstructions &&
    other.smdpAddress == smdpAddress;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activationCode.hashCode) +
    (externalReferenceId.hashCode) +
    (iccid.hashCode) +
    (redemptionInstructions.hashCode) +
    (smdpAddress.hashCode);

  @override
  String toString() => 'DtoESimConfirmation[activationCode=$activationCode, externalReferenceId=$externalReferenceId, iccid=$iccid, redemptionInstructions=$redemptionInstructions, smdpAddress=$smdpAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'activationCode'] = this.activationCode;
      json[r'externalReferenceId'] = this.externalReferenceId;
      json[r'iccid'] = this.iccid;
      json[r'redemptionInstructions'] = this.redemptionInstructions;
      json[r'smdpAddress'] = this.smdpAddress;
    return json;
  }

  /// Returns a new [DtoESimConfirmation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DtoESimConfirmation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DtoESimConfirmation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DtoESimConfirmation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DtoESimConfirmation(
        activationCode: mapValueOfType<String>(json, r'activationCode')!,
        externalReferenceId: mapValueOfType<String>(json, r'externalReferenceId')!,
        iccid: mapValueOfType<String>(json, r'iccid')!,
        redemptionInstructions: mapValueOfType<String>(json, r'redemptionInstructions')!,
        smdpAddress: mapValueOfType<String>(json, r'smdpAddress')!,
      );
    }
    return null;
  }

  static List<DtoESimConfirmation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimConfirmation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimConfirmation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DtoESimConfirmation> mapFromJson(dynamic json) {
    final map = <String, DtoESimConfirmation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DtoESimConfirmation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DtoESimConfirmation-objects as value to a dart map
  static Map<String, List<DtoESimConfirmation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DtoESimConfirmation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DtoESimConfirmation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'activationCode',
    'externalReferenceId',
    'iccid',
    'redemptionInstructions',
    'smdpAddress',
  };
}

