import 'dart:async';

import 'package:dio/dio.dart';
import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class CustomerResource extends Resource<Customer> {
  CustomerResource(Client client) : super(client);

  Future<Customer> create(CreateCustomerRequest request) async {
    final response = await post('customers', data: request.toJson());
    return Customer.fromJson(response);
  }

  Future<Customer> retrieve(String customerId) async {
    final response = await get('customers/$customerId');
    if (response['deleted'] == true) {
      throw DioException(
        type: DioExceptionType.badResponse,
        requestOptions: RequestOptions(path: 'customers/$customerId'),
        response: Response(
          statusCode: 404,
          data: response,
          requestOptions: RequestOptions(path: 'customers/$customerId'),
        ),
      );
    }
    return Customer.fromJson(response);
  }

  Future<Customer> update(UpdateCustomerRequest request) async {
    final response =
        await post('customers/${request.id}', data: request.toJson());
    return Customer.fromJson(response);
  }

  Future<void> remove(String customerId) async {
    await delete('customers/$customerId');
  }

  Future<DataList<Customer>> search({
    /// https://docs.stripe.com/search#query-fields-for-customers
    required String queryString,
  }) async {
    final Map<String, dynamic> map = await get(
      'customers/search',
      queryParameters: {'query': queryString},
    );

    final customer = DataList<Customer>.fromJson(
      map,
      (customerMap) => Customer.fromJson(customerMap as Map<String, dynamic>),
    );

    return customer;
  }
}
