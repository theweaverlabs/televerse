// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_share_theme_backdrops.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatShareThemeBackdrops _$ChatShareThemeBackdropsFromJson(
  Map<String, dynamic> json,
) => _ChatShareThemeBackdrops(
  backdrops: (json['backdrops'] as List<dynamic>)
      .map((e) => ChatShareThemeBackdrop.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ChatShareThemeBackdropsToJson(
  _ChatShareThemeBackdrops instance,
) => <String, dynamic>{'backdrops': instance.backdrops};
