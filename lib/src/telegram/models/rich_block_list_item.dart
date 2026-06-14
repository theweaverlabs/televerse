// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'rich_block.dart';

part 'rich_block_list_item.freezed.dart';
part 'rich_block_list_item.g.dart';

/// An item of a list.
@freezed
abstract class RichBlockListItem with _$RichBlockListItem {
  /// An item of a list.
  const factory RichBlockListItem({
    /// Label of the item
    @JsonKey(name: 'label') required String label,

    /// The content of the item
    @JsonKey(name: 'blocks') required List<RichBlock> blocks,

    /// Optional. True, if the item has a checkbox
    @JsonKey(name: 'has_checkbox') bool? hasCheckbox,

    /// Optional. True, if the item has a checked checkbox
    @JsonKey(name: 'is_checked') bool? isChecked,

    /// Optional. For ordered lists, the numeric value of the item label
    @JsonKey(name: 'value') int? value,

    /// Optional. For ordered lists, the type of the item label
    @JsonKey(name: 'type') String? type,
  }) = _RichBlockListItem;

  /// Creates a [RichBlockListItem] object from JSON.
  factory RichBlockListItem.fromJson(Map<String, dynamic> json) =>
      _$RichBlockListItemFromJson(json);
}
