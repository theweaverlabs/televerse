// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_query_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WidgetQueryTypeData _$WidgetQueryTypeDataFromJson(Map<String, dynamic> json) =>
    WidgetQueryTypeData(
      type:
          $enumDecodeNullable(_$WidgetQueryTypeTypeEnumMap, json['type']) ??
          WidgetQueryTypeType.data,
      walletCard: json['wallet_card'] == null
          ? null
          : TonWalletCard.fromJson(json['wallet_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WidgetQueryTypeDataToJson(
  WidgetQueryTypeData instance,
) => <String, dynamic>{
  'type': _$WidgetQueryTypeTypeEnumMap[instance.type]!,
  'wallet_card': ?instance.walletCard,
};

const _$WidgetQueryTypeTypeEnumMap = {
  WidgetQueryTypeType.data: 'data',
  WidgetQueryTypeType.signData: 'sign_data',
  WidgetQueryTypeType.sentTransaction: 'sent_transaction',
};

WidgetQueryTypeSignData _$WidgetQueryTypeSignDataFromJson(
  Map<String, dynamic> json,
) => WidgetQueryTypeSignData(
  type:
      $enumDecodeNullable(_$WidgetQueryTypeTypeEnumMap, json['type']) ??
      WidgetQueryTypeType.signData,
  wallet: WidgetQueryWallet.fromJson(json['wallet'] as Map<String, dynamic>),
  signData: json['sign_data'] as String,
);

Map<String, dynamic> _$WidgetQueryTypeSignDataToJson(
  WidgetQueryTypeSignData instance,
) => <String, dynamic>{
  'type': _$WidgetQueryTypeTypeEnumMap[instance.type]!,
  'wallet': instance.wallet,
  'sign_data': instance.signData,
};

WidgetQueryTypeSentTransaction _$WidgetQueryTypeSentTransactionFromJson(
  Map<String, dynamic> json,
) => WidgetQueryTypeSentTransaction(
  type:
      $enumDecodeNullable(_$WidgetQueryTypeTypeEnumMap, json['type']) ??
      WidgetQueryTypeType.sentTransaction,
  wallet: WidgetQueryWallet.fromJson(json['wallet'] as Map<String, dynamic>),
  msgHash: json['msg_hash'] as String,
);

Map<String, dynamic> _$WidgetQueryTypeSentTransactionToJson(
  WidgetQueryTypeSentTransaction instance,
) => <String, dynamic>{
  'type': _$WidgetQueryTypeTypeEnumMap[instance.type]!,
  'wallet': instance.wallet,
  'msg_hash': instance.msgHash,
};
