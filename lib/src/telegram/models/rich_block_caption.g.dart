// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rich_block_caption.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RichBlockCaption _$RichBlockCaptionFromJson(Map<String, dynamic> json) =>
    _RichBlockCaption(
      text: const RichTextConverter().fromJson(json['text'] as Object),
      credit: _$JsonConverterFromJson<Object, RichText>(
        json['credit'],
        const RichTextConverter().fromJson,
      ),
    );

Map<String, dynamic> _$RichBlockCaptionToJson(_RichBlockCaption instance) =>
    <String, dynamic>{
      'text': const RichTextConverter().toJson(instance.text),
      'credit': ?_$JsonConverterToJson<Object, RichText>(
        instance.credit,
        const RichTextConverter().toJson,
      ),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
