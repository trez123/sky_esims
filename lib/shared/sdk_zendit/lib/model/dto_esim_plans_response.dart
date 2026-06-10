//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DtoESIMPlansResponse {
  /// Returns a new [DtoESIMPlansResponse] instance.
  DtoESIMPlansResponse({
    this.list = const [],
    required this.total,
  });

  /// List of plans
  List<DtoESIMPlans> list;

  /// Number of plans assigned to eSIM
  num total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DtoESIMPlansResponse &&
    _deepEquality.equals(other.list, list) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (list.hashCode) +
    (total.hashCode);

  @override
  String toString() => 'DtoESIMPlansResponse[list=$list, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'list'] = this.list;
      json[r'total'] = this.total;
    return json;
  }

  /// Returns a new [DtoESIMPlansResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DtoESIMPlansResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DtoESIMPlansResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DtoESIMPlansResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DtoESIMPlansResponse(
        list: DtoESIMPlans.listFromJson(json[r'list']),
        total: num.parse('${json[r'total']}'),
      );
    }
    return null;
  }

  static List<DtoESIMPlansResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESIMPlansResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESIMPlansResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DtoESIMPlansResponse> mapFromJson(dynamic json) {
    final map = <String, DtoESIMPlansResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DtoESIMPlansResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DtoESIMPlansResponse-objects as value to a dart map
  static Map<String, List<DtoESIMPlansResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DtoESIMPlansResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DtoESIMPlansResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'list',
    'total',
  };
}

