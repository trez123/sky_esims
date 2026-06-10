//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Brand {
  /// Returns a new [Brand] instance.
  Brand({
    required this.brand,
    required this.brandName,
    required this.brandBigImage,
    required this.brandColor,
    required this.brandGiftImage,
    required this.brandInfoPdf,
    required this.brandLogo,
    required this.brandLogoExtension,
    required this.description,
    this.inputMasks = const [],
    this.redemptionInstructions = const [],
    this.requiredFieldsLabels = const [],
  });

  /// Brand short name as reference Id
  String brand;

  /// Brand display name
  String brandName;

  /// URL to large image for the brand (used for styling pages of brand)
  String brandBigImage;

  /// HTML color code for styling pages for the brand
  String brandColor;

  /// URL to gift card image for the brand
  String brandGiftImage;

  /// URL to a PDF of info about the brand (if available)
  String brandInfoPdf;

  /// URL to scalable version of brand logo
  String brandLogo;

  /// File type for image (SVG, PNT, JPEG) for hanlding image
  String brandLogoExtension;

  /// Description of the brand
  String description;

  /// 
  List<InputMasks> inputMasks;

  /// 
  List<RedemptionInstructionsMin> redemptionInstructions;

  /// 
  List<RequiredFieldsLabels> requiredFieldsLabels;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Brand &&
    other.brand == brand &&
    other.brandName == brandName &&
    other.brandBigImage == brandBigImage &&
    other.brandColor == brandColor &&
    other.brandGiftImage == brandGiftImage &&
    other.brandInfoPdf == brandInfoPdf &&
    other.brandLogo == brandLogo &&
    other.brandLogoExtension == brandLogoExtension &&
    other.description == description &&
    _deepEquality.equals(other.inputMasks, inputMasks) &&
    _deepEquality.equals(other.redemptionInstructions, redemptionInstructions) &&
    _deepEquality.equals(other.requiredFieldsLabels, requiredFieldsLabels);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (brand.hashCode) +
    (brandName.hashCode) +
    (brandBigImage.hashCode) +
    (brandColor.hashCode) +
    (brandGiftImage.hashCode) +
    (brandInfoPdf.hashCode) +
    (brandLogo.hashCode) +
    (brandLogoExtension.hashCode) +
    (description.hashCode) +
    (inputMasks.hashCode) +
    (redemptionInstructions.hashCode) +
    (requiredFieldsLabels.hashCode);

  @override
  String toString() => 'Brand[brand=$brand, brandName=$brandName, brandBigImage=$brandBigImage, brandColor=$brandColor, brandGiftImage=$brandGiftImage, brandInfoPdf=$brandInfoPdf, brandLogo=$brandLogo, brandLogoExtension=$brandLogoExtension, description=$description, inputMasks=$inputMasks, redemptionInstructions=$redemptionInstructions, requiredFieldsLabels=$requiredFieldsLabels]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'brand'] = this.brand;
      json[r'brandName'] = this.brandName;
      json[r'brandBigImage'] = this.brandBigImage;
      json[r'brandColor'] = this.brandColor;
      json[r'brandGiftImage'] = this.brandGiftImage;
      json[r'brandInfoPdf'] = this.brandInfoPdf;
      json[r'brandLogo'] = this.brandLogo;
      json[r'brandLogoExtension'] = this.brandLogoExtension;
      json[r'description'] = this.description;
      json[r'inputMasks'] = this.inputMasks;
      json[r'redemptionInstructions'] = this.redemptionInstructions;
      json[r'requiredFieldsLabels'] = this.requiredFieldsLabels;
    return json;
  }

  /// Returns a new [Brand] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Brand? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Brand[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Brand[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Brand(
        brand: mapValueOfType<String>(json, r'brand')!,
        brandName: mapValueOfType<String>(json, r'brandName')!,
        brandBigImage: mapValueOfType<String>(json, r'brandBigImage')!,
        brandColor: mapValueOfType<String>(json, r'brandColor')!,
        brandGiftImage: mapValueOfType<String>(json, r'brandGiftImage')!,
        brandInfoPdf: mapValueOfType<String>(json, r'brandInfoPdf')!,
        brandLogo: mapValueOfType<String>(json, r'brandLogo')!,
        brandLogoExtension: mapValueOfType<String>(json, r'brandLogoExtension')!,
        description: mapValueOfType<String>(json, r'description')!,
        inputMasks: InputMasks.listFromJson(json[r'inputMasks']),
        redemptionInstructions: RedemptionInstructionsMin.listFromJson(json[r'redemptionInstructions']),
        requiredFieldsLabels: RequiredFieldsLabels.listFromJson(json[r'requiredFieldsLabels']),
      );
    }
    return null;
  }

  static List<Brand> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Brand>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Brand.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Brand> mapFromJson(dynamic json) {
    final map = <String, Brand>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Brand.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Brand-objects as value to a dart map
  static Map<String, List<Brand>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Brand>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Brand.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'brand',
    'brandName',
    'brandBigImage',
    'brandColor',
    'brandGiftImage',
    'brandInfoPdf',
    'brandLogo',
    'brandLogoExtension',
    'description',
    'inputMasks',
    'redemptionInstructions',
    'requiredFieldsLabels',
  };
}

