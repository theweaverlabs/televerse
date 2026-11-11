// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji_type.freezed.dart';
part 'emoji_type.g.dart';

/// A regular or custom emoji.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class EmojiType with _$EmojiType {
  /// A regular emoji.
  const factory EmojiType.emoji({
    /// The emoji.
    @JsonKey(name: 'emoji') required String emoji,
  }) = EmojiTypeEmoji;

  /// A custom emoji.
  const factory EmojiType.customEmoji({
    /// Identifier of the custom emoji.
    @JsonKey(name: 'custom_emoji_id') required String customEmojiId,
  }) = EmojiTypeCustomEmoji;

  /// Creates an [EmojiType] from JSON.
  factory EmojiType.fromJson(Map<String, dynamic> json) =>
      _$EmojiTypeFromJson(json);
}
