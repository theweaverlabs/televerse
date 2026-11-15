// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ton_wallet_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TonWalletTransfer _$TonWalletTransferFromJson(Map<String, dynamic> json) =>
    _TonWalletTransfer(
      transactionId: json['transaction_id'] as String,
      peerAddress: json['peer_address'] as String,
      amount: json['amount'] as String,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$TonWalletTransferToJson(_TonWalletTransfer instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'peer_address': instance.peerAddress,
      'amount': instance.amount,
      'comment': ?instance.comment,
    };
