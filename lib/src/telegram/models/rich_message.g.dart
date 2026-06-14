// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rich_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RichMessage _$RichMessageFromJson(Map<String, dynamic> json) => _RichMessage(
  blocks: (json['blocks'] as List<dynamic>)
      .map((e) => RichBlock.fromJson(e as Map<String, dynamic>))
      .toList(),
  isRtl: json['is_rtl'] as bool?,
);

Map<String, dynamic> _$RichMessageToJson(_RichMessage instance) =>
    <String, dynamic>{'blocks': instance.blocks, 'is_rtl': ?instance.isRtl};
