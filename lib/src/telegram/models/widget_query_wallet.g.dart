// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_query_wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WidgetQueryWallet _$WidgetQueryWalletFromJson(Map<String, dynamic> json) =>
    _WidgetQueryWallet(
      address: json['address'] as String,
      amount: json['amount'] as String,
      publicKey: json['public_key'] as String?,
      stateInit: json['state_init'] as String?,
    );

Map<String, dynamic> _$WidgetQueryWalletToJson(_WidgetQueryWallet instance) =>
    <String, dynamic>{
      'address': instance.address,
      'amount': instance.amount,
      'public_key': ?instance.publicKey,
      'state_init': ?instance.stateInit,
    };
