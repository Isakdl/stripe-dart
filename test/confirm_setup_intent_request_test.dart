import 'package:test/test.dart';
import 'package:stripe/stripe.dart';

void main() {
  group('ConfirmSetupIntentRequest', () {
    test('should create ConfirmSetupIntentRequest from JSON', () {
      final json = {
        'confirmation_token': 'pct_1234567890',
        'mandate_data': {
          'customer_acceptance': {
            'type': 'online',
            'accepted_at': 1678918571,
            'online': {
              'ip_address': '192.168.1.1',
              'user_agent':
                  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
            },
          },
        },
        'payment_method': 'pm_1234567890',
        'payment_method_options': {
          'card': {'request_three_d_secure': 'automatic'},
        },
        'return_url': 'https://example.com/return',
        'use_stripe_sdk': true,
      };

      final request = ConfirmSetupIntentRequest.fromJson(json);

      expect(request.confirmationToken, equals('pct_1234567890'));
      expect(request.mandateData, isNotNull);
      expect(
        request.mandateData!['customer_acceptance']['type'],
        equals('online'),
      );
      expect(request.paymentMethod, equals('pm_1234567890'));
      expect(request.paymentMethodOptions, isNotNull);
      expect(
        request.paymentMethodOptions!['card']['request_three_d_secure'],
        equals('automatic'),
      );
      expect(request.returnUrl, equals('https://example.com/return'));
      expect(request.useStripeSdk, equals(true));
    });

    test('should convert ConfirmSetupIntentRequest to JSON', () {
      final request = ConfirmSetupIntentRequest(
        confirmationToken: 'pct_1234567890',
        mandateData: {
          'customer_acceptance': {'type': 'offline', 'offline': {}},
        },
        paymentMethod: 'pm_1234567890',
        paymentMethodOptions: {
          'card': {'request_three_d_secure': 'challenge'},
        },
        returnUrl: 'https://example.com/return',
        useStripeSdk: false,
      );

      final json = request.toJson();

      expect(json['confirmation_token'], equals('pct_1234567890'));
      expect(json['mandate_data'], isNotNull);
      expect(
        json['mandate_data']['customer_acceptance']['type'],
        equals('offline'),
      );
      expect(json['payment_method'], equals('pm_1234567890'));
      expect(json['payment_method_options'], isNotNull);
      expect(
        json['payment_method_options']['card']['request_three_d_secure'],
        equals('challenge'),
      );
      expect(json['return_url'], equals('https://example.com/return'));
      expect(json['use_stripe_sdk'], equals(false));
    });

    test('should handle null values', () {
      final request = ConfirmSetupIntentRequest();

      final json = request.toJson();

      expect(json['confirmation_token'], isNull);
      expect(json['mandate_data'], isNull);
      expect(json['payment_method'], isNull);
      expect(json['payment_method_data'], isNull);
      expect(json['payment_method_options'], isNull);
      expect(json['return_url'], isNull);
      expect(json['use_stripe_sdk'], isNull);
    });

    test('should handle payment method data', () {
      final request = ConfirmSetupIntentRequest(
        paymentMethodData: {
          'type': 'card',
          'card': {
            'brand': 'visa',
            'country': 'US',
            'exp_month': 12,
            'exp_year': 2025,
            'last4': '4242',
          },
        },
      );

      final json = request.toJson();

      expect(json['payment_method_data'], isNotNull);
      expect(json['payment_method_data']['type'], equals('card'));
      expect(json['payment_method_data']['card']['brand'], equals('visa'));
    });

    test('should handle mandate data with online acceptance', () {
      final request = ConfirmSetupIntentRequest(
        mandateData: {
          'customer_acceptance': {
            'type': 'online',
            'accepted_at': 1678918571,
            'online': {
              'ip_address': '192.168.1.1',
              'user_agent':
                  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
            },
          },
        },
      );

      final json = request.toJson();

      expect(
        json['mandate_data']['customer_acceptance']['type'],
        equals('online'),
      );
      expect(
        json['mandate_data']['customer_acceptance']['accepted_at'],
        equals(1678918571),
      );
      expect(
        json['mandate_data']['customer_acceptance']['online']['ip_address'],
        equals('192.168.1.1'),
      );
    });

    test('should handle mandate data with offline acceptance', () {
      final request = ConfirmSetupIntentRequest(
        mandateData: {
          'customer_acceptance': {'type': 'offline', 'offline': {}},
        },
      );

      final json = request.toJson();

      expect(
        json['mandate_data']['customer_acceptance']['type'],
        equals('offline'),
      );
      expect(json['mandate_data']['customer_acceptance']['offline'], isNotNull);
    });

    test('should handle complex payment method options', () {
      final request = ConfirmSetupIntentRequest(
        paymentMethodOptions: {
          'card': {
            'request_three_d_secure': 'automatic',
            'network': 'visa',
            'mandate_options': {
              'amount': 1000,
              'amount_type': 'fixed',
              'currency': 'usd',
              'interval': 'month',
              'reference': 'mandate_123',
              'start_date': 1678918571,
            },
          },
          'sepa_debit': {
            'mandate_options': {'reference_prefix': 'SEPA_REF'},
          },
        },
      );

      final json = request.toJson();

      expect(
        json['payment_method_options']['card']['request_three_d_secure'],
        equals('automatic'),
      );
      expect(json['payment_method_options']['card']['network'], equals('visa'));
      expect(
        json['payment_method_options']['card']['mandate_options']['amount'],
        equals(1000),
      );
      expect(
        json['payment_method_options']['sepa_debit']['mandate_options']['reference_prefix'],
        equals('SEPA_REF'),
      );
    });
  });
}
