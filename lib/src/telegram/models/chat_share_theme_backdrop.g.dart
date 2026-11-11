// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_share_theme_backdrop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatShareThemeBackdrop _$ChatShareThemeBackdropFromJson(
  Map<String, dynamic> json,
) => _ChatShareThemeBackdrop(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  colors: UniqueGiftBackdropColors.fromJson(
    json['colors'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ChatShareThemeBackdropToJson(
  _ChatShareThemeBackdrop instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'colors': instance.colors,
};
