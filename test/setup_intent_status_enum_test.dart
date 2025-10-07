import 'package:test/test.dart';
import 'package:stripe/stripe.dart';

void main() {
  group('SetupIntent Status Enum', () {
    test('should serialize all status values correctly', () {
      final statuses = [
        SetupIntentStatus.requires_payment_method,
        SetupIntentStatus.requires_confirmation,
        SetupIntentStatus.requires_action,
        SetupIntentStatus.processing,
        SetupIntentStatus.canceled,
        SetupIntentStatus.succeeded,
      ];

      final expectedValues = [
        'requires_payment_method',
        'requires_confirmation',
        'requires_action',
        'processing',
        'canceled',
        'succeeded',
      ];

      for (int i = 0; i < statuses.length; i++) {
        final inputJson = {
          'id': 'seti_test',
          'object': 'setup_intent',
          'livemode': false,
          'payment_method_types': ['card'],
          'status': expectedValues[i],
          'usage': 'off_session',
        };

        final setupIntent = SetupIntent.fromJson(inputJson);
        final outputJson = setupIntent.toJson();
        expect(outputJson['status'], equals(expectedValues[i]));
      }
    });

    test('should deserialize all status values correctly', () {
      final statusValues = [
        'requires_payment_method',
        'requires_confirmation',
        'requires_action',
        'processing',
        'canceled',
        'succeeded',
      ];

      final expectedEnums = [
        SetupIntentStatus.requires_payment_method,
        SetupIntentStatus.requires_confirmation,
        SetupIntentStatus.requires_action,
        SetupIntentStatus.processing,
        SetupIntentStatus.canceled,
        SetupIntentStatus.succeeded,
      ];

      for (int i = 0; i < statusValues.length; i++) {
        final json = {
          'id': 'seti_test',
          'object': 'setup_intent',
          'livemode': false,
          'payment_method_types': ['card'],
          'status': statusValues[i],
          'usage': 'off_session',
        };

        final setupIntent = SetupIntent.fromJson(json);
        expect(setupIntent.status, equals(expectedEnums[i]));
      }
    });

    test('should handle requires_payment_method status', () {
      final json = {
        'id': 'seti_test',
        'object': 'setup_intent',
        'livemode': false,
        'payment_method_types': ['card'],
        'status': 'requires_payment_method',
        'usage': 'off_session',
      };

      final setupIntent = SetupIntent.fromJson(json);
      expect(
        setupIntent.status,
        equals(SetupIntentStatus.requires_payment_method),
      );
    });

    test('should handle succeeded status', () {
      final json = {
        'id': 'seti_test',
        'object': 'setup_intent',
        'livemode': false,
        'payment_method_types': ['card'],
        'status': 'succeeded',
        'usage': 'off_session',
      };

      final setupIntent = SetupIntent.fromJson(json);
      expect(setupIntent.status, equals(SetupIntentStatus.succeeded));
    });

    test('should handle canceled status', () {
      final json = {
        'id': 'seti_test',
        'object': 'setup_intent',
        'livemode': false,
        'payment_method_types': ['card'],
        'status': 'canceled',
        'usage': 'off_session',
      };

      final setupIntent = SetupIntent.fromJson(json);
      expect(setupIntent.status, equals(SetupIntentStatus.canceled));
    });
  });
}
