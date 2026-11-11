// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ton_nft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TonNft _$TonNftFromJson(Map<String, dynamic> json) => _TonNft(
  address: json['address'] as String,
  index: json['index'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  collectionAddress: json['collection_address'] as String?,
  attributes: (json['attributes'] as List<dynamic>?)
      ?.map((e) => TonNftAttribute.fromJson(e as Map<String, dynamic>))
      .toList(),
  gift: json['gift'] == null
      ? null
      : UniqueGift.fromJson(json['gift'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TonNftToJson(_TonNft instance) => <String, dynamic>{
  'address': instance.address,
  'index': instance.index,
  'name': instance.name,
  'description': instance.description,
  'collection_address': ?instance.collectionAddress,
  'attributes': ?instance.attributes,
  'gift': ?instance.gift,
};
