// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rich_block_table_cell.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RichBlockTableCell _$RichBlockTableCellFromJson(Map<String, dynamic> json) =>
    _RichBlockTableCell(
      text: const RichTextConverter().fromJson(json['text']),
      isHeader: json['is_header'] as bool?,
      colspan: (json['colspan'] as num?)?.toInt(),
      rowspan: (json['rowspan'] as num?)?.toInt(),
      align: json['align'] as String,
      valign: json['valign'] as String,
    );

Map<String, dynamic> _$RichBlockTableCellToJson(_RichBlockTableCell instance) =>
    <String, dynamic>{
      'text': ?_$JsonConverterToJson<dynamic, RichText>(
        instance.text,
        const RichTextConverter().toJson,
      ),
      'is_header': ?instance.isHeader,
      'colspan': ?instance.colspan,
      'rowspan': ?instance.rowspan,
      'align': instance.align,
      'valign': instance.valign,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
