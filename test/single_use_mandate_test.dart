import 'package:test/test.dart';
import 'package:stripe/stripe.dart';

void main() {
  group('SingleUseMandate', () {
    test('should create SingleUseMandate from JSON', () {
      final json = {'amount': 2000, 'currency': 'usd'};

      final singleUse = SingleUseMandate.fromJson(json);

      expect(singleUse.amount, equals(2000));
      expect(singleUse.currency, equals('usd'));
    });

    test('should convert SingleUseMandate to JSON', () {
      final singleUse = SingleUseMandate(amount: 5000, currency: 'eur');

      final json = singleUse.toJson();

      expect(json['amount'], equals(5000));
      expect(json['currency'], equals('eur'));
    });

    test('should handle minimum amount', () {
      final singleUse = SingleUseMandate(
        amount: 50, // $0.50 USD
        currency: 'usd',
      );

      final json = singleUse.toJson();
      expect(json['amount'], equals(50));
      expect(json['currency'], equals('usd'));
    });

    test('should handle maximum amount', () {
      final singleUse = SingleUseMandate(
        amount: 99999999, // $999,999.99 USD
        currency: 'usd',
      );

      final json = singleUse.toJson();
      expect(json['amount'], equals(99999999));
      expect(json['currency'], equals('usd'));
    });

    test('should handle zero-decimal currency', () {
      final singleUse = SingleUseMandate(
        amount: 100, // ¥100 JPY
        currency: 'jpy',
      );

      final json = singleUse.toJson();
      expect(json['amount'], equals(100));
      expect(json['currency'], equals('jpy'));
    });

    test('should work with CreateSetupIntentRequest', () {
      final singleUse = SingleUseMandate(amount: 1000, currency: 'usd');

      final request = CreateSetupIntentRequest(
        paymentMethodTypes: [PaymentMethodType.card],
        singleUse: singleUse,
      );

      final json = request.toJson();
      expect(json['single_use']['amount'], equals(1000));
      expect(json['single_use']['currency'], equals('usd'));
    });

    test('should deserialize from CreateSetupIntentRequest JSON', () {
      final json = {
        'payment_method_types': ['card'],
        'single_use': {'amount': 1500, 'currency': 'gbp'},
      };

      final request = CreateSetupIntentRequest.fromJson(json);
      expect(request.singleUse?.amount, equals(1500));
      expect(request.singleUse?.currency, equals('gbp'));
    });
  });
}
