// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyboard_button_request_managed_bot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KeyboardButtonRequestManagedBot _$KeyboardButtonRequestManagedBotFromJson(
  Map<String, dynamic> json,
) => _KeyboardButtonRequestManagedBot(
  requestId: (json['request_id'] as num).toInt(),
  suggestedName: json['suggested_name'] as String?,
  suggestedUsername: json['suggested_username'] as String?,
);

Map<String, dynamic> _$KeyboardButtonRequestManagedBotToJson(
  _KeyboardButtonRequestManagedBot instance,
) => <String, dynamic>{
  'request_id': instance.requestId,
  'suggested_name': ?instance.suggestedName,
  'suggested_username': ?instance.suggestedUsername,
};
