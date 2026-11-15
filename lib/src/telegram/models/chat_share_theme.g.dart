// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_share_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatShareThemeEmoji _$ChatShareThemeEmojiFromJson(Map<String, dynamic> json) =>
    ChatShareThemeEmoji(
      emojis: (json['emojis'] as List<dynamic>)
          .map((e) => EmojiType.fromJson(e as Map<String, dynamic>))
          .toList(),
      backgroundBackdropId: (json['background_backdrop_id'] as num?)?.toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ChatShareThemeEmojiToJson(
  ChatShareThemeEmoji instance,
) => <String, dynamic>{
  'emojis': instance.emojis,
  'background_backdrop_id': ?instance.backgroundBackdropId,
  'type': instance.$type,
};

ChatShareThemeUniqueGift _$ChatShareThemeUniqueGiftFromJson(
  Map<String, dynamic> json,
) => ChatShareThemeUniqueGift(
  gift: UniqueGift.fromJson(json['gift'] as Map<String, dynamic>),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$ChatShareThemeUniqueGiftToJson(
  ChatShareThemeUniqueGift instance,
) => <String, dynamic>{'gift': instance.gift, 'type': instance.$type};
