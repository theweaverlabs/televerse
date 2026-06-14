// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rich_block_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RichBlockListItem _$RichBlockListItemFromJson(Map<String, dynamic> json) =>
    _RichBlockListItem(
      label: json['label'] as String,
      blocks: (json['blocks'] as List<dynamic>)
          .map((e) => RichBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasCheckbox: json['has_checkbox'] as bool?,
      isChecked: json['is_checked'] as bool?,
      value: (json['value'] as num?)?.toInt(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$RichBlockListItemToJson(_RichBlockListItem instance) =>
    <String, dynamic>{
      'label': instance.label,
      'blocks': instance.blocks,
      'has_checkbox': ?instance.hasCheckbox,
      'is_checked': ?instance.isChecked,
      'value': ?instance.value,
      'type': ?instance.type,
    };
