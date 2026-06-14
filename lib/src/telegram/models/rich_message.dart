// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'rich_block.dart';

part 'rich_message.freezed.dart';
part 'rich_message.g.dart';

/// Rich formatted message.
@freezed
abstract class RichMessage with _$RichMessage {
  /// Rich formatted message.
  const factory RichMessage({
    /// Content of the message
    @JsonKey(name: 'blocks') required List<RichBlock> blocks,

    /// Optional. True, if the rich message must be shown right-to-left
    @JsonKey(name: 'is_rtl') bool? isRtl,
  }) = _RichMessage;

  /// Creates a [RichMessage] object from JSON.
  factory RichMessage.fromJson(Map<String, dynamic> json) =>
      _$RichMessageFromJson(json);
}
