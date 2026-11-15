// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WidgetQuery _$WidgetQueryFromJson(Map<String, dynamic> json) => _WidgetQuery(
  id: json['id'] as String,
  from: User.fromJson(json['from'] as Map<String, dynamic>),
  chatInstance: json['chat_instance'] as String,
  type: WidgetQueryType.fromJson(json['type'] as Map<String, dynamic>),
  data: json['data'] as String,
  chat: json['chat'] == null
      ? null
      : Chat.fromJson(json['chat'] as Map<String, dynamic>),
  messageId: (json['message_id'] as num?)?.toInt(),
  inlineMessageId: json['inline_message_id'] as String?,
  chatType: $enumDecodeNullable(_$ChatTypeEnumMap, json['chat_type']),
  widgetId: json['widget_id'] as String?,
);

Map<String, dynamic> _$WidgetQueryToJson(_WidgetQuery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'chat_instance': instance.chatInstance,
      'type': instance.type,
      'data': instance.data,
      'chat': ?instance.chat,
      'message_id': ?instance.messageId,
      'inline_message_id': ?instance.inlineMessageId,
      'chat_type': ?_$ChatTypeEnumMap[instance.chatType],
      'widget_id': ?instance.widgetId,
    };

const _$ChatTypeEnumMap = {
  ChatType.private: 'private',
  ChatType.group: 'group',
  ChatType.supergroup: 'supergroup',
  ChatType.channel: 'channel',
  ChatType.sender: 'sender',
};
