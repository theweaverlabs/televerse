// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_widget_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SharedWidgetQuery _$SharedWidgetQueryFromJson(Map<String, dynamic> json) =>
    _SharedWidgetQuery(
      id: json['id'] as String,
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      type: WidgetQueryType.fromJson(json['type'] as Map<String, dynamic>),
      data: json['data'] as String,
      widgetId: json['widget_id'] as String,
    );

Map<String, dynamic> _$SharedWidgetQueryToJson(_SharedWidgetQuery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'type': instance.type,
      'data': instance.data,
      'widget_id': instance.widgetId,
    };
