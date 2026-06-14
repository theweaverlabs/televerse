// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_access_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BotAccessSettings _$BotAccessSettingsFromJson(Map<String, dynamic> json) =>
    _BotAccessSettings(
      isAccessRestricted: json['is_access_restricted'] as bool,
      addedUsers: (json['added_users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BotAccessSettingsToJson(_BotAccessSettings instance) =>
    <String, dynamic>{
      'is_access_restricted': instance.isAccessRestricted,
      'added_users': ?instance.addedUsers,
    };
