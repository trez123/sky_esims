//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WiPayPaymentSuccessDetailsDto {
  /// Returns a new [WiPayPaymentSuccessDetailsDto] instance.
  WiPayPaymentSuccessDetailsDto({
    required this.success,
    required this.esimId,
    required this.offerId,
    required this.offerName,
    required this.activationCode,
    required this.smdpAddress,
    required this.fullLPACode,
  });

  bool success;

  String esimId;

  String offerId;

  String offerName;

  String activationCode;

  String smdpAddress;

  String fullLPACode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WiPayPaymentSuccessDetailsDto &&
    other.success == success &&
    other.esimId == esimId &&
    other.offerId == offerId &&
    other.offerName == offerName &&
    other.activationCode == activationCode &&
    other.smdpAddress == smdpAddress &&
    other.fullLPACode == fullLPACode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (esimId.hashCode) +
    (offerId.hashCode) +
    (offerName.hashCode) +
    (activationCode.hashCode) +
    (smdpAddress.hashCode) +
    (fullLPACode.hashCode);

  @override
  String toString() => 'WiPayPaymentSuccessDetailsDto[success=$success, esimId=$esimId, offerId=$offerId, offerName=$offerName, activationCode=$activationCode, smdpAddress=$smdpAddress, fullLPACode=$fullLPACode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'esimId'] = this.esimId;
      json[r'offerId'] = this.offerId;
      json[r'offerName'] = this.offerName;
      json[r'activationCode'] = this.activationCode;
      json[r'smdpAddress'] = this.smdpAddress;
      json[r'fullLPACode'] = this.fullLPACode;
    return json;
  }

  /// Returns a new [WiPayPaymentSuccessDetailsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WiPayPaymentSuccessDetailsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WiPayPaymentSuccessDetailsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WiPayPaymentSuccessDetailsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WiPayPaymentSuccessDetailsDto(
        success: mapValueOfType<bool>(json, r'success')!,
        esimId: mapValueOfType<String>(json, r'esimId')!,
        offerId: mapValueOfType<String>(json, r'offerId')!,
        offerName: mapValueOfType<String>(json, r'offerName')!,
        activationCode: mapValueOfType<String>(json, r'activationCode')!,
        smdpAddress: mapValueOfType<String>(json, r'smdpAddress')!,
        fullLPACode: mapValueOfType<String>(json, r'fullLPACode')!,
      );
    }
    return null;
  }

  static List<WiPayPaymentSuccessDetailsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WiPayPaymentSuccessDetailsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WiPayPaymentSuccessDetailsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WiPayPaymentSuccessDetailsDto> mapFromJson(dynamic json) {
    final map = <String, WiPayPaymentSuccessDetailsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WiPayPaymentSuccessDetailsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WiPayPaymentSuccessDetailsDto-objects as value to a dart map
  static Map<String, List<WiPayPaymentSuccessDetailsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WiPayPaymentSuccessDetailsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WiPayPaymentSuccessDetailsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
    'esimId',
    'offerId',
    'offerName',
    'activationCode',
    'smdpAddress',
    'fullLPACode',
  };
}

