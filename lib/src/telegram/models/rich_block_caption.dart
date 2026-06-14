// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'rich_text.dart';

part 'rich_block_caption.freezed.dart';
part 'rich_block_caption.g.dart';

/// Caption of a rich formatted block.
@freezed
abstract class RichBlockCaption with _$RichBlockCaption {
  /// Caption of a rich formatted block.
  const factory RichBlockCaption({
    /// Block caption
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// Optional. Block credit which corresponds to the HTML tag <cite>
    @JsonKey(name: 'credit') @RichTextConverter() RichText? credit,
  }) = _RichBlockCaption;

  /// Creates a [RichBlockCaption] object from JSON.
  factory RichBlockCaption.fromJson(Map<String, dynamic> json) =>
      _$RichBlockCaptionFromJson(json);
}
