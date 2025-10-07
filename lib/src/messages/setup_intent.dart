part of '../../messages.dart';

enum _SetupIntentObject { setup_intent }

/// https://stripe.com/docs/api/setup_intents/object
@JsonSerializable()
class SetupIntent extends Message {
  final _SetupIntentObject object;

  final String id;
  final String? application;
  final bool? attachToSelf;
  final SetupIntentAutomaticPaymentMethods? automaticPaymentMethods;
  final SetupIntentCancellationReason? cancellationReason;
  final String clientSecret;
  @TimestampConverter()
  final DateTime? created;
  final String? customer;
  final String? description;
  final List<FlowDirection>? flowDirections;
  final SetupIntentLastSetupError? lastSetupError;
  final String? latestAttempt;
  final bool livemode;
  final String? mandate;
  final Map<String, String>? metadata;
  final SetupIntentNextAction? nextAction;
  final String? onBehalfOf;
  final String? paymentMethod;
  final SetupIntentPaymentMethodConfigurationDetails?
      paymentMethodConfigurationDetails;
  final Map<String, dynamic>? paymentMethodOptions;
  final List<String> paymentMethodTypes;
  final String? singleUseMandate;
  final SetupIntentStatus status;
  final String usage;

  SetupIntent({
    required this.object,
    required this.id,
    required this.livemode,
    required this.paymentMethodTypes,
    required this.status,
    required this.usage,
    required this.clientSecret,
    this.application,
    this.attachToSelf,
    this.automaticPaymentMethods,
    this.cancellationReason,
    this.created,
    this.customer,
    this.description,
    this.flowDirections,
    this.lastSetupError,
    this.latestAttempt,
    this.mandate,
    this.metadata,
    this.nextAction,
    this.onBehalfOf,
    this.paymentMethod,
    this.paymentMethodConfigurationDetails,
    this.paymentMethodOptions,
    this.singleUseMandate,
  });

  factory SetupIntent.fromJson(Map<String, dynamic> json) =>
      _$SetupIntentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SetupIntentToJson(this);
}

@JsonSerializable()
class SetupIntentAutomaticPaymentMethods {
  final AllowRedirects? allowRedirects;
  final bool? enabled;

  const SetupIntentAutomaticPaymentMethods({this.allowRedirects, this.enabled});

  factory SetupIntentAutomaticPaymentMethods.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SetupIntentAutomaticPaymentMethodsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SetupIntentAutomaticPaymentMethodsToJson(this);
}

@JsonSerializable()
class SetupIntentLastSetupError {
  final String? adviceCode;
  final String? code;
  final String? declineCode;
  final String? docUrl;
  final String? message;
  final String? networkAdviceCode;
  final String? networkDeclineCode;
  final String? param;
  final PaymentMethod? paymentMethod;
  final String? paymentMethodType;
  final String? type;

  const SetupIntentLastSetupError({
    this.adviceCode,
    this.code,
    this.declineCode,
    this.docUrl,
    this.message,
    this.networkAdviceCode,
    this.networkDeclineCode,
    this.param,
    this.paymentMethod,
    this.paymentMethodType,
    this.type,
  });

  factory SetupIntentLastSetupError.fromJson(Map<String, dynamic> json) =>
      _$SetupIntentLastSetupErrorFromJson(json);

  Map<String, dynamic> toJson() => _$SetupIntentLastSetupErrorToJson(this);
}

@JsonSerializable()
class SetupIntentNextAction {
  final SetupIntentCashAppHandleRedirectOrDisplayQrCode?
      cashappHandleRedirectOrDisplayQrCode;
  final SetupIntentRedirectToUrl? redirectToUrl;
  final String? type;
  final Map<String, dynamic>? useStripeSdk;
  final SetupIntentVerifyWithMicrodeposits? verifyWithMicrodeposits;

  const SetupIntentNextAction({
    this.cashappHandleRedirectOrDisplayQrCode,
    this.redirectToUrl,
    this.type,
    this.useStripeSdk,
    this.verifyWithMicrodeposits,
  });

  factory SetupIntentNextAction.fromJson(Map<String, dynamic> json) =>
      _$SetupIntentNextActionFromJson(json);

  Map<String, dynamic> toJson() => _$SetupIntentNextActionToJson(this);
}

@JsonSerializable()
class SetupIntentCashAppHandleRedirectOrDisplayQrCode {
  final String hostedInstructionsUrl;
  final String mobileAuthUrl;
  final SetupIntentQrCode qrCode;

  const SetupIntentCashAppHandleRedirectOrDisplayQrCode({
    required this.hostedInstructionsUrl,
    required this.mobileAuthUrl,
    required this.qrCode,
  });

  factory SetupIntentCashAppHandleRedirectOrDisplayQrCode.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SetupIntentCashAppHandleRedirectOrDisplayQrCodeFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SetupIntentCashAppHandleRedirectOrDisplayQrCodeToJson(this);
}

@JsonSerializable()
class SetupIntentQrCode {
  @TimestampConverter()
  final DateTime expiresAt;
  final String imageUrlPng;
  final String imageUrlSvg;

  const SetupIntentQrCode({
    required this.expiresAt,
    required this.imageUrlPng,
    required this.imageUrlSvg,
  });

  factory SetupIntentQrCode.fromJson(Map<String, dynamic> json) =>
      _$SetupIntentQrCodeFromJson(json);

  Map<String, dynamic> toJson() => _$SetupIntentQrCodeToJson(this);
}

@JsonSerializable()
class SetupIntentRedirectToUrl {
  final String? returnUrl;
  final String? url;

  const SetupIntentRedirectToUrl({this.returnUrl, this.url});

  factory SetupIntentRedirectToUrl.fromJson(Map<String, dynamic> json) =>
      _$SetupIntentRedirectToUrlFromJson(json);

  Map<String, dynamic> toJson() => _$SetupIntentRedirectToUrlToJson(this);
}

@JsonSerializable()
class SetupIntentVerifyWithMicrodeposits {
  @TimestampConverter()
  final DateTime arrivalDate;
  final String hostedVerificationUrl;
  final String? microdepositType;

  const SetupIntentVerifyWithMicrodeposits({
    required this.arrivalDate,
    required this.hostedVerificationUrl,
    this.microdepositType,
  });

  factory SetupIntentVerifyWithMicrodeposits.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SetupIntentVerifyWithMicrodepositsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SetupIntentVerifyWithMicrodepositsToJson(this);
}

@JsonSerializable()
class SetupIntentPaymentMethodConfigurationDetails {
  final String id;
  final String? parent;

  const SetupIntentPaymentMethodConfigurationDetails({
    required this.id,
    this.parent,
  });

  factory SetupIntentPaymentMethodConfigurationDetails.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SetupIntentPaymentMethodConfigurationDetailsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SetupIntentPaymentMethodConfigurationDetailsToJson(this);
}
