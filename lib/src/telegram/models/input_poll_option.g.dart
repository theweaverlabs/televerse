// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_poll_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InputPollOption _$InputPollOptionFromJson(Map<String, dynamic> json) =>
    _InputPollOption(
      text: json['text'] as String,
      textParseMode: $enumDecodeNullable(
        _$ParseModeEnumMap,
        json['text_parse_mode'],
      ),
      textEntities: (json['text_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      media:
          _$JsonConverterFromJson<Map<String, dynamic>, InputPollOptionMedia>(
            json['media'],
            const InputPollOptionMediaConverter().fromJson,
          ),
    );

Map<String, dynamic> _$InputPollOptionToJson(
  _InputPollOption instance,
) => <String, dynamic>{
  'text': instance.text,
  'text_parse_mode': ?instance.textParseMode,
  'text_entities': ?instance.textEntities,
  'media': ?_$JsonConverterToJson<Map<String, dynamic>, InputPollOptionMedia>(
    instance.media,
    const InputPollOptionMediaConverter().toJson,
  ),
};

const _$ParseModeEnumMap = {
  ParseMode.markdown: 'Markdown',
  ParseMode.html: 'HTML',
  ParseMode.markdownV2: 'MarkdownV2',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
