//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DtoCost {
  /// Returns a new [DtoCost] instance.
  DtoCost({
    this.currency,
    this.currencyDivisor,
    required this.fixed,
    this.fx,
    this.max,
    this.min,
  });

  /// Currency for the price
  String? currency;

  /// Currency divisor for the price
  num? currencyDivisor;

  /// Price for a fixed offer
  num fixed;

  /// FX rate for a range offer
  num? fx;

  /// Maximum price for a range offer
  num? max;

  /// Minimum price for a range offer
  num? min;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DtoCost &&
    other.currency == currency &&
    other.currencyDivisor == currencyDivisor &&
    other.fixed == fixed &&
    other.fx == fx &&
    other.max == max &&
    other.min == min;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currency == null ? 0 : currency!.hashCode) +
    (currencyDivisor == null ? 0 : currencyDivisor!.hashCode) +
    (fixed.hashCode) +
    (fx == null ? 0 : fx!.hashCode) +
    (max == null ? 0 : max!.hashCode) +
    (min == null ? 0 : min!.hashCode);

  @override
  String toString() => 'DtoCost[currency=$currency, currencyDivisor=$currencyDivisor, fixed=$fixed, fx=$fx, max=$max, min=$min]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.currencyDivisor != null) {
      json[r'currencyDivisor'] = this.currencyDivisor;
    } else {
      json[r'currencyDivisor'] = null;
    }
      json[r'fixed'] = this.fixed;
    if (this.fx != null) {
      json[r'fx'] = this.fx;
    } else {
      json[r'fx'] = null;
    }
    if (this.max != null) {
      json[r'max'] = this.max;
    } else {
      json[r'max'] = null;
    }
    if (this.min != null) {
      json[r'min'] = this.min;
    } else {
      json[r'min'] = null;
    }
    return json;
  }

  /// Returns a new [DtoCost] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DtoCost? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DtoCost[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DtoCost[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DtoCost(
        currency: mapValueOfType<String>(json, r'currency'),
        currencyDivisor: json[r'currencyDivisor'] == null
            ? null
            : num.parse('${json[r'currencyDivisor']}'),
        fixed: num.parse('${json[r'fixed']}'),
        fx: json[r'fx'] == null
            ? null
            : num.parse('${json[r'fx']}'),
        max: json[r'max'] == null
            ? null
            : num.parse('${json[r'max']}'),
        min: json[r'min'] == null
            ? null
            : num.parse('${json[r'min']}'),
      );
    }
    return null;
  }

  static List<DtoCost> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoCost>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoCost.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DtoCost> mapFromJson(dynamic json) {
    final map = <String, DtoCost>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DtoCost.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DtoCost-objects as value to a dart map
  static Map<String, List<DtoCost>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DtoCost>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DtoCost.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'fixed',
  };
}

