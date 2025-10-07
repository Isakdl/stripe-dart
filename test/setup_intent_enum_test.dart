import 'package:test/test.dart';
import 'package:stripe/stripe.dart';

void main() {
  group('SetupIntent AllowRedirects Enum', () {
    test('should serialize AllowRedirects.always to "always"', () {
      final automaticPaymentMethods = SetupIntentAutomaticPaymentMethods(
        allowRedirects: AllowRedirects.always,
        enabled: true,
      );

      final json = automaticPaymentMethods.toJson();

      expect(json['allow_redirects'], equals('always'));
      expect(json['enabled'], equals(true));
    });

    test('should serialize AllowRedirects.never to "never"', () {
      final automaticPaymentMethods = SetupIntentAutomaticPaymentMethods(
        allowRedirects: AllowRedirects.never,
        enabled: false,
      );

      final json = automaticPaymentMethods.toJson();

      expect(json['allow_redirects'], equals('never'));
      expect(json['enabled'], equals(false));
    });

    test('should deserialize "always" to AllowRedirects.always', () {
      final json = {'allow_redirects': 'always', 'enabled': true};

      final automaticPaymentMethods =
          SetupIntentAutomaticPaymentMethods.fromJson(json);

      expect(
        automaticPaymentMethods.allowRedirects,
        equals(AllowRedirects.always),
      );
      expect(automaticPaymentMethods.enabled, equals(true));
    });

    test('should deserialize "never" to AllowRedirects.never', () {
      final json = {'allow_redirects': 'never', 'enabled': false};

      final automaticPaymentMethods =
          SetupIntentAutomaticPaymentMethods.fromJson(json);

      expect(
        automaticPaymentMethods.allowRedirects,
        equals(AllowRedirects.never),
      );
      expect(automaticPaymentMethods.enabled, equals(false));
    });

    test('should handle null allow_redirects', () {
      final json = {'allow_redirects': null, 'enabled': true};

      final automaticPaymentMethods =
          SetupIntentAutomaticPaymentMethods.fromJson(json);

      expect(automaticPaymentMethods.allowRedirects, isNull);
      expect(automaticPaymentMethods.enabled, equals(true));
    });

    test('should handle missing allow_redirects field', () {
      final json = {'enabled': true};

      final automaticPaymentMethods =
          SetupIntentAutomaticPaymentMethods.fromJson(json);

      expect(automaticPaymentMethods.allowRedirects, isNull);
      expect(automaticPaymentMethods.enabled, equals(true));
    });
  });
}
