import 'package:test/test.dart';
import 'package:stripe/stripe.dart';

void main() {
  group('SetupIntent CancellationReason Enum', () {
    test('should serialize all cancellation reason values correctly', () {
      final reasons = [
        SetupIntentCancellationReason.abandoned,
        SetupIntentCancellationReason.duplicate,
        SetupIntentCancellationReason.requested_by_customer,
      ];

      final expectedValues = [
        'abandoned',
        'duplicate',
        'requested_by_customer',
      ];

      for (int i = 0; i < reasons.length; i++) {
        final inputJson = {
          'id': 'seti_test',
          'object': 'setup_intent',
          'livemode': false,
          'payment_method_types': ['card'],
          'status': 'canceled',
          'usage': 'off_session',
          'cancellation_reason': expectedValues[i],
        };

        final setupIntent = SetupIntent.fromJson(inputJson);
        final outputJson = setupIntent.toJson();
        expect(outputJson['cancellation_reason'], equals(expectedValues[i]));
      }
    });

    test('should deserialize all cancellation reason values correctly', () {
      final reasonValues = ['abandoned', 'duplicate', 'requested_by_customer'];

      final expectedEnums = [
        SetupIntentCancellationReason.abandoned,
        SetupIntentCancellationReason.duplicate,
        SetupIntentCancellationReason.requested_by_customer,
      ];

      for (int i = 0; i < reasonValues.length; i++) {
        final json = {
          'id': 'seti_test',
          'object': 'setup_intent',
          'livemode': false,
          'payment_method_types': ['card'],
          'status': 'canceled',
          'usage': 'off_session',
          'cancellation_reason': reasonValues[i],
        };

        final setupIntent = SetupIntent.fromJson(json);
        expect(setupIntent.cancellationReason, equals(expectedEnums[i]));
      }
    });

    test('should handle abandoned cancellation reason', () {
      final json = {
        'id': 'seti_test',
        'object': 'setup_intent',
        'livemode': false,
        'payment_method_types': ['card'],
        'status': 'canceled',
        'usage': 'off_session',
        'cancellation_reason': 'abandoned',
      };

      final setupIntent = SetupIntent.fromJson(json);
      expect(
        setupIntent.cancellationReason,
        equals(SetupIntentCancellationReason.abandoned),
      );
    });

    test('should handle duplicate cancellation reason', () {
      final json = {
        'id': 'seti_test',
        'object': 'setup_intent',
        'livemode': false,
        'payment_method_types': ['card'],
        'status': 'canceled',
        'usage': 'off_session',
        'cancellation_reason': 'duplicate',
      };

      final setupIntent = SetupIntent.fromJson(json);
      expect(
        setupIntent.cancellationReason,
        equals(SetupIntentCancellationReason.duplicate),
      );
    });

    test('should handle requested_by_customer cancellation reason', () {
      final json = {
        'id': 'seti_test',
        'object': 'setup_intent',
        'livemode': false,
        'payment_method_types': ['card'],
        'status': 'canceled',
        'usage': 'off_session',
        'cancellation_reason': 'requested_by_customer',
      };

      final setupIntent = SetupIntent.fromJson(json);
      expect(
        setupIntent.cancellationReason,
        equals(SetupIntentCancellationReason.requested_by_customer),
      );
    });

    test('should handle null cancellation reason', () {
      final json = {
        'id': 'seti_test',
        'object': 'setup_intent',
        'livemode': false,
        'payment_method_types': ['card'],
        'status': 'requires_payment_method',
        'usage': 'off_session',
        'cancellation_reason': null,
      };

      final setupIntent = SetupIntent.fromJson(json);
      expect(setupIntent.cancellationReason, isNull);
    });

    test('should handle missing cancellation reason field', () {
      final json = {
        'id': 'seti_test',
        'object': 'setup_intent',
        'livemode': false,
        'payment_method_types': ['card'],
        'status': 'requires_payment_method',
        'usage': 'off_session',
      };

      final setupIntent = SetupIntent.fromJson(json);
      expect(setupIntent.cancellationReason, isNull);
    });
  });
}
