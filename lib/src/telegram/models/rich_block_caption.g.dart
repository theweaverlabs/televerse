// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rich_block_caption.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RichBlockCaption _$RichBlockCaptionFromJson(Map<String, dynamic> json) =>
    _RichBlockCaption(
      text: const RichTextConverter().fromJson(json['text']),
      credit: const RichTextConverter().fromJson(json['credit']),
    );

Map<String, dynamic> _$RichBlockCaptionToJson(_RichBlockCaption instance) =>
    <String, dynamic>{
      'text': ?const RichTextConverter().toJson(instance.text),
      'credit': ?_$JsonConverterToJson<dynamic, RichText>(
        instance.credit,
        const RichTextConverter().toJson,
      ),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
