// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      city: json['city'] as String?,
      country: json['country'] as String?,
      line1: json['line1'] as String?,
      line2: json['line2'] as String?,
      postalCode: json['postal_code'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      if (instance.city case final value?) 'city': value,
      if (instance.country case final value?) 'country': value,
      if (instance.line1 case final value?) 'line1': value,
      if (instance.line2 case final value?) 'line2': value,
      if (instance.postalCode case final value?) 'postal_code': value,
      if (instance.state case final value?) 'state': value,
    };

BalanceTransaction _$BalanceTransactionFromJson(Map<String, dynamic> json) =>
    BalanceTransaction(
      object: $enumDecode(_$_BalanceTransactionObjectEnumMap, json['object']),
      id: json['id'] as String,
      amount: (json['amount'] as num).toInt(),
      fee: (json['fee'] as num).toInt(),
      feeDetails: (json['fee_details'] as List<dynamic>)
          .map((e) => FeeDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      net: (json['net'] as num).toInt(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$BalanceTransactionToJson(BalanceTransaction instance) =>
    <String, dynamic>{
      'object': _$_BalanceTransactionObjectEnumMap[instance.object]!,
      'id': instance.id,
      'amount': instance.amount,
      'fee': instance.fee,
      'fee_details': instance.feeDetails.map((e) => e.toJson()).toList(),
      'net': instance.net,
      'currency': instance.currency,
    };

const _$_BalanceTransactionObjectEnumMap = {
  _BalanceTransactionObject.balance_transaction: 'balance_transaction',
};

FeeDetails _$FeeDetailsFromJson(Map<String, dynamic> json) => FeeDetails(
      amount: (json['amount'] as num).toInt(),
      application: json['application'] as String?,
      currency: json['currency'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$FeeDetailsToJson(FeeDetails instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      if (instance.application case final value?) 'application': value,
      'currency': instance.currency,
      'description': instance.description,
      'type': instance.type,
    };

BillingDetails _$BillingDetailsFromJson(Map<String, dynamic> json) =>
    BillingDetails(
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      email: json['email'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$BillingDetailsToJson(BillingDetails instance) =>
    <String, dynamic>{
      if (instance.address?.toJson() case final value?) 'address': value,
      if (instance.email case final value?) 'email': value,
      if (instance.name case final value?) 'name': value,
      if (instance.phone case final value?) 'phone': value,
    };

Charge _$ChargeFromJson(Map<String, dynamic> json) => Charge(
      object: $enumDecode(_$_ChargeObjectEnumMap, json['object']),
      id: json['id'] as String,
      balanceTransaction: json['balance_transaction'] as String,
      paymentMethodDetails: PaymentMethodDetails.fromJson(
          json['payment_method_details'] as Map<String, dynamic>),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$ChargeToJson(Charge instance) => <String, dynamic>{
      'object': _$_ChargeObjectEnumMap[instance.object]!,
      'id': instance.id,
      'balance_transaction': instance.balanceTransaction,
      'payment_method_details': instance.paymentMethodDetails.toJson(),
      'livemode': instance.livemode,
    };

const _$_ChargeObjectEnumMap = {
  _ChargeObject.charge: 'charge',
};

PaymentMethodDetails _$PaymentMethodDetailsFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodDetails(
      card: json['card'] == null
          ? null
          : PaymentMethodDetailsCard.fromJson(
              json['card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentMethodDetailsToJson(
        PaymentMethodDetails instance) =>
    <String, dynamic>{
      if (instance.card?.toJson() case final value?) 'card': value,
    };

PaymentMethodDetailsCard _$PaymentMethodDetailsCardFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodDetailsCard(
      brand: json['brand'] as String,
      last4: json['last4'] as String,
    );

Map<String, dynamic> _$PaymentMethodDetailsCardToJson(
        PaymentMethodDetailsCard instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'last4': instance.last4,
    };

CheckoutSession _$CheckoutSessionFromJson(Map<String, dynamic> json) =>
    CheckoutSession(
      object: json['object'] as String,
      id: json['id'] as String,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>)
          .map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toList(),
      clientReferenceId: json['client_reference_id'] as String?,
      customer: json['customer'] as String?,
      paymentIntent: json['payment_intent'] as String?,
      status: json['status'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$CheckoutSessionToJson(CheckoutSession instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      if (instance.clientReferenceId case final value?)
        'client_reference_id': value,
      if (instance.customer case final value?) 'customer': value,
      if (instance.paymentIntent case final value?) 'payment_intent': value,
      'payment_method_types': instance.paymentMethodTypes
          .map((e) => _$PaymentMethodTypeEnumMap[e]!)
          .toList(),
      if (instance.status case final value?) 'status': value,
      if (instance.url case final value?) 'url': value,
    };

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.acss_debit: 'acss_debit',
  PaymentMethodType.affirm: 'affirm',
  PaymentMethodType.afterpay_clearpay: 'afterpay_clearpay',
  PaymentMethodType.alipay: 'alipay',
  PaymentMethodType.amazon_pay: 'amazon_pay',
  PaymentMethodType.au_becs_debit: 'au_becs_debit',
  PaymentMethodType.bacs_debit: 'bacs_debit',
  PaymentMethodType.bancontact: 'bancontact',
  PaymentMethodType.blik: 'blik',
  PaymentMethodType.boleto: 'boleto',
  PaymentMethodType.card: 'card',
  PaymentMethodType.cashapp: 'cashapp',
  PaymentMethodType.customer_balance: 'customer_balance',
  PaymentMethodType.eps: 'eps',
  PaymentMethodType.fpx: 'fpx',
  PaymentMethodType.giropay: 'giropay',
  PaymentMethodType.grabpay: 'grabpay',
  PaymentMethodType.ideal: 'ideal',
  PaymentMethodType.klarna: 'klarna',
  PaymentMethodType.konbini: 'konbini',
  PaymentMethodType.link: 'link',
  PaymentMethodType.oxxo: 'oxxo',
  PaymentMethodType.p24: 'p24',
  PaymentMethodType.paynow: 'paynow',
  PaymentMethodType.pix: 'pix',
  PaymentMethodType.promptpay: 'promptpay',
  PaymentMethodType.sepa_debit: 'sepa_debit',
  PaymentMethodType.sofort: 'sofort',
  PaymentMethodType.us_bank_account: 'us_bank_account',
  PaymentMethodType.wechat_pay: 'wechat_pay',
};

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      object: $enumDecode(_$_CustomerObjectEnumMap, json['object']),
      id: json['id'] as String,
      invoiceSettings: InvoiceSettings.fromJson(
          json['invoice_settings'] as Map<String, dynamic>),
      description: json['description'] as String?,
      email: json['email'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'object': _$_CustomerObjectEnumMap[instance.object]!,
      'id': instance.id,
      'invoice_settings': instance.invoiceSettings.toJson(),
      if (instance.description case final value?) 'description': value,
      if (instance.email case final value?) 'email': value,
      if (instance.metadata case final value?) 'metadata': value,
      if (instance.name case final value?) 'name': value,
    };

const _$_CustomerObjectEnumMap = {
  _CustomerObject.customer: 'customer',
};

InvoiceSettings _$InvoiceSettingsFromJson(Map<String, dynamic> json) =>
    InvoiceSettings(
      defaultPaymentMethod: json['default_payment_method'] as String?,
    );

Map<String, dynamic> _$InvoiceSettingsToJson(InvoiceSettings instance) =>
    <String, dynamic>{
      if (instance.defaultPaymentMethod case final value?)
        'default_payment_method': value,
    };

DataList<T> _$DataListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    DataList<T>(
      object: $enumDecode(_$_SubListObjectEnumMap, json['object']),
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      hasMore: json['has_more'] as bool,
      url: json['url'] as String,
    );

Map<String, dynamic> _$DataListToJson<T>(
  DataList<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'object': _$_SubListObjectEnumMap[instance.object]!,
      'data': instance.data.map(toJsonT).toList(),
      'has_more': instance.hasMore,
      'url': instance.url,
    };

const _$_SubListObjectEnumMap = {
  _SubListObject.list: 'list',
  _SubListObject.searchResult: 'search_result',
};

EventData<T> _$EventDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    EventData<T>(
      object: fromJsonT(json['object']),
      previousAttributes: json['previous_attributes'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$EventDataToJson<T>(
  EventData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'object': toJsonT(instance.object),
      if (instance.previousAttributes case final value?)
        'previous_attributes': value,
    };

SubscriptionEvent _$SubscriptionEventFromJson(Map<String, dynamic> json) =>
    SubscriptionEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: (json['created'] as num).toInt(),
      type: json['type'] as String,
      data: EventData<Subscription>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => Subscription.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$SubscriptionEventToJson(SubscriptionEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

const _$_EventObjectEnumMap = {
  _EventObject.event: 'event',
};

CustomerEvent _$CustomerEventFromJson(Map<String, dynamic> json) =>
    CustomerEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: (json['created'] as num).toInt(),
      type: json['type'] as String,
      data: EventData<Customer>.fromJson(json['data'] as Map<String, dynamic>,
          (value) => Customer.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$CustomerEventToJson(CustomerEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

ChargeEvent _$ChargeEventFromJson(Map<String, dynamic> json) => ChargeEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: (json['created'] as num).toInt(),
      type: json['type'] as String,
      data: EventData<Charge>.fromJson(json['data'] as Map<String, dynamic>,
          (value) => Charge.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$ChargeEventToJson(ChargeEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

PaymentIntentEvent _$PaymentIntentEventFromJson(Map<String, dynamic> json) =>
    PaymentIntentEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: (json['created'] as num).toInt(),
      type: json['type'] as String,
      data: EventData<PaymentIntent>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => PaymentIntent.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$PaymentIntentEventToJson(PaymentIntentEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

RefundEvent _$RefundEventFromJson(Map<String, dynamic> json) => RefundEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: (json['created'] as num).toInt(),
      type: json['type'] as String,
      data: EventData<Refund>.fromJson(json['data'] as Map<String, dynamic>,
          (value) => Refund.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$RefundEventToJson(RefundEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

CheckoutSessionEvent _$CheckoutSessionEventFromJson(
        Map<String, dynamic> json) =>
    CheckoutSessionEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: (json['created'] as num).toInt(),
      type: json['type'] as String,
      data: EventData<CheckoutSession>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => CheckoutSession.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$CheckoutSessionEventToJson(
        CheckoutSessionEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

PaymentMethodEvent _$PaymentMethodEventFromJson(Map<String, dynamic> json) =>
    PaymentMethodEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: (json['created'] as num).toInt(),
      type: json['type'] as String,
      data: EventData<PaymentMethod>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => PaymentMethod.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$PaymentMethodEventToJson(PaymentMethodEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

InvoiceEvent _$InvoiceEventFromJson(Map<String, dynamic> json) => InvoiceEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: (json['created'] as num).toInt(),
      type: json['type'] as String,
      data: EventData<Invoice>.fromJson(json['data'] as Map<String, dynamic>,
          (value) => Invoice.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$InvoiceEventToJson(InvoiceEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
      id: json['id'] as String,
      currency: json['currency'] as String,
      customer: json['customer'] as String,
      total: (json['total'] as num).toInt(),
      description: json['description'] as String?,
      hostedInvoiceUrl: json['hosted_invoice_url'] as String?,
      status: json['status'] as String?,
      subscription: json['subscription'] as String?,
      paymentIntent: json['payment_intent'] as String?,
      accountCountry: json['account_country'] as String?,
      accountName: json['account_name'] as String?,
    );

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
      'id': instance.id,
      'currency': instance.currency,
      'customer': instance.customer,
      'total': instance.total,
      if (instance.description case final value?) 'description': value,
      if (instance.hostedInvoiceUrl case final value?)
        'hosted_invoice_url': value,
      if (instance.status case final value?) 'status': value,
      if (instance.subscription case final value?) 'subscription': value,
      if (instance.paymentIntent case final value?) 'payment_intent': value,
      if (instance.accountCountry case final value?) 'account_country': value,
      if (instance.accountName case final value?) 'account_name': value,
    };

PaymentIntent _$PaymentIntentFromJson(Map<String, dynamic> json) =>
    PaymentIntent(
      object: $enumDecode(_$_PaymentIntentObjectEnumMap, json['object']),
      id: json['id'] as String,
      amount: (json['amount'] as num).toInt(),
      amountReceived: (json['amount_received'] as num).toInt(),
      clientSecret: json['client_secret'] as String,
      currency: json['currency'] as String,
      status: json['status'] as String,
      automaticPaymentMethods: json['automatic_payment_methods'] == null
          ? const AutomaticPaymentMethods()
          : AutomaticPaymentMethods.fromJson(
              json['automatic_payment_methods'] as Map<String, dynamic>),
      canceledAt: _$JsonConverterFromJson<int, DateTime>(
          json['canceled_at'], const TimestampConverter().fromJson),
      created: _$JsonConverterFromJson<int, DateTime>(
          json['created'], const TimestampConverter().fromJson),
      customer: json['customer'] as String?,
      description: json['description'] as String?,
      latestCharge: json['latest_charge'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      paymentMethod: json['payment_method'] as String?,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toSet(),
      receiptEmail: json['receipt_email'] as String?,
      setupFutureUsage: $enumDecodeNullable(
          _$SetupFutureUsageEnumMap, json['setup_future_usage']),
      shipping: json['shipping'] == null
          ? null
          : ShippingSpecification.fromJson(
              json['shipping'] as Map<String, dynamic>),
      statementDescriptor: json['statement_descriptor'] as String?,
      statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
    );

Map<String, dynamic> _$PaymentIntentToJson(PaymentIntent instance) =>
    <String, dynamic>{
      'object': _$_PaymentIntentObjectEnumMap[instance.object]!,
      'id': instance.id,
      'amount': instance.amount,
      'amount_received': instance.amountReceived,
      'automatic_payment_methods': instance.automaticPaymentMethods.toJson(),
      'client_secret': instance.clientSecret,
      'currency': instance.currency,
      'status': instance.status,
      if (_$JsonConverterToJson<int, DateTime>(
              instance.canceledAt, const TimestampConverter().toJson)
          case final value?)
        'canceled_at': value,
      if (_$JsonConverterToJson<int, DateTime>(
              instance.created, const TimestampConverter().toJson)
          case final value?)
        'created': value,
      if (instance.customer case final value?) 'customer': value,
      if (instance.description case final value?) 'description': value,
      if (instance.latestCharge case final value?) 'latest_charge': value,
      if (instance.metadata case final value?) 'metadata': value,
      if (instance.paymentMethod case final value?) 'payment_method': value,
      if (instance.paymentMethodTypes
              ?.map((e) => _$PaymentMethodTypeEnumMap[e]!)
              .toList()
          case final value?)
        'payment_method_types': value,
      if (instance.receiptEmail case final value?) 'receipt_email': value,
      if (_$SetupFutureUsageEnumMap[instance.setupFutureUsage]
          case final value?)
        'setup_future_usage': value,
      if (instance.shipping?.toJson() case final value?) 'shipping': value,
      if (instance.statementDescriptor case final value?)
        'statement_descriptor': value,
      if (instance.statementDescriptorSuffix case final value?)
        'statement_descriptor_suffix': value,
    };

const _$_PaymentIntentObjectEnumMap = {
  _PaymentIntentObject.payment_intent: 'payment_intent',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$SetupFutureUsageEnumMap = {
  SetupFutureUsage.on_session: 'on_session',
  SetupFutureUsage.off_session: 'off_session',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

AutomaticPaymentMethods _$AutomaticPaymentMethodsFromJson(
        Map<String, dynamic> json) =>
    AutomaticPaymentMethods(
      enabled: json['enabled'] as bool? ?? false,
    );

Map<String, dynamic> _$AutomaticPaymentMethodsToJson(
        AutomaticPaymentMethods instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    PaymentMethod(
      id: json['id'] as String,
      livemode: json['livemode'] as bool,
      type: json['type'] as String,
      billingDetails: BillingDetails.fromJson(
          json['billing_details'] as Map<String, dynamic>),
      customer: json['customer'] as String?,
      card: json['card'] == null
          ? null
          : PaymentMethodCard.fromJson(json['card'] as Map<String, dynamic>),
      usBankAccount: json['us_bank_account'] == null
          ? null
          : PaymentMethodUsBankAccount.fromJson(
              json['us_bank_account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'livemode': instance.livemode,
      'type': instance.type,
      'billing_details': instance.billingDetails.toJson(),
      if (instance.customer case final value?) 'customer': value,
      if (instance.card?.toJson() case final value?) 'card': value,
      if (instance.usBankAccount?.toJson() case final value?)
        'us_bank_account': value,
    };

PaymentMethodCard _$PaymentMethodCardFromJson(Map<String, dynamic> json) =>
    PaymentMethodCard(
      brand: json['brand'] as String,
      last4: json['last4'] as String,
      expMonth: (json['exp_month'] as num).toInt(),
      expYear: (json['exp_year'] as num).toInt(),
      wallet: json['wallet'] == null
          ? null
          : Wallet.fromJson(json['wallet'] as Map<String, dynamic>),
      displayBrand: json['display_brand'] as String?,
      fingerprint: json['fingerprint'] as String?,
    );

Map<String, dynamic> _$PaymentMethodCardToJson(PaymentMethodCard instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'last4': instance.last4,
      'exp_month': instance.expMonth,
      'exp_year': instance.expYear,
      if (instance.wallet?.toJson() case final value?) 'wallet': value,
      if (instance.displayBrand case final value?) 'display_brand': value,
      if (instance.fingerprint case final value?) 'fingerprint': value,
    };

Wallet _$WalletFromJson(Map<String, dynamic> json) => Wallet(
      type: json['type'] as String,
      dynamicLast4: json['dynamic_last4'] as String?,
    );

Map<String, dynamic> _$WalletToJson(Wallet instance) => <String, dynamic>{
      'type': instance.type,
      if (instance.dynamicLast4 case final value?) 'dynamic_last4': value,
    };

PaymentMethodUsBankAccount _$PaymentMethodUsBankAccountFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodUsBankAccount(
      bankName: json['bank_name'] as String?,
      fingerprint: json['fingerprint'] as String?,
      last4: json['last4'] as String?,
      routingNumber: json['routing_number'] as String?,
    );

Map<String, dynamic> _$PaymentMethodUsBankAccountToJson(
        PaymentMethodUsBankAccount instance) =>
    <String, dynamic>{
      if (instance.bankName case final value?) 'bank_name': value,
      if (instance.fingerprint case final value?) 'fingerprint': value,
      if (instance.last4 case final value?) 'last4': value,
      if (instance.routingNumber case final value?) 'routing_number': value,
    };

PortalSession _$PortalSessionFromJson(Map<String, dynamic> json) =>
    PortalSession(
      object: json['object'] as String,
      id: json['id'] as String,
      customer: json['customer'] as String,
      livemode: json['livemode'] as bool,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PortalSessionToJson(PortalSession instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'customer': instance.customer,
      'livemode': instance.livemode,
      'url': instance.url,
    };

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
      object: $enumDecode(_$_PriceObjectEnumMap, json['object']),
      id: json['id'] as String,
      active: json['active'] as bool,
      currency: json['currency'] as String,
      product: json['product'] as String,
      type: $enumDecode(_$PriceTypeEnumMap, json['type']),
      recurring: json['recurring'] == null
          ? null
          : Recurring.fromJson(json['recurring'] as Map<String, dynamic>),
      unitAmount: (json['unit_amount'] as num).toInt(),
    );

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'object': _$_PriceObjectEnumMap[instance.object]!,
      'id': instance.id,
      'active': instance.active,
      'currency': instance.currency,
      'product': instance.product,
      'type': _$PriceTypeEnumMap[instance.type]!,
      if (instance.recurring?.toJson() case final value?) 'recurring': value,
      'unit_amount': instance.unitAmount,
    };

const _$_PriceObjectEnumMap = {
  _PriceObject.price: 'price',
};

const _$PriceTypeEnumMap = {
  PriceType.one_time: 'one_time',
  PriceType.recurring: 'recurring',
};

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      object: $enumDecode(_$_ProductObjectEnumMap, json['object']),
      id: json['id'] as String,
      active: json['active'] as bool,
      description: json['description'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      name: json['name'] as String,
      defaultPrice: json['default_price'] as String?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'object': _$_ProductObjectEnumMap[instance.object]!,
      'id': instance.id,
      'active': instance.active,
      if (instance.description case final value?) 'description': value,
      if (instance.metadata case final value?) 'metadata': value,
      'name': instance.name,
      if (instance.defaultPrice case final value?) 'default_price': value,
    };

const _$_ProductObjectEnumMap = {
  _ProductObject.product: 'product',
};

Refund _$RefundFromJson(Map<String, dynamic> json) => Refund(
      object: $enumDecode(_$_RefundObjectEnumMap, json['object']),
      id: json['id'] as String,
    );

Map<String, dynamic> _$RefundToJson(Refund instance) => <String, dynamic>{
      'object': _$_RefundObjectEnumMap[instance.object]!,
      'id': instance.id,
    };

const _$_RefundObjectEnumMap = {
  _RefundObject.refund: 'refund',
};

CreateCheckoutSessionRequest _$CreateCheckoutSessionRequestFromJson(
        Map<String, dynamic> json) =>
    CreateCheckoutSessionRequest(
      successUrl: json['success_url'] as String,
      cancelUrl: json['cancel_url'] as String,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>)
          .map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toList(),
      mode: $enumDecodeNullable(_$SessionModeEnumMap, json['mode']),
      clientReferenceId: json['client_reference_id'] as String?,
      customerEmail: json['customer_email'] as String?,
      customer: json['customer'] as String?,
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      billingAddressCollection: $enumDecodeNullable(
          _$BillingAddressCollectionEnumMap,
          json['billing_address_collection']),
      automaticTax: json['automatic_tax'] == null
          ? null
          : AutomaticTax.fromJson(
              json['automatic_tax'] as Map<String, dynamic>),
      taxIdCollection: json['tax_id_collection'] == null
          ? null
          : TaxIdCollection.fromJson(
              json['tax_id_collection'] as Map<String, dynamic>),
      paymentIntentData: json['payment_intent_data'] == null
          ? null
          : PaymentIntentData.fromJson(
              json['payment_intent_data'] as Map<String, dynamic>),
      subscriptionData: json['subscription_data'] == null
          ? null
          : SubscriptionData.fromJson(
              json['subscription_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCheckoutSessionRequestToJson(
        CreateCheckoutSessionRequest instance) =>
    <String, dynamic>{
      'success_url': instance.successUrl,
      'cancel_url': instance.cancelUrl,
      if (_$SessionModeEnumMap[instance.mode] case final value?) 'mode': value,
      'payment_method_types': instance.paymentMethodTypes
          .map((e) => _$PaymentMethodTypeEnumMap[e]!)
          .toList(),
      if (instance.clientReferenceId case final value?)
        'client_reference_id': value,
      if (instance.customerEmail case final value?) 'customer_email': value,
      if (instance.customer case final value?) 'customer': value,
      if (instance.lineItems?.map((e) => e.toJson()).toList() case final value?)
        'line_items': value,
      if (_$BillingAddressCollectionEnumMap[instance.billingAddressCollection]
          case final value?)
        'billing_address_collection': value,
      if (instance.automaticTax?.toJson() case final value?)
        'automatic_tax': value,
      if (instance.taxIdCollection?.toJson() case final value?)
        'tax_id_collection': value,
      if (instance.paymentIntentData?.toJson() case final value?)
        'payment_intent_data': value,
      if (instance.subscriptionData?.toJson() case final value?)
        'subscription_data': value,
    };

const _$SessionModeEnumMap = {
  SessionMode.payment: 'payment',
  SessionMode.setup: 'setup',
  SessionMode.subscription: 'subscription',
};

const _$BillingAddressCollectionEnumMap = {
  BillingAddressCollection.auto: 'auto',
  BillingAddressCollection.required: 'required',
};

LineItem _$LineItemFromJson(Map<String, dynamic> json) => LineItem(
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      quantity: (json['quantity'] as num?)?.toInt(),
      description: json['description'] as String?,
      price: json['price'] as String?,
      priceData: json['price_data'] == null
          ? null
          : PriceData.fromJson(json['price_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LineItemToJson(LineItem instance) => <String, dynamic>{
      if (instance.images case final value?) 'images': value,
      if (instance.quantity case final value?) 'quantity': value,
      if (instance.description case final value?) 'description': value,
      if (instance.priceData?.toJson() case final value?) 'price_data': value,
      if (instance.price case final value?) 'price': value,
    };

PriceData _$PriceDataFromJson(Map<String, dynamic> json) => PriceData(
      currency: json['currency'] as String,
      product: json['product'] as String?,
      unitAmount: (json['unit_amount'] as num?)?.toInt(),
      productData: json['product_data'] == null
          ? null
          : ProductData.fromJson(json['product_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PriceDataToJson(PriceData instance) => <String, dynamic>{
      'currency': instance.currency,
      if (instance.product case final value?) 'product': value,
      if (instance.unitAmount case final value?) 'unit_amount': value,
      if (instance.productData?.toJson() case final value?)
        'product_data': value,
    };

ProductData _$ProductDataFromJson(Map<String, dynamic> json) => ProductData(
      name: json['name'] as String,
      description: json['description'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
    <String, dynamic>{
      'name': instance.name,
      if (instance.description case final value?) 'description': value,
      if (instance.images case final value?) 'images': value,
    };

AutomaticTax _$AutomaticTaxFromJson(Map<String, dynamic> json) => AutomaticTax(
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$AutomaticTaxToJson(AutomaticTax instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };

TaxIdCollection _$TaxIdCollectionFromJson(Map<String, dynamic> json) =>
    TaxIdCollection(
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$TaxIdCollectionToJson(TaxIdCollection instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };

PaymentIntentData _$PaymentIntentDataFromJson(Map<String, dynamic> json) =>
    PaymentIntentData(
      receiptEmail: json['receipt_email'] as String?,
      setupFutureUsage: $enumDecodeNullable(
          _$SetupFutureUsageEnumMap, json['setup_future_usage']),
    );

Map<String, dynamic> _$PaymentIntentDataToJson(PaymentIntentData instance) =>
    <String, dynamic>{
      if (instance.receiptEmail case final value?) 'receipt_email': value,
      if (_$SetupFutureUsageEnumMap[instance.setupFutureUsage]
          case final value?)
        'setup_future_usage': value,
    };

SubscriptionData _$SubscriptionDataFromJson(Map<String, dynamic> json) =>
    SubscriptionData(
      trialEnd: (json['trial_end'] as num?)?.toInt(),
      trialPeriodDays: (json['trial_period_days'] as num?)?.toInt(),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$SubscriptionDataToJson(SubscriptionData instance) =>
    <String, dynamic>{
      if (instance.trialEnd case final value?) 'trial_end': value,
      if (instance.trialPeriodDays case final value?)
        'trial_period_days': value,
      if (instance.metadata case final value?) 'metadata': value,
    };

CreateCustomerRequest _$CreateCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    CreateCustomerRequest(
      description: json['description'] as String?,
      email: json['email'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      name: json['name'] as String?,
      paymentMethod: json['payment_method'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$CreateCustomerRequestToJson(
        CreateCustomerRequest instance) =>
    <String, dynamic>{
      if (instance.description case final value?) 'description': value,
      if (instance.email case final value?) 'email': value,
      if (instance.metadata case final value?) 'metadata': value,
      if (instance.name case final value?) 'name': value,
      if (instance.paymentMethod case final value?) 'payment_method': value,
      if (instance.phoneNumber case final value?) 'phone_number': value,
    };

CreatePaymentIntentRequest _$CreatePaymentIntentRequestFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentIntentRequest(
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String,
      automaticPaymentMethods: json['automatic_payment_methods'] == null
          ? null
          : AutomaticPaymentMethods.fromJson(
              json['automatic_payment_methods'] as Map<String, dynamic>),
      confirm: json['confirm'] as bool?,
      customer: json['customer'] as String?,
      description: json['description'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      offSession: json['off_session'] as bool?,
      paymentMethod: json['payment_method'] as String?,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toSet(),
      receiptEmail: json['receipt_email'] as String?,
      setupFutureUsage: $enumDecodeNullable(
          _$SetupFutureUsageEnumMap, json['setup_future_usage']),
      shipping: json['shipping'] == null
          ? null
          : ShippingSpecification.fromJson(
              json['shipping'] as Map<String, dynamic>),
      statementDescriptor: json['statement_descriptor'] as String?,
      statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
    );

Map<String, dynamic> _$CreatePaymentIntentRequestToJson(
        CreatePaymentIntentRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      if (instance.automaticPaymentMethods?.toJson() case final value?)
        'automatic_payment_methods': value,
      'currency': instance.currency,
      if (instance.confirm case final value?) 'confirm': value,
      if (instance.customer case final value?) 'customer': value,
      if (instance.description case final value?) 'description': value,
      if (instance.metadata case final value?) 'metadata': value,
      if (instance.offSession case final value?) 'off_session': value,
      if (instance.paymentMethod case final value?) 'payment_method': value,
      if (instance.paymentMethodTypes
              ?.map((e) => _$PaymentMethodTypeEnumMap[e]!)
              .toList()
          case final value?)
        'payment_method_types': value,
      if (instance.receiptEmail case final value?) 'receipt_email': value,
      if (_$SetupFutureUsageEnumMap[instance.setupFutureUsage]
          case final value?)
        'setup_future_usage': value,
      if (instance.shipping?.toJson() case final value?) 'shipping': value,
      if (instance.statementDescriptor case final value?)
        'statement_descriptor': value,
      if (instance.statementDescriptorSuffix case final value?)
        'statement_descriptor_suffix': value,
    };

CreatePortalSessionRequest _$CreatePortalSessionRequestFromJson(
        Map<String, dynamic> json) =>
    CreatePortalSessionRequest(
      customer: json['customer'] as String,
      returnUrl: json['return_url'] as String?,
    );

Map<String, dynamic> _$CreatePortalSessionRequestToJson(
        CreatePortalSessionRequest instance) =>
    <String, dynamic>{
      'customer': instance.customer,
      if (instance.returnUrl case final value?) 'return_url': value,
    };

CreatePriceRequest _$CreatePriceRequestFromJson(Map<String, dynamic> json) =>
    CreatePriceRequest(
      currency: json['currency'] as String,
      product: json['product'] as String?,
      unitAmount: (json['unit_amount'] as num?)?.toInt(),
      active: json['active'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      nickname: json['nickname'] as String?,
      recurring: json['recurring'] == null
          ? null
          : Recurring.fromJson(json['recurring'] as Map<String, dynamic>),
      parameters: json['parameters'] == null
          ? null
          : PriceParameters.fromJson(
              json['parameters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreatePriceRequestToJson(CreatePriceRequest instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      if (instance.product case final value?) 'product': value,
      if (instance.unitAmount case final value?) 'unit_amount': value,
      if (instance.active case final value?) 'active': value,
      if (instance.metadata case final value?) 'metadata': value,
      if (instance.nickname case final value?) 'nickname': value,
      if (instance.recurring?.toJson() case final value?) 'recurring': value,
      if (instance.parameters?.toJson() case final value?) 'parameters': value,
    };

Recurring _$RecurringFromJson(Map<String, dynamic> json) => Recurring(
      interval: $enumDecode(_$RecurringIntervalEnumMap, json['interval']),
      aggregateUsage:
          $enumDecodeNullable(_$AggregateUsageEnumMap, json['aggregate_usage']),
      intervalCount: (json['interval_count'] as num?)?.toInt(),
      usageType: json['usage_type'] as String?,
    );

Map<String, dynamic> _$RecurringToJson(Recurring instance) => <String, dynamic>{
      'interval': _$RecurringIntervalEnumMap[instance.interval]!,
      if (_$AggregateUsageEnumMap[instance.aggregateUsage] case final value?)
        'aggregate_usage': value,
      if (instance.intervalCount case final value?) 'interval_count': value,
      if (instance.usageType case final value?) 'usage_type': value,
    };

const _$RecurringIntervalEnumMap = {
  RecurringInterval.day: 'day',
  RecurringInterval.week: 'week',
  RecurringInterval.month: 'month',
  RecurringInterval.year: 'year',
};

const _$AggregateUsageEnumMap = {
  AggregateUsage.sum: 'sum',
  AggregateUsage.last_during_period: 'last_during_period',
  AggregateUsage.last_ever: 'last_ever',
  AggregateUsage.max: 'max',
};

PriceParameters _$PriceParametersFromJson(Map<String, dynamic> json) =>
    PriceParameters(
      customUnitAmount: (json['custom_unit_amount'] as num?)?.toInt(),
      productData: json['product_data'] == null
          ? null
          : ProductData.fromJson(json['product_data'] as Map<String, dynamic>),
      tiers: (json['tiers'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      tiersMode: json['tiers_mode'] as String?,
      billingScheme: json['billing_scheme'] as String?,
      currencyOptions: json['currency_options'] as Map<String, dynamic>?,
      lookupKey: json['lookup_key'] as String?,
      taxBehavior: json['tax_behavior'] as String?,
      transferLookupKey: json['transfer_lookup_key'] as String?,
      transformQuantity: json['transform_quantity'] as Map<String, dynamic>?,
      unitAmountDecimal: (json['unit_amount_decimal'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PriceParametersToJson(PriceParameters instance) =>
    <String, dynamic>{
      if (instance.customUnitAmount case final value?)
        'custom_unit_amount': value,
      if (instance.productData?.toJson() case final value?)
        'product_data': value,
      if (instance.tiers case final value?) 'tiers': value,
      if (instance.tiersMode case final value?) 'tiers_mode': value,
      if (instance.billingScheme case final value?) 'billing_scheme': value,
      if (instance.currencyOptions case final value?) 'currency_options': value,
      if (instance.lookupKey case final value?) 'lookup_key': value,
      if (instance.taxBehavior case final value?) 'tax_behavior': value,
      if (instance.transferLookupKey case final value?)
        'transfer_lookup_key': value,
      if (instance.transformQuantity case final value?)
        'transform_quantity': value,
      if (instance.unitAmountDecimal case final value?)
        'unit_amount_decimal': value,
    };

CreateProductRequest _$CreateProductRequestFromJson(
        Map<String, dynamic> json) =>
    CreateProductRequest(
      id: json['id'] as String?,
      name: json['name'] as String,
      active: json['active'] as bool? ?? true,
      description: json['description'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      defaultPriceData: json['default_price_data'] as Map<String, dynamic>?,
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      packageDimensions: json['package_dimensions'] as Map<String, dynamic>?,
      shippable: json['shippable'] as bool?,
      statementDescriptor: json['statement_descriptor'] as String?,
      taxCode: json['tax_code'] as String?,
      unitLabel: json['unit_label'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$CreateProductRequestToJson(
        CreateProductRequest instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'name': instance.name,
      'active': instance.active,
      if (instance.description case final value?) 'description': value,
      if (instance.metadata case final value?) 'metadata': value,
      if (instance.defaultPriceData case final value?)
        'default_price_data': value,
      if (instance.features case final value?) 'features': value,
      if (instance.images case final value?) 'images': value,
      if (instance.packageDimensions case final value?)
        'package_dimensions': value,
      if (instance.shippable case final value?) 'shippable': value,
      if (instance.statementDescriptor case final value?)
        'statement_descriptor': value,
      if (instance.taxCode case final value?) 'tax_code': value,
      if (instance.unitLabel case final value?) 'unit_label': value,
      if (instance.url case final value?) 'url': value,
    };

CreateRefundRequest _$CreateRefundRequestFromJson(Map<String, dynamic> json) =>
    CreateRefundRequest(
      charge: json['charge'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      paymentIntent: json['payment_intent'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$CreateRefundRequestToJson(
        CreateRefundRequest instance) =>
    <String, dynamic>{
      if (instance.charge case final value?) 'charge': value,
      if (instance.amount case final value?) 'amount': value,
      if (instance.paymentIntent case final value?) 'payment_intent': value,
      if (instance.reason case final value?) 'reason': value,
    };

CreateSetupIntentRequest _$CreateSetupIntentRequestFromJson(
        Map<String, dynamic> json) =>
    CreateSetupIntentRequest(
      application: json['application'] as String?,
      attachToSelf: json['attach_to_self'] as bool?,
      automaticPaymentMethods: json['automatic_payment_methods'] == null
          ? null
          : SetupIntentAutomaticPaymentMethods.fromJson(
              json['automatic_payment_methods'] as Map<String, dynamic>),
      customer: json['customer'] as String?,
      confirm: json['confirm'] as bool?,
      confirmationToken: json['confirmation_token'] as String?,
      description: json['description'] as String?,
      flowDirections: (json['flow_directions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$FlowDirectionEnumMap, e))
          .toList(),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      onBehalfOf: json['on_behalf_of'] as String?,
      paymentMethod: json['payment_method'] as String?,
      paymentMethodConfiguration:
          json['payment_method_configuration'] as String?,
      paymentMethodData: json['payment_method_data'] == null
          ? null
          : PaymentMethod.fromJson(
              json['payment_method_data'] as Map<String, dynamic>),
      paymentMethodOptions:
          json['payment_method_options'] as Map<String, dynamic>?,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toList(),
      returnUrl: json['return_url'] as String?,
      singleUse: json['single_use'] == null
          ? null
          : SingleUseMandate.fromJson(
              json['single_use'] as Map<String, dynamic>),
      usage: json['usage'] as String?,
      useStripeSdk: json['use_stripe_sdk'] as bool?,
    );

Map<String, dynamic> _$CreateSetupIntentRequestToJson(
        CreateSetupIntentRequest instance) =>
    <String, dynamic>{
      if (instance.application case final value?) 'application': value,
      if (instance.attachToSelf case final value?) 'attach_to_self': value,
      if (instance.automaticPaymentMethods?.toJson() case final value?)
        'automatic_payment_methods': value,
      if (instance.customer case final value?) 'customer': value,
      if (instance.confirm case final value?) 'confirm': value,
      if (instance.confirmationToken case final value?)
        'confirmation_token': value,
      if (instance.description case final value?) 'description': value,
      if (instance.flowDirections
              ?.map((e) => _$FlowDirectionEnumMap[e]!)
              .toList()
          case final value?)
        'flow_directions': value,
      if (instance.metadata case final value?) 'metadata': value,
      if (instance.onBehalfOf case final value?) 'on_behalf_of': value,
      if (instance.paymentMethod case final value?) 'payment_method': value,
      if (instance.paymentMethodConfiguration case final value?)
        'payment_method_configuration': value,
      if (instance.paymentMethodData?.toJson() case final value?)
        'payment_method_data': value,
      if (instance.paymentMethodOptions case final value?)
        'payment_method_options': value,
      if (instance.paymentMethodTypes
              ?.map((e) => _$PaymentMethodTypeEnumMap[e]!)
              .toList()
          case final value?)
        'payment_method_types': value,
      if (instance.returnUrl case final value?) 'return_url': value,
      if (instance.singleUse?.toJson() case final value?) 'single_use': value,
      if (instance.usage case final value?) 'usage': value,
      if (instance.useStripeSdk case final value?) 'use_stripe_sdk': value,
    };

const _$FlowDirectionEnumMap = {
  FlowDirection.inbound: 'inbound',
  FlowDirection.outbound: 'outbound',
};

CreateSubscriptionScheduleRequest _$CreateSubscriptionScheduleRequestFromJson(
        Map<String, dynamic> json) =>
    CreateSubscriptionScheduleRequest(
      fromSubscription: json['from_subscription'] as String?,
    );

Map<String, dynamic> _$CreateSubscriptionScheduleRequestToJson(
        CreateSubscriptionScheduleRequest instance) =>
    <String, dynamic>{
      if (instance.fromSubscription case final value?)
        'from_subscription': value,
    };

ConfirmSetupIntentRequest _$ConfirmSetupIntentRequestFromJson(
        Map<String, dynamic> json) =>
    ConfirmSetupIntentRequest(
      confirmationToken: json['confirmation_token'] as String?,
      mandateData: json['mandate_data'] as Map<String, dynamic>?,
      paymentMethod: json['payment_method'] as String?,
      paymentMethodData: json['payment_method_data'] as Map<String, dynamic>?,
      paymentMethodOptions:
          json['payment_method_options'] as Map<String, dynamic>?,
      returnUrl: json['return_url'] as String?,
      useStripeSdk: json['use_stripe_sdk'] as bool?,
    );

Map<String, dynamic> _$ConfirmSetupIntentRequestToJson(
        ConfirmSetupIntentRequest instance) =>
    <String, dynamic>{
      if (instance.confirmationToken case final value?)
        'confirmation_token': value,
      if (instance.mandateData case final value?) 'mandate_data': value,
      if (instance.paymentMethod case final value?) 'payment_method': value,
      if (instance.paymentMethodData case final value?)
        'payment_method_data': value,
      if (instance.paymentMethodOptions case final value?)
        'payment_method_options': value,
      if (instance.returnUrl case final value?) 'return_url': value,
      if (instance.useStripeSdk case final value?) 'use_stripe_sdk': value,
    };

ListPricesRequest _$ListPricesRequestFromJson(Map<String, dynamic> json) =>
    ListPricesRequest(
      active: json['active'] as bool?,
      currency: json['currency'] as String?,
      product: json['product'] as String?,
    );

Map<String, dynamic> _$ListPricesRequestToJson(ListPricesRequest instance) =>
    <String, dynamic>{
      if (instance.active case final value?) 'active': value,
      if (instance.currency case final value?) 'currency': value,
      if (instance.product case final value?) 'product': value,
    };

ListProductsRequest _$ListProductsRequestFromJson(Map<String, dynamic> json) =>
    ListProductsRequest(
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$ListProductsRequestToJson(
        ListProductsRequest instance) =>
    <String, dynamic>{
      if (instance.active case final value?) 'active': value,
    };

ListSubscriptionItemsRequest _$ListSubscriptionItemsRequestFromJson(
        Map<String, dynamic> json) =>
    ListSubscriptionItemsRequest(
      subscription: json['subscription'] as String?,
      endingBefore: json['ending_before'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      startingAfter: json['starting_after'] as String?,
    );

Map<String, dynamic> _$ListSubscriptionItemsRequestToJson(
        ListSubscriptionItemsRequest instance) =>
    <String, dynamic>{
      if (instance.subscription case final value?) 'subscription': value,
      if (instance.endingBefore case final value?) 'ending_before': value,
      if (instance.limit case final value?) 'limit': value,
      if (instance.startingAfter case final value?) 'starting_after': value,
    };

ListSubscriptionsRequest _$ListSubscriptionsRequestFromJson(
        Map<String, dynamic> json) =>
    ListSubscriptionsRequest(
      customer: json['customer'] as String?,
      price: json['price'] as String?,
      status: $enumDecodeNullable(_$SubscriptionStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$ListSubscriptionsRequestToJson(
        ListSubscriptionsRequest instance) =>
    <String, dynamic>{
      if (instance.customer case final value?) 'customer': value,
      if (instance.price case final value?) 'price': value,
      if (_$SubscriptionStatusEnumMap[instance.status] case final value?)
        'status': value,
    };

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.incomplete: 'incomplete',
  SubscriptionStatus.incomplete_expired: 'incomplete_expired',
  SubscriptionStatus.trialing: 'trialing',
  SubscriptionStatus.active: 'active',
  SubscriptionStatus.past_due: 'past_due',
  SubscriptionStatus.canceled: 'canceled',
  SubscriptionStatus.unpaid: 'unpaid',
  SubscriptionStatus.all: 'all',
  SubscriptionStatus.ended: 'ended',
};

ListSubscriptionSchedulesRequest _$ListSubscriptionSchedulesRequestFromJson(
        Map<String, dynamic> json) =>
    ListSubscriptionSchedulesRequest(
      customer: json['customer'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ListSubscriptionSchedulesRequestToJson(
        ListSubscriptionSchedulesRequest instance) =>
    <String, dynamic>{
      if (instance.customer case final value?) 'customer': value,
      if (instance.limit case final value?) 'limit': value,
    };

UpdateCustomerRequest _$UpdateCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateCustomerRequest(
      id: json['id'] as String,
      description: json['description'] as String?,
      email: json['email'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      name: json['name'] as String?,
      paymentMethod: json['payment_method'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$UpdateCustomerRequestToJson(
        UpdateCustomerRequest instance) =>
    <String, dynamic>{
      if (instance.description case final value?) 'description': value,
      if (instance.email case final value?) 'email': value,
      if (instance.metadata case final value?) 'metadata': value,
      if (instance.name case final value?) 'name': value,
      if (instance.paymentMethod case final value?) 'payment_method': value,
      if (instance.phoneNumber case final value?) 'phone_number': value,
      'id': instance.id,
    };

UpdateSetupIntentRequest _$UpdateSetupIntentRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateSetupIntentRequest(
      attachToSelf: json['attach_to_self'] as bool?,
      automaticPaymentMethods: json['automatic_payment_methods'] == null
          ? null
          : SetupIntentAutomaticPaymentMethods.fromJson(
              json['automatic_payment_methods'] as Map<String, dynamic>),
      customer: json['customer'] as String?,
      description: json['description'] as String?,
      flowDirections: (json['flow_directions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$FlowDirectionEnumMap, e))
          .toList(),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      paymentMethod: json['payment_method'] as String?,
      paymentMethodConfiguration:
          json['payment_method_configuration'] as String?,
      paymentMethodData: json['payment_method_data'] == null
          ? null
          : PaymentMethod.fromJson(
              json['payment_method_data'] as Map<String, dynamic>),
      paymentMethodOptions:
          json['payment_method_options'] as Map<String, dynamic>?,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toList(),
      usage: json['usage'] as String?,
    );

Map<String, dynamic> _$UpdateSetupIntentRequestToJson(
        UpdateSetupIntentRequest instance) =>
    <String, dynamic>{
      if (instance.attachToSelf case final value?) 'attach_to_self': value,
      if (instance.automaticPaymentMethods?.toJson() case final value?)
        'automatic_payment_methods': value,
      if (instance.customer case final value?) 'customer': value,
      if (instance.description case final value?) 'description': value,
      if (instance.flowDirections
              ?.map((e) => _$FlowDirectionEnumMap[e]!)
              .toList()
          case final value?)
        'flow_directions': value,
      if (instance.metadata case final value?) 'metadata': value,
      if (instance.paymentMethod case final value?) 'payment_method': value,
      if (instance.paymentMethodConfiguration case final value?)
        'payment_method_configuration': value,
      if (instance.paymentMethodData?.toJson() case final value?)
        'payment_method_data': value,
      if (instance.paymentMethodOptions case final value?)
        'payment_method_options': value,
      if (instance.paymentMethodTypes
              ?.map((e) => _$PaymentMethodTypeEnumMap[e]!)
              .toList()
          case final value?)
        'payment_method_types': value,
      if (instance.usage case final value?) 'usage': value,
    };

SubscriptionUpdate _$SubscriptionUpdateFromJson(Map<String, dynamic> json) =>
    SubscriptionUpdate(
      cancelAtPeriodEnd: json['cancel_at_period_end'] as bool?,
    );

Map<String, dynamic> _$SubscriptionUpdateToJson(SubscriptionUpdate instance) =>
    <String, dynamic>{
      if (instance.cancelAtPeriodEnd case final value?)
        'cancel_at_period_end': value,
    };

SubscriptionItemUpdate _$SubscriptionItemUpdateFromJson(
        Map<String, dynamic> json) =>
    SubscriptionItemUpdate(
      paymentBehavior: $enumDecodeNullable(
          _$PaymentBehaviorEnumMap, json['payment_behavior']),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      price: json['price'] as String?,
      prorationBehavior: $enumDecodeNullable(
          _$ProrationBehaviorEnumMap, json['proration_behavior']),
      quantity: (json['quantity'] as num?)?.toInt(),
      billingThresholds: json['billing_thresholds'] as Map<String, dynamic>?,
      offSession: json['off_session'] as bool?,
      priceData: json['price_data'] as Map<String, dynamic>?,
      prorationDate: json['proration_date'] == null
          ? null
          : DateTime.parse(json['proration_date'] as String),
      taxRates: (json['tax_rates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SubscriptionItemUpdateToJson(
        SubscriptionItemUpdate instance) =>
    <String, dynamic>{
      if (instance.metadata case final value?) 'metadata': value,
      if (_$PaymentBehaviorEnumMap[instance.paymentBehavior] case final value?)
        'payment_behavior': value,
      if (instance.price case final value?) 'price': value,
      if (_$ProrationBehaviorEnumMap[instance.prorationBehavior]
          case final value?)
        'proration_behavior': value,
      if (instance.quantity case final value?) 'quantity': value,
      if (instance.billingThresholds case final value?)
        'billing_thresholds': value,
      if (instance.offSession case final value?) 'off_session': value,
      if (instance.priceData case final value?) 'price_data': value,
      if (instance.prorationDate?.toIso8601String() case final value?)
        'proration_date': value,
      if (instance.taxRates case final value?) 'tax_rates': value,
    };

const _$PaymentBehaviorEnumMap = {
  PaymentBehavior.allow_incomplete: 'allow_incomplete',
  PaymentBehavior.default_incomplete: 'default_incomplete',
  PaymentBehavior.error_if_incomplete: 'error_if_incomplete',
  PaymentBehavior.pending_if_incomplete: 'pending_if_incomplete',
};

const _$ProrationBehaviorEnumMap = {
  ProrationBehavior.always_invoice: 'always_invoice',
  ProrationBehavior.create_prorations: 'create_prorations',
  ProrationBehavior.none: 'none',
};

UpdateSubscriptionScheduleRequest _$UpdateSubscriptionScheduleRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateSubscriptionScheduleRequest(
      phases: (json['phases'] as List<dynamic>)
          .map((e) => UpdateSubscriptionSchedulePhase.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      endBehavior: $enumDecodeNullable(
          _$SubscriptionScheduleEndBehaviorEnumMap, json['end_behavior']),
    );

Map<String, dynamic> _$UpdateSubscriptionScheduleRequestToJson(
        UpdateSubscriptionScheduleRequest instance) =>
    <String, dynamic>{
      'phases': instance.phases.map((e) => e.toJson()).toList(),
      if (_$SubscriptionScheduleEndBehaviorEnumMap[instance.endBehavior]
          case final value?)
        'end_behavior': value,
    };

const _$SubscriptionScheduleEndBehaviorEnumMap = {
  SubscriptionScheduleEndBehavior.release: 'release',
  SubscriptionScheduleEndBehavior.cancel: 'cancel',
};

UpdateSubscriptionSchedulePhase _$UpdateSubscriptionSchedulePhaseFromJson(
        Map<String, dynamic> json) =>
    UpdateSubscriptionSchedulePhase(
      startDate: _$JsonConverterFromJson<int, DateTime>(
          json['start_date'], const TimestampConverter().fromJson),
      endDate: _$JsonConverterFromJson<int, DateTime>(
          json['end_date'], const TimestampConverter().fromJson),
      items: (json['items'] as List<dynamic>)
          .map((e) => UpdateSubscriptionSchedulePhaseItem.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateSubscriptionSchedulePhaseToJson(
        UpdateSubscriptionSchedulePhase instance) =>
    <String, dynamic>{
      if (_$JsonConverterToJson<int, DateTime>(
              instance.startDate, const TimestampConverter().toJson)
          case final value?)
        'start_date': value,
      if (_$JsonConverterToJson<int, DateTime>(
              instance.endDate, const TimestampConverter().toJson)
          case final value?)
        'end_date': value,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

UpdateSubscriptionSchedulePhaseItem
    _$UpdateSubscriptionSchedulePhaseItemFromJson(Map<String, dynamic> json) =>
        UpdateSubscriptionSchedulePhaseItem(
          price: json['price'] as String,
          quantity: (json['quantity'] as num).toInt(),
        );

Map<String, dynamic> _$UpdateSubscriptionSchedulePhaseItemToJson(
        UpdateSubscriptionSchedulePhaseItem instance) =>
    <String, dynamic>{
      'price': instance.price,
      'quantity': instance.quantity,
    };

SetupIntent _$SetupIntentFromJson(Map<String, dynamic> json) => SetupIntent(
      object: $enumDecode(_$_SetupIntentObjectEnumMap, json['object']),
      id: json['id'] as String,
      livemode: json['livemode'] as bool,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      status: $enumDecode(_$SetupIntentStatusEnumMap, json['status']),
      usage: json['usage'] as String,
      clientSecret: json['client_secret'] as String,
      application: json['application'] as String?,
      attachToSelf: json['attach_to_self'] as bool?,
      automaticPaymentMethods: json['automatic_payment_methods'] == null
          ? null
          : SetupIntentAutomaticPaymentMethods.fromJson(
              json['automatic_payment_methods'] as Map<String, dynamic>),
      cancellationReason: $enumDecodeNullable(
          _$SetupIntentCancellationReasonEnumMap, json['cancellation_reason']),
      created: _$JsonConverterFromJson<int, DateTime>(
          json['created'], const TimestampConverter().fromJson),
      customer: json['customer'] as String?,
      description: json['description'] as String?,
      flowDirections: (json['flow_directions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$FlowDirectionEnumMap, e))
          .toList(),
      lastSetupError: json['last_setup_error'] == null
          ? null
          : SetupIntentLastSetupError.fromJson(
              json['last_setup_error'] as Map<String, dynamic>),
      latestAttempt: json['latest_attempt'] as String?,
      mandate: json['mandate'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      nextAction: json['next_action'] == null
          ? null
          : SetupIntentNextAction.fromJson(
              json['next_action'] as Map<String, dynamic>),
      onBehalfOf: json['on_behalf_of'] as String?,
      paymentMethod: json['payment_method'] as String?,
      paymentMethodConfigurationDetails:
          json['payment_method_configuration_details'] == null
              ? null
              : SetupIntentPaymentMethodConfigurationDetails.fromJson(
                  json['payment_method_configuration_details']
                      as Map<String, dynamic>),
      paymentMethodOptions:
          json['payment_method_options'] as Map<String, dynamic>?,
      singleUseMandate: json['single_use_mandate'] as String?,
    );

Map<String, dynamic> _$SetupIntentToJson(SetupIntent instance) =>
    <String, dynamic>{
      'object': _$_SetupIntentObjectEnumMap[instance.object]!,
      'id': instance.id,
      if (instance.application case final value?) 'application': value,
      if (instance.attachToSelf case final value?) 'attach_to_self': value,
      if (instance.automaticPaymentMethods?.toJson() case final value?)
        'automatic_payment_methods': value,
      if (_$SetupIntentCancellationReasonEnumMap[instance.cancellationReason]
          case final value?)
        'cancellation_reason': value,
      'client_secret': instance.clientSecret,
      if (_$JsonConverterToJson<int, DateTime>(
              instance.created, const TimestampConverter().toJson)
          case final value?)
        'created': value,
      if (instance.customer case final value?) 'customer': value,
      if (instance.description case final value?) 'description': value,
      if (instance.flowDirections
              ?.map((e) => _$FlowDirectionEnumMap[e]!)
              .toList()
          case final value?)
        'flow_directions': value,
      if (instance.lastSetupError?.toJson() case final value?)
        'last_setup_error': value,
      if (instance.latestAttempt case final value?) 'latest_attempt': value,
      'livemode': instance.livemode,
      if (instance.mandate case final value?) 'mandate': value,
      if (instance.metadata case final value?) 'metadata': value,
      if (instance.nextAction?.toJson() case final value?) 'next_action': value,
      if (instance.onBehalfOf case final value?) 'on_behalf_of': value,
      if (instance.paymentMethod case final value?) 'payment_method': value,
      if (instance.paymentMethodConfigurationDetails?.toJson()
          case final value?)
        'payment_method_configuration_details': value,
      if (instance.paymentMethodOptions case final value?)
        'payment_method_options': value,
      'payment_method_types': instance.paymentMethodTypes,
      if (instance.singleUseMandate case final value?)
        'single_use_mandate': value,
      'status': _$SetupIntentStatusEnumMap[instance.status]!,
      'usage': instance.usage,
    };

const _$_SetupIntentObjectEnumMap = {
  _SetupIntentObject.setup_intent: 'setup_intent',
};

const _$SetupIntentStatusEnumMap = {
  SetupIntentStatus.requires_payment_method: 'requires_payment_method',
  SetupIntentStatus.requires_confirmation: 'requires_confirmation',
  SetupIntentStatus.requires_action: 'requires_action',
  SetupIntentStatus.processing: 'processing',
  SetupIntentStatus.canceled: 'canceled',
  SetupIntentStatus.succeeded: 'succeeded',
};

const _$SetupIntentCancellationReasonEnumMap = {
  SetupIntentCancellationReason.abandoned: 'abandoned',
  SetupIntentCancellationReason.duplicate: 'duplicate',
  SetupIntentCancellationReason.requested_by_customer: 'requested_by_customer',
};

SetupIntentAutomaticPaymentMethods _$SetupIntentAutomaticPaymentMethodsFromJson(
        Map<String, dynamic> json) =>
    SetupIntentAutomaticPaymentMethods(
      allowRedirects:
          $enumDecodeNullable(_$AllowRedirectsEnumMap, json['allow_redirects']),
      enabled: json['enabled'] as bool?,
    );

Map<String, dynamic> _$SetupIntentAutomaticPaymentMethodsToJson(
        SetupIntentAutomaticPaymentMethods instance) =>
    <String, dynamic>{
      if (_$AllowRedirectsEnumMap[instance.allowRedirects] case final value?)
        'allow_redirects': value,
      if (instance.enabled case final value?) 'enabled': value,
    };

const _$AllowRedirectsEnumMap = {
  AllowRedirects.always: 'always',
  AllowRedirects.never: 'never',
};

SetupIntentLastSetupError _$SetupIntentLastSetupErrorFromJson(
        Map<String, dynamic> json) =>
    SetupIntentLastSetupError(
      adviceCode: json['advice_code'] as String?,
      code: json['code'] as String?,
      declineCode: json['decline_code'] as String?,
      docUrl: json['doc_url'] as String?,
      message: json['message'] as String?,
      networkAdviceCode: json['network_advice_code'] as String?,
      networkDeclineCode: json['network_decline_code'] as String?,
      param: json['param'] as String?,
      paymentMethod: json['payment_method'] == null
          ? null
          : PaymentMethod.fromJson(
              json['payment_method'] as Map<String, dynamic>),
      paymentMethodType: json['payment_method_type'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$SetupIntentLastSetupErrorToJson(
        SetupIntentLastSetupError instance) =>
    <String, dynamic>{
      if (instance.adviceCode case final value?) 'advice_code': value,
      if (instance.code case final value?) 'code': value,
      if (instance.declineCode case final value?) 'decline_code': value,
      if (instance.docUrl case final value?) 'doc_url': value,
      if (instance.message case final value?) 'message': value,
      if (instance.networkAdviceCode case final value?)
        'network_advice_code': value,
      if (instance.networkDeclineCode case final value?)
        'network_decline_code': value,
      if (instance.param case final value?) 'param': value,
      if (instance.paymentMethod?.toJson() case final value?)
        'payment_method': value,
      if (instance.paymentMethodType case final value?)
        'payment_method_type': value,
      if (instance.type case final value?) 'type': value,
    };

SetupIntentNextAction _$SetupIntentNextActionFromJson(
        Map<String, dynamic> json) =>
    SetupIntentNextAction(
      cashappHandleRedirectOrDisplayQrCode:
          json['cashapp_handle_redirect_or_display_qr_code'] == null
              ? null
              : SetupIntentCashAppHandleRedirectOrDisplayQrCode.fromJson(
                  json['cashapp_handle_redirect_or_display_qr_code']
                      as Map<String, dynamic>),
      redirectToUrl: json['redirect_to_url'] == null
          ? null
          : SetupIntentRedirectToUrl.fromJson(
              json['redirect_to_url'] as Map<String, dynamic>),
      type: json['type'] as String?,
      useStripeSdk: json['use_stripe_sdk'] as Map<String, dynamic>?,
      verifyWithMicrodeposits: json['verify_with_microdeposits'] == null
          ? null
          : SetupIntentVerifyWithMicrodeposits.fromJson(
              json['verify_with_microdeposits'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SetupIntentNextActionToJson(
        SetupIntentNextAction instance) =>
    <String, dynamic>{
      if (instance.cashappHandleRedirectOrDisplayQrCode?.toJson()
          case final value?)
        'cashapp_handle_redirect_or_display_qr_code': value,
      if (instance.redirectToUrl?.toJson() case final value?)
        'redirect_to_url': value,
      if (instance.type case final value?) 'type': value,
      if (instance.useStripeSdk case final value?) 'use_stripe_sdk': value,
      if (instance.verifyWithMicrodeposits?.toJson() case final value?)
        'verify_with_microdeposits': value,
    };

SetupIntentCashAppHandleRedirectOrDisplayQrCode
    _$SetupIntentCashAppHandleRedirectOrDisplayQrCodeFromJson(
            Map<String, dynamic> json) =>
        SetupIntentCashAppHandleRedirectOrDisplayQrCode(
          hostedInstructionsUrl: json['hosted_instructions_url'] as String,
          mobileAuthUrl: json['mobile_auth_url'] as String,
          qrCode: SetupIntentQrCode.fromJson(
              json['qr_code'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$SetupIntentCashAppHandleRedirectOrDisplayQrCodeToJson(
        SetupIntentCashAppHandleRedirectOrDisplayQrCode instance) =>
    <String, dynamic>{
      'hosted_instructions_url': instance.hostedInstructionsUrl,
      'mobile_auth_url': instance.mobileAuthUrl,
      'qr_code': instance.qrCode.toJson(),
    };

SetupIntentQrCode _$SetupIntentQrCodeFromJson(Map<String, dynamic> json) =>
    SetupIntentQrCode(
      expiresAt: const TimestampConverter()
          .fromJson((json['expires_at'] as num).toInt()),
      imageUrlPng: json['image_url_png'] as String,
      imageUrlSvg: json['image_url_svg'] as String,
    );

Map<String, dynamic> _$SetupIntentQrCodeToJson(SetupIntentQrCode instance) =>
    <String, dynamic>{
      'expires_at': const TimestampConverter().toJson(instance.expiresAt),
      'image_url_png': instance.imageUrlPng,
      'image_url_svg': instance.imageUrlSvg,
    };

SetupIntentRedirectToUrl _$SetupIntentRedirectToUrlFromJson(
        Map<String, dynamic> json) =>
    SetupIntentRedirectToUrl(
      returnUrl: json['return_url'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$SetupIntentRedirectToUrlToJson(
        SetupIntentRedirectToUrl instance) =>
    <String, dynamic>{
      if (instance.returnUrl case final value?) 'return_url': value,
      if (instance.url case final value?) 'url': value,
    };

SetupIntentVerifyWithMicrodeposits _$SetupIntentVerifyWithMicrodepositsFromJson(
        Map<String, dynamic> json) =>
    SetupIntentVerifyWithMicrodeposits(
      arrivalDate: const TimestampConverter()
          .fromJson((json['arrival_date'] as num).toInt()),
      hostedVerificationUrl: json['hosted_verification_url'] as String,
      microdepositType: json['microdeposit_type'] as String?,
    );

Map<String, dynamic> _$SetupIntentVerifyWithMicrodepositsToJson(
        SetupIntentVerifyWithMicrodeposits instance) =>
    <String, dynamic>{
      'arrival_date': const TimestampConverter().toJson(instance.arrivalDate),
      'hosted_verification_url': instance.hostedVerificationUrl,
      if (instance.microdepositType case final value?)
        'microdeposit_type': value,
    };

SetupIntentPaymentMethodConfigurationDetails
    _$SetupIntentPaymentMethodConfigurationDetailsFromJson(
            Map<String, dynamic> json) =>
        SetupIntentPaymentMethodConfigurationDetails(
          id: json['id'] as String,
          parent: json['parent'] as String?,
        );

Map<String, dynamic> _$SetupIntentPaymentMethodConfigurationDetailsToJson(
        SetupIntentPaymentMethodConfigurationDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      if (instance.parent case final value?) 'parent': value,
    };

ShippingSpecification _$ShippingSpecificationFromJson(
        Map<String, dynamic> json) =>
    ShippingSpecification(
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      name: json['name'] as String,
      carrier: json['carrier'] as String?,
      phone: json['phone'] as String?,
      trackingNumber: json['tracking_number'] as String?,
    );

Map<String, dynamic> _$ShippingSpecificationToJson(
        ShippingSpecification instance) =>
    <String, dynamic>{
      'address': instance.address.toJson(),
      'name': instance.name,
      if (instance.carrier case final value?) 'carrier': value,
      if (instance.phone case final value?) 'phone': value,
      if (instance.trackingNumber case final value?) 'tracking_number': value,
    };

SingleUseMandate _$SingleUseMandateFromJson(Map<String, dynamic> json) =>
    SingleUseMandate(
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$SingleUseMandateToJson(SingleUseMandate instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

StripeApiError _$StripeApiErrorFromJson(Map<String, dynamic> json) =>
    StripeApiError(
      type: $enumDecode(_$StripeApiErrorTypeEnumMap, json['type']),
      code: json['code'] as String?,
      declineCode: json['decline_code'] as String?,
      message: json['message'] as String?,
      param: json['param'] as String?,
      paymentIntent: json['payment_intent'] == null
          ? null
          : PaymentIntent.fromJson(
              json['payment_intent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StripeApiErrorToJson(StripeApiError instance) =>
    <String, dynamic>{
      'type': _$StripeApiErrorTypeEnumMap[instance.type]!,
      if (instance.code case final value?) 'code': value,
      if (instance.declineCode case final value?) 'decline_code': value,
      if (instance.message case final value?) 'message': value,
      if (instance.param case final value?) 'param': value,
      if (instance.paymentIntent?.toJson() case final value?)
        'payment_intent': value,
    };

const _$StripeApiErrorTypeEnumMap = {
  StripeApiErrorType.apiError: 'api_error',
  StripeApiErrorType.cardError: 'card_error',
  StripeApiErrorType.idempotencyError: 'idempotency_error',
  StripeApiErrorType.invalidRequestError: 'invalid_request_error',
};

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
      object: $enumDecode(_$_SubscriptionObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: (json['created'] as num).toInt(),
      customer: json['customer'] as String,
      status: $enumDecode(_$SubscriptionStatusEnumMap, json['status']),
      items: DataList<SubscriptionItem>.fromJson(
          json['items'] as Map<String, dynamic>,
          (value) => SubscriptionItem.fromJson(value as Map<String, dynamic>)),
      currentPeriodStart: const TimestampConverter()
          .fromJson((json['current_period_start'] as num).toInt()),
      currentPeriodEnd: const TimestampConverter()
          .fromJson((json['current_period_end'] as num).toInt()),
      startDate: const TimestampConverter()
          .fromJson((json['start_date'] as num).toInt()),
      billingCycleAnchor: const TimestampConverter()
          .fromJson((json['billing_cycle_anchor'] as num).toInt()),
      cancelAt: _$JsonConverterFromJson<int, DateTime>(
          json['cancel_at'], const TimestampConverter().fromJson),
      cancelAtPeriodEnd: json['cancel_at_period_end'] as bool? ?? false,
      endedAt: _$JsonConverterFromJson<int, DateTime>(
          json['ended_at'], const TimestampConverter().fromJson),
      metadata: json['metadata'] as Map<String, dynamic>?,
      latestInvoice: json['latest_invoice'] as String?,
    );

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'object': _$_SubscriptionObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'customer': instance.customer,
      'current_period_start':
          const TimestampConverter().toJson(instance.currentPeriodStart),
      'current_period_end':
          const TimestampConverter().toJson(instance.currentPeriodEnd),
      'start_date': const TimestampConverter().toJson(instance.startDate),
      'billing_cycle_anchor':
          const TimestampConverter().toJson(instance.billingCycleAnchor),
      if (_$JsonConverterToJson<int, DateTime>(
              instance.cancelAt, const TimestampConverter().toJson)
          case final value?)
        'cancel_at': value,
      'cancel_at_period_end': instance.cancelAtPeriodEnd,
      if (_$JsonConverterToJson<int, DateTime>(
              instance.endedAt, const TimestampConverter().toJson)
          case final value?)
        'ended_at': value,
      'status': _$SubscriptionStatusEnumMap[instance.status]!,
      'items': instance.items.toJson(
        (value) => value.toJson(),
      ),
      if (instance.metadata case final value?) 'metadata': value,
      if (instance.latestInvoice case final value?) 'latest_invoice': value,
    };

const _$_SubscriptionObjectEnumMap = {
  _SubscriptionObject.subscription: 'subscription',
};

SubscriptionItem _$SubscriptionItemFromJson(Map<String, dynamic> json) =>
    SubscriptionItem(
      object: $enumDecode(_$_SubscriptionItemObjectEnumMap, json['object']),
      id: json['id'] as String,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      subscription: json['subscription'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$SubscriptionItemToJson(SubscriptionItem instance) =>
    <String, dynamic>{
      'object': _$_SubscriptionItemObjectEnumMap[instance.object]!,
      'id': instance.id,
      'price': instance.price.toJson(),
      'subscription': instance.subscription,
      'quantity': instance.quantity,
    };

const _$_SubscriptionItemObjectEnumMap = {
  _SubscriptionItemObject.subscription_item: 'subscription_item',
};

SubscriptionSchedule _$SubscriptionScheduleFromJson(
        Map<String, dynamic> json) =>
    SubscriptionSchedule(
      object: $enumDecode(_$_SubscriptionScheduleObjectEnumMap, json['object']),
      id: json['id'] as String,
      customer: json['customer'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      phases: (json['phases'] as List<dynamic>)
          .map((e) =>
              SubscriptionSchedulePhase.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(_$SubscriptionScheduleStatusEnumMap, json['status']),
      subscription: json['subscription'] as String?,
    );

Map<String, dynamic> _$SubscriptionScheduleToJson(
        SubscriptionSchedule instance) =>
    <String, dynamic>{
      'object': _$_SubscriptionScheduleObjectEnumMap[instance.object]!,
      'id': instance.id,
      if (instance.customer case final value?) 'customer': value,
      if (instance.metadata case final value?) 'metadata': value,
      'phases': instance.phases.map((e) => e.toJson()).toList(),
      'status': _$SubscriptionScheduleStatusEnumMap[instance.status]!,
      if (instance.subscription case final value?) 'subscription': value,
    };

const _$_SubscriptionScheduleObjectEnumMap = {
  _SubscriptionScheduleObject.subscriptionSchedule: 'subscription_schedule',
};

const _$SubscriptionScheduleStatusEnumMap = {
  SubscriptionScheduleStatus.notStarted: 'not_started',
  SubscriptionScheduleStatus.active: 'active',
  SubscriptionScheduleStatus.completed: 'completed',
  SubscriptionScheduleStatus.released: 'released',
  SubscriptionScheduleStatus.canceled: 'canceled',
};

SubscriptionSchedulePhase _$SubscriptionSchedulePhaseFromJson(
        Map<String, dynamic> json) =>
    SubscriptionSchedulePhase(
      startDate: _$JsonConverterFromJson<int, DateTime>(
          json['start_date'], const TimestampConverter().fromJson),
      endDate: _$JsonConverterFromJson<int, DateTime>(
          json['end_date'], const TimestampConverter().fromJson),
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              SubscriptionSchedulePhaseItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubscriptionSchedulePhaseToJson(
        SubscriptionSchedulePhase instance) =>
    <String, dynamic>{
      if (_$JsonConverterToJson<int, DateTime>(
              instance.startDate, const TimestampConverter().toJson)
          case final value?)
        'start_date': value,
      if (_$JsonConverterToJson<int, DateTime>(
              instance.endDate, const TimestampConverter().toJson)
          case final value?)
        'end_date': value,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

SubscriptionSchedulePhaseItem _$SubscriptionSchedulePhaseItemFromJson(
        Map<String, dynamic> json) =>
    SubscriptionSchedulePhaseItem(
      price: json['price'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$SubscriptionSchedulePhaseItemToJson(
        SubscriptionSchedulePhaseItem instance) =>
    <String, dynamic>{
      'price': instance.price,
      'quantity': instance.quantity,
    };
