//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BrandsResponse {
  /// Returns a new [BrandsResponse] instance.
  BrandsResponse({
    required this.limit,
    required this.offset,
    this.list = const [],
    required this.total,
  });

  /// Limit of items in response
  num limit;

  /// Offset from the start of the list for pagination
  num offset;

  List<BrandMin> list;

  /// Total number of items available
  num total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BrandsResponse &&
    other.limit == limit &&
    other.offset == offset &&
    _deepEquality.equals(other.list, list) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (limit.hashCode) +
    (offset.hashCode) +
    (list.hashCode) +
    (total.hashCode);

  @override
  String toString() => 'BrandsResponse[limit=$limit, offset=$offset, list=$list, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'limit'] = this.limit;
      json[r'offset'] = this.offset;
      json[r'list'] = this.list;
      json[r'total'] = this.total;
    return json;
  }

  /// Returns a new [BrandsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BrandsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BrandsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BrandsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BrandsResponse(
        limit: num.parse('${json[r'limit']}'),
        offset: num.parse('${json[r'offset']}'),
        list: BrandMin.listFromJson(json[r'list']),
        total: num.parse('${json[r'total']}'),
      );
    }
    return null;
  }

  static List<BrandsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BrandsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BrandsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BrandsResponse> mapFromJson(dynamic json) {
    final map = <String, BrandsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BrandsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BrandsResponse-objects as value to a dart map
  static Map<String, List<BrandsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BrandsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BrandsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'limit',
    'offset',
    'list',
    'total',
  };
}

