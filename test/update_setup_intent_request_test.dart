import 'package:test/test.dart';
import 'package:stripe/stripe.dart';

void main() {
  group('UpdateSetupIntentRequest', () {
    test('should create UpdateSetupIntentRequest from JSON', () {
      final json = {
        'attach_to_self': true,
        'customer': 'cus_1234567890',
        'description': 'Updated setup intent',
        'flow_directions': ['inbound', 'outbound'],
        'metadata': {'order_id': '6735'},
        'payment_method': 'pm_1234567890',
        'payment_method_configuration': 'pmc_1234567890',
        'payment_method_types': ['card'],
        'usage': 'off_session',
      };

      final request = UpdateSetupIntentRequest.fromJson(json);

      expect(request.attachToSelf, equals(true));
      expect(request.customer, equals('cus_1234567890'));
      expect(request.description, equals('Updated setup intent'));
      expect(
        request.flowDirections,
        equals([FlowDirection.inbound, FlowDirection.outbound]),
      );
      expect(request.metadata, equals({'order_id': '6735'}));
      expect(request.paymentMethod, equals('pm_1234567890'));
      expect(request.paymentMethodConfiguration, equals('pmc_1234567890'));
      expect(request.paymentMethodTypes, equals([PaymentMethodType.card]));
      expect(request.usage, equals('off_session'));
    });

    test('should convert UpdateSetupIntentRequest to JSON', () {
      final request = UpdateSetupIntentRequest(
        attachToSelf: false,
        customer: 'cus_1234567890',
        description: 'Updated setup intent',
        flowDirections: [FlowDirection.inbound],
        metadata: {'order_id': '6735'},
        paymentMethod: 'pm_1234567890',
        paymentMethodConfiguration: 'pmc_1234567890',
        paymentMethodTypes: [
          PaymentMethodType.card,
          PaymentMethodType.sepa_debit,
        ],
        usage: 'on_session',
      );

      final json = request.toJson();

      expect(json['attach_to_self'], equals(false));
      expect(json['customer'], equals('cus_1234567890'));
      expect(json['description'], equals('Updated setup intent'));
      expect(json['flow_directions'], equals(['inbound']));
      expect(json['metadata']['order_id'], equals('6735'));
      expect(json['payment_method'], equals('pm_1234567890'));
      expect(json['payment_method_configuration'], equals('pmc_1234567890'));
      expect(json['payment_method_types'], equals(['card', 'sepa_debit']));
      expect(json['usage'], equals('on_session'));
    });

    test('should handle null values', () {
      final request = UpdateSetupIntentRequest();

      final json = request.toJson();

      expect(json['attach_to_self'], isNull);
      expect(json['customer'], isNull);
      expect(json['description'], isNull);
      expect(json['flow_directions'], isNull);
      expect(json['metadata'], isNull);
      expect(json['payment_method'], isNull);
      expect(json['payment_method_configuration'], isNull);
      expect(json['payment_method_data'], isNull);
      expect(json['payment_method_options'], isNull);
      expect(json['payment_method_types'], isNull);
      expect(json['usage'], isNull);
    });

    test('should handle empty payment method to unset field', () {
      final request = UpdateSetupIntentRequest(
        paymentMethod: '', // Empty string to unset the field
      );

      final json = request.toJson();

      expect(json['payment_method'], equals(''));
    });

    test('should handle automatic payment methods', () {
      final request = UpdateSetupIntentRequest(
        automaticPaymentMethods: SetupIntentAutomaticPaymentMethods(
          enabled: true,
          allowRedirects: AllowRedirects.never,
        ),
      );

      final json = request.toJson();

      expect(json['automatic_payment_methods']['enabled'], equals(true));
      expect(
        json['automatic_payment_methods']['allow_redirects'],
        equals('never'),
      );
    });

    test('should handle multiple flow directions', () {
      final request = UpdateSetupIntentRequest(
        flowDirections: [FlowDirection.outbound, FlowDirection.inbound],
      );

      final json = request.toJson();

      expect(json['flow_directions'], equals(['outbound', 'inbound']));
    });

    test('should handle multiple payment method types', () {
      final request = UpdateSetupIntentRequest(
        paymentMethodTypes: [
          PaymentMethodType.card,
          PaymentMethodType.sepa_debit,
          PaymentMethodType.ideal,
        ],
      );

      final json = request.toJson();

      expect(
        json['payment_method_types'],
        equals(['card', 'sepa_debit', 'ideal']),
      );
    });
  });
}
