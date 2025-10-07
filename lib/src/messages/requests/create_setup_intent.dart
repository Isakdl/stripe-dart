part of '../../../messages.dart';

/// https://stripe.com/docs/api/setup_intents/create
@JsonSerializable()
class CreateSetupIntentRequest {
  /// ID of the Connect application that created the SetupIntent.
  final String? application;

  /// If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
  final bool? attachToSelf;

  /// Settings for dynamic payment methods compatible with this Setup Intent
  final SetupIntentAutomaticPaymentMethods? automaticPaymentMethods;

  /// ID of the Customer this SetupIntent belongs to, if one exists.
  final String? customer;

  /// Set to true to attempt to confirm this SetupIntent immediately. This parameter
  /// defaults to false. If a card is the attached payment method, you can provide
  /// a return_url in case further authentication is necessary.
  final bool? confirm;

  /// ID of the ConfirmationToken used to confirm this SetupIntent.
  /// If the provided ConfirmationToken contains properties that are also being provided
  /// in this request, such as payment_method, then the values in this request will take precedence.
  final String? confirmationToken;

  /// An arbitrary string attached to the object. Often useful for displaying to users.
  final String? description;

  /// Indicates the directions of money movement for which this payment method is intended to be used.
  final List<FlowDirection>? flowDirections;

  /// Set of key-value pairs that you can attach to an object. This can be
  /// useful for storing additional information about the object in a structured
  /// format. Individual keys can be unset by posting an empty value to them.
  /// All keys can be unset by posting an empty value to metadata.
  final Map<String, String>? metadata;

  /// The account (if any) for which the setup is intended.
  final String? onBehalfOf;

  /// ID of the payment method (a PaymentMethod, Card, or compatible Source object) to
  /// attach to this SetupIntent.
  final String? paymentMethod;

  /// The ID of the payment method configuration to use with this SetupIntent.
  final String? paymentMethodConfiguration;

  /// When included, this hash creates a PaymentMethod that is set as the payment_method
  /// value in the SetupIntent.
  final PaymentMethod? paymentMethodData;

  /// Payment method-specific configuration for this SetupIntent.
  final Map<String, dynamic>? paymentMethodOptions;

  /// The list of payment method types that this SetupIntent is allowed to use.
  /// If this is not provided, defaults to ["card"].
  final List<PaymentMethodType>? paymentMethodTypes;

  /// The URL to redirect your customer back to after they authenticate or cancel their payment
  /// on the payment method's app or site. To redirect to a mobile application, you can
  /// alternatively supply an application URI scheme. This parameter can only be used with confirm=true.
  final String? returnUrl;

  /// If you populate this hash, this SetupIntent generates a single_use mandate after successful completion.
  /// Single-use mandates are only valid for the following payment methods: acss_debit, alipay,
  /// au_becs_debit, bacs_debit, bancontact, boleto, ideal, link, sepa_debit, and us_bank_account.
  final SingleUseMandate? singleUse;

  /// Indicates how the payment method is intended to be used in the future.
  /// Use `on_session` if you intend to only reuse the payment method when the customer is in your checkout flow.
  /// Use `off_session` if your customer may or may not be in your checkout flow.
  /// If not provided, this value defaults to `off_session`.
  final String? usage;

  /// Set to true when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs
  /// to handle the next actions.
  final bool? useStripeSdk;

  CreateSetupIntentRequest({
    this.application,
    this.attachToSelf,
    this.automaticPaymentMethods,
    this.customer,
    this.confirm,
    this.confirmationToken,
    this.description,
    this.flowDirections,
    this.metadata,
    this.onBehalfOf,
    this.paymentMethod,
    this.paymentMethodConfiguration,
    this.paymentMethodData,
    this.paymentMethodOptions,
    this.paymentMethodTypes,
    this.returnUrl,
    this.singleUse,
    this.usage,
    this.useStripeSdk,
  });

  factory CreateSetupIntentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSetupIntentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateSetupIntentRequestToJson(this);
}
