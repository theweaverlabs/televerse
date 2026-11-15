// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ton_wallet_card_sticker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TonWalletCardSticker _$TonWalletCardStickerFromJson(
  Map<String, dynamic> json,
) => _TonWalletCardSticker(
  position: AreaPosition.fromJson(json['position'] as Map<String, dynamic>),
  nft: TonNft.fromJson(json['nft'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TonWalletCardStickerToJson(
  _TonWalletCardSticker instance,
) => <String, dynamic>{'position': instance.position, 'nft': instance.nft};
