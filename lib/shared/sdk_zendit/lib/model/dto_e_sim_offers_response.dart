//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DtoESimOffersResponse {
  /// Returns a new [DtoESimOffersResponse] instance.
  DtoESimOffersResponse({
    this.limit,
    this.list = const [],
    this.offset,
    this.total,
  });

  /// Limit specified for number of offers to retrieve
  num? limit;

  /// List of eSIM offers in response
  List<DtoESimOffer>? list;

  /// Number of offers specified to skip
  num? offset;

  /// Total number of offers matching search
  num? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DtoESimOffersResponse &&
    other.limit == limit &&
    _deepEquality.equals(other.list, list) &&
    other.offset == offset &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (limit == null ? 0 : limit!.hashCode) +
    (list == null ? 0 : list!.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'DtoESimOffersResponse[limit=$limit, list=$list, offset=$offset, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.list != null) {
      json[r'list'] = this.list;
    } else {
      json[r'list'] = null;
    }
    if (this.offset != null) {
      json[r'offset'] = this.offset;
    } else {
      json[r'offset'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [DtoESimOffersResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DtoESimOffersResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DtoESimOffersResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DtoESimOffersResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DtoESimOffersResponse(
        limit: json[r'limit'] == null
            ? null
            : num.parse('${json[r'limit']}'),
        list: DtoESimOffer.listFromJson(json[r'list']),
        offset: json[r'offset'] == null
            ? null
            : num.parse('${json[r'offset']}'),
        total: json[r'total'] == null
            ? null
            : num.parse('${json[r'total']}'),
      );
    }
    return null;
  }

  static List<DtoESimOffersResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimOffersResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimOffersResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DtoESimOffersResponse> mapFromJson(dynamic json) {
    final map = <String, DtoESimOffersResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DtoESimOffersResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DtoESimOffersResponse-objects as value to a dart map
  static Map<String, List<DtoESimOffersResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DtoESimOffersResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DtoESimOffersResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

