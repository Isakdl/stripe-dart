part of '../../messages.dart';

/// Single-use mandate for SetupIntent
/// If you populate this hash, this SetupIntent generates a single_use mandate after successful completion.
/// Single-use mandates are only valid for the following payment methods: acss_debit, alipay,
/// au_becs_debit, bacs_debit, bancontact, boleto, ideal, link, sepa_debit, and us_bank_account.
@JsonSerializable()
class SingleUseMandate {
  /// Amount the customer is granting permission to collect later. A positive integer
  /// representing how much to charge in the smallest currency unit (e.g., 100 cents to charge $1.00
  /// or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or equivalent
  /// in charge currency. The amount value supports up to eight digits (e.g., a value of 99999999
  /// for a USD charge of $999,999.99).
  final int amount;

  /// Three-letter ISO currency code, in lowercase. Must be a supported currency.
  final String currency;

  const SingleUseMandate({
    required this.amount,
    required this.currency,
  });

  factory SingleUseMandate.fromJson(Map<String, dynamic> json) =>
      _$SingleUseMandateFromJson(json);

  Map<String, dynamic> toJson() => _$SingleUseMandateToJson(this);
}
