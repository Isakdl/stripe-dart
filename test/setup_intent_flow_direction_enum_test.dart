import 'package:test/test.dart';
import 'package:stripe/stripe.dart';

void main() {
  group('SetupIntent FlowDirection Enum', () {
    test('should serialize flow directions array correctly', () {
      final inputJson = {
        'id': 'seti_test',
        'object': 'setup_intent',
        'livemode': false,
        'payment_method_types': ['card'],
        'status': 'requires_payment_method',
        'usage': 'off_session',
        'flow_directions': ['inbound', 'outbound'],
      };

      final setupIntent = SetupIntent.fromJson(inputJson);
      final outputJson = setupIntent.toJson();

      expect(
        setupIntent.flowDirections,
        equals([FlowDirection.inbound, FlowDirection.outbound]),
      );
      expect(outputJson['flow_directions'], equals(['inbound', 'outbound']));
    });

    test('should deserialize single flow direction correctly', () {
      final json = {
        'id': 'seti_test',
        'object': 'setup_intent',
        'livemode': false,
        'payment_method_types': ['card'],
        'status': 'requires_payment_method',
        'usage': 'off_session',
        'flow_directions': ['inbound'],
      };

      final setupIntent = SetupIntent.fromJson(json);
      expect(setupIntent.flowDirections, equals([FlowDirection.inbound]));
    });

    test('should deserialize both flow directions correctly', () {
      final json = {
        'id': 'seti_test',
        'object': 'setup_intent',
        'livemode': false,
        'payment_method_types': ['card'],
        'status': 'requires_payment_method',
        'usage': 'off_session',
        'flow_directions': ['inbound', 'outbound'],
      };

      final setupIntent = SetupIntent.fromJson(json);
      expect(
        setupIntent.flowDirections,
        equals([FlowDirection.inbound, FlowDirection.outbound]),
      );
    });

    test('should deserialize outbound only correctly', () {
      final json = {
        'id': 'seti_test',
        'object': 'setup_intent',
        'livemode': false,
        'payment_method_types': ['card'],
        'status': 'requires_payment_method',
        'usage': 'off_session',
        'flow_directions': ['outbound'],
      };

      final setupIntent = SetupIntent.fromJson(json);
      expect(setupIntent.flowDirections, equals([FlowDirection.outbound]));
    });

    test('should handle null flow directions', () {
      final json = {
        'id': 'seti_test',
        'object': 'setup_intent',
        'livemode': false,
        'payment_method_types': ['card'],
        'status': 'requires_payment_method',
        'usage': 'off_session',
        'flow_directions': null,
      };

      final setupIntent = SetupIntent.fromJson(json);
      expect(setupIntent.flowDirections, isNull);
    });

    test('should handle missing flow directions field', () {
      final json = {
        'id': 'seti_test',
        'object': 'setup_intent',
        'livemode': false,
        'payment_method_types': ['card'],
        'status': 'requires_payment_method',
        'usage': 'off_session',
      };

      final setupIntent = SetupIntent.fromJson(json);
      expect(setupIntent.flowDirections, isNull);
    });

    test('should handle empty flow directions array', () {
      final json = {
        'id': 'seti_test',
        'object': 'setup_intent',
        'livemode': false,
        'payment_method_types': ['card'],
        'status': 'requires_payment_method',
        'usage': 'off_session',
        'flow_directions': [],
      };

      final setupIntent = SetupIntent.fromJson(json);
      expect(setupIntent.flowDirections, equals([]));
    });

    test('should serialize and deserialize all combinations correctly', () {
      final testCases = [
        {
          'input': ['inbound'],
          'expected': [FlowDirection.inbound],
        },
        {
          'input': ['outbound'],
          'expected': [FlowDirection.outbound],
        },
        {
          'input': ['inbound', 'outbound'],
          'expected': [FlowDirection.inbound, FlowDirection.outbound],
        },
        {
          'input': ['outbound', 'inbound'],
          'expected': [FlowDirection.outbound, FlowDirection.inbound],
        },
      ];

      for (final testCase in testCases) {
        final inputJson = {
          'id': 'seti_test',
          'object': 'setup_intent',
          'livemode': false,
          'payment_method_types': ['card'],
          'status': 'requires_payment_method',
          'usage': 'off_session',
          'flow_directions': testCase['input'] as List<String>,
        };

        final setupIntent = SetupIntent.fromJson(inputJson);
        expect(setupIntent.flowDirections, equals(testCase['expected']));

        final outputJson = setupIntent.toJson();
        expect(outputJson['flow_directions'], equals(testCase['input']));
      }
    });
  });
}
