// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'rich_text.dart';

part 'rich_block_table_cell.freezed.dart';
part 'rich_block_table_cell.g.dart';

/// Cell in a table.
@freezed
abstract class RichBlockTableCell with _$RichBlockTableCell {
  /// Cell in a table.
  const factory RichBlockTableCell({
    /// Optional. Text in the cell. If omitted, then the cell is invisible.
    @JsonKey(name: 'text') @RichTextConverter() RichText? text,

    /// Optional. True, if the cell is a header cell
    @JsonKey(name: 'is_header') bool? isHeader,

    /// Optional. The number of columns the cell spans if it is bigger than 1
    @JsonKey(name: 'colspan') int? colspan,

    /// Optional. The number of rows the cell spans if it is bigger than 1
    @JsonKey(name: 'rowspan') int? rowspan,

    /// Horizontal cell content alignment. Currently, must be one of “left”, “center”, or “right”.
    @JsonKey(name: 'align') required String align,

    /// Vertical cell content alignment. Currently, must be one of “top”, “middle”, or “bottom”.
    @JsonKey(name: 'valign') required String valign,
  }) = _RichBlockTableCell;

  /// Creates a [RichBlockTableCell] object from JSON.
  factory RichBlockTableCell.fromJson(Map<String, dynamic> json) =>
      _$RichBlockTableCellFromJson(json);
}
