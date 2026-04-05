// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'managed_bot_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ManagedBotUpdated _$ManagedBotUpdatedFromJson(Map<String, dynamic> json) =>
    _ManagedBotUpdated(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      bot: User.fromJson(json['bot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ManagedBotUpdatedToJson(_ManagedBotUpdated instance) =>
    <String, dynamic>{'user': instance.user, 'bot': instance.bot};
