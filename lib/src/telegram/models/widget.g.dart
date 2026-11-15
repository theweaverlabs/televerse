// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Widget _$WidgetFromJson(Map<String, dynamic> json) => _Widget(
  html: json['html'] as String,
  id: json['id'] as String?,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  publicData: json['public_data'] as String?,
  chatData: json['chat_data'] as String?,
);

Map<String, dynamic> _$WidgetToJson(_Widget instance) => <String, dynamic>{
  'html': instance.html,
  'id': ?instance.id,
  'width': ?instance.width,
  'height': ?instance.height,
  'public_data': ?instance.publicData,
  'chat_data': ?instance.chatData,
};
