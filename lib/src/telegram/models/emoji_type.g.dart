// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmojiTypeEmoji _$EmojiTypeEmojiFromJson(Map<String, dynamic> json) =>
    EmojiTypeEmoji(
      emoji: json['emoji'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$EmojiTypeEmojiToJson(EmojiTypeEmoji instance) =>
    <String, dynamic>{'emoji': instance.emoji, 'type': instance.$type};

EmojiTypeCustomEmoji _$EmojiTypeCustomEmojiFromJson(
  Map<String, dynamic> json,
) => EmojiTypeCustomEmoji(
  customEmojiId: json['custom_emoji_id'] as String,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$EmojiTypeCustomEmojiToJson(
  EmojiTypeCustomEmoji instance,
) => <String, dynamic>{
  'custom_emoji_id': instance.customEmojiId,
  'type': instance.$type,
};
