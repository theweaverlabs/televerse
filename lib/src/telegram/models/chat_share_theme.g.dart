// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_share_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatShareThemeEmoji _$ChatShareThemeEmojiFromJson(Map<String, dynamic> json) =>
    ChatShareThemeEmoji(
      type:
          $enumDecodeNullable(_$ChatShareThemeTypeEnumMap, json['type']) ??
          ChatShareThemeType.emoji,
      emojis: (json['emojis'] as List<dynamic>)
          .map((e) => EmojiType.fromJson(e as Map<String, dynamic>))
          .toList(),
      backgroundBackdropId: (json['background_backdrop_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChatShareThemeEmojiToJson(
  ChatShareThemeEmoji instance,
) => <String, dynamic>{
  'type': _$ChatShareThemeTypeEnumMap[instance.type]!,
  'emojis': instance.emojis,
  'background_backdrop_id': ?instance.backgroundBackdropId,
};

const _$ChatShareThemeTypeEnumMap = {
  ChatShareThemeType.emoji: 'emoji',
  ChatShareThemeType.uniqueGift: 'unique_gift',
};

ChatShareThemeUniqueGift _$ChatShareThemeUniqueGiftFromJson(
  Map<String, dynamic> json,
) => ChatShareThemeUniqueGift(
  type:
      $enumDecodeNullable(_$ChatShareThemeTypeEnumMap, json['type']) ??
      ChatShareThemeType.uniqueGift,
  gift: UniqueGift.fromJson(json['gift'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChatShareThemeUniqueGiftToJson(
  ChatShareThemeUniqueGift instance,
) => <String, dynamic>{
  'type': _$ChatShareThemeTypeEnumMap[instance.type]!,
  'gift': instance.gift,
};
