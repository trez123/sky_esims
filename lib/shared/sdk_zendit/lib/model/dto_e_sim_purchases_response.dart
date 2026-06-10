//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DtoESimPurchasesResponse {
  /// Returns a new [DtoESimPurchasesResponse] instance.
  DtoESimPurchasesResponse({
    this.limit,
    this.list = const [],
    this.offset,
    this.total,
  });

  /// Limit of number of transactions to retrieve in search
  num? limit;

  /// List of eSIM transactions found for search
  List<DtoESimPurchase>? list;

  /// Number of transaction results to skip in search
  num? offset;

  /// Total number of transactions found matching search
  num? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DtoESimPurchasesResponse &&
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
  String toString() => 'DtoESimPurchasesResponse[limit=$limit, list=$list, offset=$offset, total=$total]';

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

  /// Returns a new [DtoESimPurchasesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DtoESimPurchasesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DtoESimPurchasesResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DtoESimPurchasesResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DtoESimPurchasesResponse(
        limit: json[r'limit'] == null
            ? null
            : num.parse('${json[r'limit']}'),
        list: DtoESimPurchase.listFromJson(json[r'list']),
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

  static List<DtoESimPurchasesResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoESimPurchasesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoESimPurchasesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DtoESimPurchasesResponse> mapFromJson(dynamic json) {
    final map = <String, DtoESimPurchasesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DtoESimPurchasesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DtoESimPurchasesResponse-objects as value to a dart map
  static Map<String, List<DtoESimPurchasesResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DtoESimPurchasesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DtoESimPurchasesResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

