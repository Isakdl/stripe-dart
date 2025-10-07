part of '../../../messages.dart';

/// https://stripe.com/docs/api/setup_intents/confirm
@JsonSerializable()
class ConfirmSetupIntentRequest {
  /// ID of the ConfirmationToken used to confirm this SetupIntent.
  /// If the provided ConfirmationToken contains properties that are also being provided
  /// in this request, such as payment_method, then the values in this request will take precedence.
  final String? confirmationToken;

  /// This hash contains details about the mandate to create.
  final Map<String, dynamic>? mandateData;

  /// ID of the payment method (a PaymentMethod, Card, or compatible Source object) to
  /// attach to this SetupIntent.
  final String? paymentMethod;

  /// When included, this hash creates a PaymentMethod that is set as the payment_method
  /// value in the SetupIntent.
  final Map<String, dynamic>? paymentMethodData;

  /// Payment method-specific configuration for this SetupIntent.
  final Map<String, dynamic>? paymentMethodOptions;

  /// The URL to redirect your customer back to after they authenticate on the payment method's
  /// app or site. If you'd prefer to redirect to a mobile application, you can alternatively
  /// supply an application URI scheme. This parameter is only used for cards and other
  /// redirect-based payment methods.
  final String? returnUrl;

  /// Set to true when confirming server-side and using Stripe.js, iOS, or Android client-side
  /// SDKs to handle the next actions.
  final bool? useStripeSdk;

  ConfirmSetupIntentRequest({
    this.confirmationToken,
    this.mandateData,
    this.paymentMethod,
    this.paymentMethodData,
    this.paymentMethodOptions,
    this.returnUrl,
    this.useStripeSdk,
  });

  factory ConfirmSetupIntentRequest.fromJson(Map<String, dynamic> json) =>
      _$ConfirmSetupIntentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmSetupIntentRequestToJson(this);
}
