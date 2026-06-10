//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentIntentResponse {
  /// Returns a new [PaymentIntentResponse] instance.
  PaymentIntentResponse({
    required this.id,
    required this.object,
    required this.amount,
    required this.currency,
    required this.clientSecret,
    required this.status,
    required this.created,
    this.customer,
    this.description,
    this.paymentMethodTypes = const [],
    required this.livemode,
    this.metadata,
  });

  String id;

  String object;

  /// Amount in smallest currency unit (e.g., cents)
  num amount;

  /// Three-letter ISO currency code
  String currency;

  /// Client secret used for client-side payment completion
  String clientSecret;

  /// Current status of the payment intent
  String status;

  /// Unix timestamp of creation
  num created;

  /// Customer ID if associated with a customer
  String? customer;

  /// Description of the payment
  String? description;

  /// List of payment method types allowed
  List<String> paymentMethodTypes;

  /// Whether this is a live mode payment
  bool livemode;

  /// Additional metadata about the payment
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaymentIntentResponse &&
    other.id == id &&
    other.object == object &&
    other.amount == amount &&
    other.currency == currency &&
    other.clientSecret == clientSecret &&
    other.status == status &&
    other.created == created &&
    other.customer == customer &&
    other.description == description &&
    _deepEquality.equals(other.paymentMethodTypes, paymentMethodTypes) &&
    other.livemode == livemode &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (object.hashCode) +
    (amount.hashCode) +
    (currency.hashCode) +
    (clientSecret.hashCode) +
    (status.hashCode) +
    (created.hashCode) +
    (customer == null ? 0 : customer!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (paymentMethodTypes.hashCode) +
    (livemode.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'PaymentIntentResponse[id=$id, object=$object, amount=$amount, currency=$currency, clientSecret=$clientSecret, status=$status, created=$created, customer=$customer, description=$description, paymentMethodTypes=$paymentMethodTypes, livemode=$livemode, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'object'] = this.object;
      json[r'amount'] = this.amount;
      json[r'currency'] = this.currency;
      json[r'client_secret'] = this.clientSecret;
      json[r'status'] = this.status;
      json[r'created'] = this.created;
    if (this.customer != null) {
      json[r'customer'] = this.customer;
    } else {
      json[r'customer'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'payment_method_types'] = this.paymentMethodTypes;
      json[r'livemode'] = this.livemode;
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [PaymentIntentResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentIntentResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaymentIntentResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaymentIntentResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaymentIntentResponse(
        id: mapValueOfType<String>(json, r'id')!,
        object: mapValueOfType<String>(json, r'object')!,
        amount: num.parse('${json[r'amount']}'),
        currency: mapValueOfType<String>(json, r'currency')!,
        clientSecret: mapValueOfType<String>(json, r'client_secret')!,
        status: mapValueOfType<String>(json, r'status')!,
        created: num.parse('${json[r'created']}'),
        customer: mapValueOfType<String>(json, r'customer'),
        description: mapValueOfType<String>(json, r'description'),
        paymentMethodTypes: json[r'payment_method_types'] is Iterable
            ? (json[r'payment_method_types'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        livemode: mapValueOfType<bool>(json, r'livemode')!,
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<PaymentIntentResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentIntentResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentIntentResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentIntentResponse> mapFromJson(dynamic json) {
    final map = <String, PaymentIntentResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentIntentResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentIntentResponse-objects as value to a dart map
  static Map<String, List<PaymentIntentResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaymentIntentResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentIntentResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'object',
    'amount',
    'currency',
    'client_secret',
    'status',
    'created',
    'payment_method_types',
    'livemode',
  };
}

