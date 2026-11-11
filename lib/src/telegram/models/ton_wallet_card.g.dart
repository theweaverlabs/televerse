// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ton_wallet_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TonWalletCard _$TonWalletCardFromJson(Map<String, dynamic> json) =>
    _TonWalletCard(
      address: json['address'] as String,
      amount: json['amount'] as String,
      stickers: (json['stickers'] as List<dynamic>)
          .map((e) => TonWalletCardSticker.fromJson(e as Map<String, dynamic>))
          .toList(),
      backgroundNftAddress: json['background_nft_address'] as String?,
    );

Map<String, dynamic> _$TonWalletCardToJson(_TonWalletCard instance) =>
    <String, dynamic>{
      'address': instance.address,
      'amount': instance.amount,
      'stickers': instance.stickers,
      'background_nft_address': ?instance.backgroundNftAddress,
    };
