//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EsimDataDto {
  /// Returns a new [EsimDataDto] instance.
  EsimDataDto({
    this.esimId,
    this.offerId,
    required this.date,
  });

  String? esimId;

  String? offerId;

  DateTime date;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsimDataDto &&
    other.esimId == esimId &&
    other.offerId == offerId &&
    other.date == date;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (esimId == null ? 0 : esimId!.hashCode) +
    (offerId == null ? 0 : offerId!.hashCode) +
    (date.hashCode);

  @override
  String toString() => 'EsimDataDto[esimId=$esimId, offerId=$offerId, date=$date]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.esimId != null) {
      json[r'esimId'] = this.esimId;
    } else {
      json[r'esimId'] = null;
    }
    if (this.offerId != null) {
      json[r'offerId'] = this.offerId;
    } else {
      json[r'offerId'] = null;
    }
      json[r'date'] = this.date.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [EsimDataDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsimDataDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsimDataDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsimDataDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsimDataDto(
        esimId: mapValueOfType<String>(json, r'esimId'),
        offerId: mapValueOfType<String>(json, r'offerId'),
        date: mapDateTime(json, r'date', r'')!,
      );
    }
    return null;
  }

  static List<EsimDataDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsimDataDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsimDataDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsimDataDto> mapFromJson(dynamic json) {
    final map = <String, EsimDataDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsimDataDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsimDataDto-objects as value to a dart map
  static Map<String, List<EsimDataDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsimDataDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsimDataDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'date',
  };
}

