import 'dart:async';

import 'package:logging/logging.dart';
import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

final log = Logger('Stripe SetupIntentResource');

class SetupIntentResource extends Resource<SetupIntent> {
  SetupIntentResource(Client client) : super(client);

  Future<SetupIntent> create(CreateSetupIntentRequest request) async {
    final response = await post('setup_intents', data: request.toJson());
    return SetupIntent.fromJson(response);
  }

  Future<SetupIntent> retrieve(String setupIntentId) async {
    final map = await get('setup_intents/$setupIntentId');
    return SetupIntent.fromJson(map);
  }

  Future<SetupIntent> update(
    String setupIntentId,
    UpdateSetupIntentRequest request,
  ) async {
    final response = await post(
      'setup_intents/$setupIntentId',
      data: request.toJson(),
    );
    return SetupIntent.fromJson(response);
  }

  Future<SetupIntent> confirm(
    String setupIntentId,
    ConfirmSetupIntentRequest request,
  ) async {
    final response = await post(
      'setup_intents/$setupIntentId/confirm',
      data: request.toJson(),
    );
    return SetupIntent.fromJson(response);
  }

  /// Returns true if successful.
  Future<bool> cancel(String setupIntentId) async {
    try {
      await post('setup_intents/$setupIntentId/cancel');
    } catch (e) {
      log.warning(e);
      return false;
    }
    return true;
  }

  Future<DataList<SetupIntent>> list({
    String? customer,
    int? limit,
    String? startingAfter,
    String? endingBefore,
  }) async {
    final Map<String, dynamic> queryParams = {};
    if (customer != null) queryParams['customer'] = customer;
    if (limit != null) queryParams['limit'] = limit;
    if (startingAfter != null) queryParams['starting_after'] = startingAfter;
    if (endingBefore != null) queryParams['ending_before'] = endingBefore;

    final Map<String, dynamic> map = await get(
      'setup_intents',
      queryParameters: queryParams,
    );

    final setupIntents = DataList<SetupIntent>.fromJson(
      map,
      (setupIntentMap) =>
          SetupIntent.fromJson(setupIntentMap as Map<String, dynamic>),
    );

    return setupIntents;
  }

  Future<DataList<SetupIntent>> search({
    /// https://docs.stripe.com/search#query-fields-for-setup-intents
    required String queryString,
  }) async {
    final Map<String, dynamic> map = await get(
      'setup_intents/search',
      queryParameters: {'query': queryString},
    );

    final setupIntents = DataList<SetupIntent>.fromJson(
      map,
      (setupIntentMap) =>
          SetupIntent.fromJson(setupIntentMap as Map<String, dynamic>),
    );

    return setupIntents;
  }
}
