// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_query_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WidgetQueryTypeData _$WidgetQueryTypeDataFromJson(Map<String, dynamic> json) =>
    WidgetQueryTypeData(
      walletCard: json['wallet_card'] == null
          ? null
          : TonWalletCard.fromJson(json['wallet_card'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$WidgetQueryTypeDataToJson(
  WidgetQueryTypeData instance,
) => <String, dynamic>{
  'wallet_card': ?instance.walletCard,
  'type': instance.$type,
};

WidgetQueryTypeSignData _$WidgetQueryTypeSignDataFromJson(
  Map<String, dynamic> json,
) => WidgetQueryTypeSignData(
  wallet: WidgetQueryWallet.fromJson(json['wallet'] as Map<String, dynamic>),
  signData: json['sign_data'] as String,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$WidgetQueryTypeSignDataToJson(
  WidgetQueryTypeSignData instance,
) => <String, dynamic>{
  'wallet': instance.wallet,
  'sign_data': instance.signData,
  'type': instance.$type,
};

WidgetQueryTypeSentTransaction _$WidgetQueryTypeSentTransactionFromJson(
  Map<String, dynamic> json,
) => WidgetQueryTypeSentTransaction(
  wallet: WidgetQueryWallet.fromJson(json['wallet'] as Map<String, dynamic>),
  msgHash: json['msg_hash'] as String,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$WidgetQueryTypeSentTransactionToJson(
  WidgetQueryTypeSentTransaction instance,
) => <String, dynamic>{
  'wallet': instance.wallet,
  'msg_hash': instance.msgHash,
  'type': instance.$type,
};
