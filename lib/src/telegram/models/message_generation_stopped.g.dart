// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_generation_stopped.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageGenerationStopped _$MessageGenerationStoppedFromJson(
  Map<String, dynamic> json,
) => _MessageGenerationStopped(
  chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
  messageThreadId: (json['message_thread_id'] as num?)?.toInt(),
  draftId: (json['draft_id'] as num).toInt(),
);

Map<String, dynamic> _$MessageGenerationStoppedToJson(
  _MessageGenerationStopped instance,
) => <String, dynamic>{
  'chat': instance.chat,
  'message_thread_id': ?instance.messageThreadId,
  'draft_id': instance.draftId,
};
