//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DtoPrice {
  /// Returns a new [DtoPrice] instance.
  DtoPrice({
    this.currency,
    this.currencyDivisor,
    this.fixed,
    this.fx,
    this.margin,
    this.max,
    this.min,
    this.suggestedFixed,
    this.suggestedFx,
  });

  /// Currency for the price
  String? currency;

  /// Divisor for display of the value
  num? currencyDivisor;

  /// Price for a fixed offer
  num? fixed;

  /// FX rate for a range offer
  num? fx;

  /// Margin from customer price to partner cost
  num? margin;

  /// Maximum price for a range offer
  num? max;

  /// Minimum price for a range offer
  num? min;

  /// zendit suggested price to customer for fixed offer
  num? suggestedFixed;

  /// zendit suggested FX to customer for a range offer
  num? suggestedFx;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DtoPrice &&
    other.currency == currency &&
    other.currencyDivisor == currencyDivisor &&
    other.fixed == fixed &&
    other.fx == fx &&
    other.margin == margin &&
    other.max == max &&
    other.min == min &&
    other.suggestedFixed == suggestedFixed &&
    other.suggestedFx == suggestedFx;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currency == null ? 0 : currency!.hashCode) +
    (currencyDivisor == null ? 0 : currencyDivisor!.hashCode) +
    (fixed == null ? 0 : fixed!.hashCode) +
    (fx == null ? 0 : fx!.hashCode) +
    (margin == null ? 0 : margin!.hashCode) +
    (max == null ? 0 : max!.hashCode) +
    (min == null ? 0 : min!.hashCode) +
    (suggestedFixed == null ? 0 : suggestedFixed!.hashCode) +
    (suggestedFx == null ? 0 : suggestedFx!.hashCode);

  @override
  String toString() => 'DtoPrice[currency=$currency, currencyDivisor=$currencyDivisor, fixed=$fixed, fx=$fx, margin=$margin, max=$max, min=$min, suggestedFixed=$suggestedFixed, suggestedFx=$suggestedFx]';

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
    if (this.fixed != null) {
      json[r'fixed'] = this.fixed;
    } else {
      json[r'fixed'] = null;
    }
    if (this.fx != null) {
      json[r'fx'] = this.fx;
    } else {
      json[r'fx'] = null;
    }
    if (this.margin != null) {
      json[r'margin'] = this.margin;
    } else {
      json[r'margin'] = null;
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
    if (this.suggestedFixed != null) {
      json[r'suggestedFixed'] = this.suggestedFixed;
    } else {
      json[r'suggestedFixed'] = null;
    }
    if (this.suggestedFx != null) {
      json[r'suggestedFx'] = this.suggestedFx;
    } else {
      json[r'suggestedFx'] = null;
    }
    return json;
  }

  /// Returns a new [DtoPrice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DtoPrice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DtoPrice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DtoPrice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DtoPrice(
        currency: mapValueOfType<String>(json, r'currency'),
        currencyDivisor: json[r'currencyDivisor'] == null
            ? null
            : num.parse('${json[r'currencyDivisor']}'),
        fixed: json[r'fixed'] == null
            ? null
            : num.parse('${json[r'fixed']}'),
        fx: json[r'fx'] == null
            ? null
            : num.parse('${json[r'fx']}'),
        margin: json[r'margin'] == null
            ? null
            : num.parse('${json[r'margin']}'),
        max: json[r'max'] == null
            ? null
            : num.parse('${json[r'max']}'),
        min: json[r'min'] == null
            ? null
            : num.parse('${json[r'min']}'),
        suggestedFixed: json[r'suggestedFixed'] == null
            ? null
            : num.parse('${json[r'suggestedFixed']}'),
        suggestedFx: json[r'suggestedFx'] == null
            ? null
            : num.parse('${json[r'suggestedFx']}'),
      );
    }
    return null;
  }

  static List<DtoPrice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DtoPrice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DtoPrice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DtoPrice> mapFromJson(dynamic json) {
    final map = <String, DtoPrice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DtoPrice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DtoPrice-objects as value to a dart map
  static Map<String, List<DtoPrice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DtoPrice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DtoPrice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

