// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ephemeral_message_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EphemeralMessageParameters _$EphemeralMessageParametersFromJson(
  Map<String, dynamic> json,
) => _EphemeralMessageParameters(
  receiverUserId: (json['receiver_user_id'] as num).toInt(),
  callbackQueryId: json['callback_query_id'] as String?,
  replaceCallbackQueryMessage: json['replace_callback_query_message'] as bool?,
);

Map<String, dynamic> _$EphemeralMessageParametersToJson(
  _EphemeralMessageParameters instance,
) => <String, dynamic>{
  'receiver_user_id': instance.receiverUserId,
  'callback_query_id': ?instance.callbackQueryId,
  'replace_callback_query_message': ?instance.replaceCallbackQueryMessage,
};
