//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InputMasks {
  /// Returns a new [InputMasks] instance.
  InputMasks({
    required this.requiredField,
    required this.inputMask,
  });

  /// Required field on brand offer
  String requiredField;

  /// Input mask available to assist input on field value
  String inputMask;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InputMasks &&
    other.requiredField == requiredField &&
    other.inputMask == inputMask;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (requiredField.hashCode) +
    (inputMask.hashCode);

  @override
  String toString() => 'InputMasks[requiredField=$requiredField, inputMask=$inputMask]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'requiredField'] = this.requiredField;
      json[r'inputMask'] = this.inputMask;
    return json;
  }

  /// Returns a new [InputMasks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InputMasks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InputMasks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InputMasks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InputMasks(
        requiredField: mapValueOfType<String>(json, r'requiredField')!,
        inputMask: mapValueOfType<String>(json, r'inputMask')!,
      );
    }
    return null;
  }

  static List<InputMasks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InputMasks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InputMasks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InputMasks> mapFromJson(dynamic json) {
    final map = <String, InputMasks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InputMasks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InputMasks-objects as value to a dart map
  static Map<String, List<InputMasks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InputMasks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InputMasks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'requiredField',
    'inputMask',
  };
}

