part of '../../../messages.dart';

/// https://stripe.com/docs/api/setup_intents/update
@JsonSerializable()
class UpdateSetupIntentRequest {
  /// If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
  /// It can only be used for this Stripe Account's own money movement flows like InboundTransfer
  /// and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer,
  /// and defaults to false when attaching a PaymentMethod to a Customer.
  final bool? attachToSelf;

  /// Settings for dynamic payment methods compatible with this Setup Intent
  final SetupIntentAutomaticPaymentMethods? automaticPaymentMethods;

  /// ID of the Customer this SetupIntent belongs to, if one exists.
  final String? customer;

  /// An arbitrary string attached to the object. Often useful for displaying to users.
  final String? description;

  /// Indicates the directions of money movement for which this payment method is intended to be used.
  final List<FlowDirection>? flowDirections;

  /// Set of key-value pairs that you can attach to an object. This can be
  /// useful for storing additional information about the object in a structured
  /// format. Individual keys can be unset by posting an empty value to them.
  /// All keys can be unset by posting an empty value to metadata.
  final Map<String, String>? metadata;

  /// ID of the payment method (a PaymentMethod, Card, or compatible Source object) to
  /// attach to this SetupIntent. To unset this field to null, pass in an empty string.
  final String? paymentMethod;

  /// The ID of the payment method configuration to use with this SetupIntent.
  final String? paymentMethodConfiguration;

  /// When included, this hash creates a PaymentMethod that is set as the payment_method
  /// value in the SetupIntent.
  final PaymentMethod? paymentMethodData;

  /// Payment method-specific configuration for this SetupIntent.
  final Map<String, dynamic>? paymentMethodOptions;

  /// The list of payment method types that this SetupIntent is allowed to use.
  final List<PaymentMethodType>? paymentMethodTypes;

  /// Indicates how the payment method is intended to be used in the future.
  final String? usage;

  UpdateSetupIntentRequest({
    this.attachToSelf,
    this.automaticPaymentMethods,
    this.customer,
    this.description,
    this.flowDirections,
    this.metadata,
    this.paymentMethod,
    this.paymentMethodConfiguration,
    this.paymentMethodData,
    this.paymentMethodOptions,
    this.paymentMethodTypes,
    this.usage,
  });

  factory UpdateSetupIntentRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSetupIntentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateSetupIntentRequestToJson(this);
}
