// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmojiTypeEmoji _$EmojiTypeEmojiFromJson(Map<String, dynamic> json) =>
    EmojiTypeEmoji(
      type:
          $enumDecodeNullable(_$EmojiTypeTypeEnumMap, json['type']) ??
          EmojiTypeType.emoji,
      emoji: json['emoji'] as String,
    );

Map<String, dynamic> _$EmojiTypeEmojiToJson(EmojiTypeEmoji instance) =>
    <String, dynamic>{
      'type': _$EmojiTypeTypeEnumMap[instance.type]!,
      'emoji': instance.emoji,
    };

const _$EmojiTypeTypeEnumMap = {
  EmojiTypeType.emoji: 'emoji',
  EmojiTypeType.customEmoji: 'custom_emoji',
};

EmojiTypeCustomEmoji _$EmojiTypeCustomEmojiFromJson(
  Map<String, dynamic> json,
) => EmojiTypeCustomEmoji(
  type:
      $enumDecodeNullable(_$EmojiTypeTypeEnumMap, json['type']) ??
      EmojiTypeType.customEmoji,
  customEmojiId: json['custom_emoji_id'] as String,
);

Map<String, dynamic> _$EmojiTypeCustomEmojiToJson(
  EmojiTypeCustomEmoji instance,
) => <String, dynamic>{
  'type': _$EmojiTypeTypeEnumMap[instance.type]!,
  'custom_emoji_id': instance.customEmojiId,
};
