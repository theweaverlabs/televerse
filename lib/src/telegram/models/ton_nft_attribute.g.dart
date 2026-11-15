// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ton_nft_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TonNftAttribute _$TonNftAttributeFromJson(Map<String, dynamic> json) =>
    _TonNftAttribute(
      traitType: json['trait_type'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$TonNftAttributeToJson(_TonNftAttribute instance) =>
    <String, dynamic>{
      'trait_type': instance.traitType,
      'value': instance.value,
    };
