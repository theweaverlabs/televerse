// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import '../types/emoji_type_type.dart';

part 'emoji_type.freezed.dart';
part 'emoji_type.g.dart';

/// Interface to expose the `type` property on [EmojiType].
abstract interface class _EmojiTypeImpl {
  /// Type of the emoji.
  EmojiTypeType get type;
}

/// This object describes a regular or a custom emoji. Currently, it can be one
/// of:
/// - [EmojiTypeEmoji]
/// - [EmojiTypeCustomEmoji]
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class EmojiType with _$EmojiType implements _EmojiTypeImpl {
  /// A regular emoji.
  @Assert('type == EmojiTypeType.emoji', 'type must be EmojiTypeType.emoji')
  const factory EmojiType.emoji({
    /// Type of the emoji, always "emoji"
    @JsonKey(name: 'type') @Default(EmojiTypeType.emoji) EmojiTypeType type,

    /// The emoji
    @JsonKey(name: 'emoji') required String emoji,
  }) = EmojiTypeEmoji;

  /// A custom emoji.
  @Assert(
    'type == EmojiTypeType.customEmoji',
    'type must be EmojiTypeType.customEmoji',
  )
  const factory EmojiType.customEmoji({
    /// Type of the emoji, always "custom_emoji"
    @JsonKey(name: 'type')
    @Default(EmojiTypeType.customEmoji)
    EmojiTypeType type,

    /// Identifier of the custom emoji. Use getCustomEmojiStickers to get full
    /// information about the sticker.
    @JsonKey(name: 'custom_emoji_id') required String customEmojiId,
  }) = EmojiTypeCustomEmoji;

  /// Creates an [EmojiType] from JSON.
  factory EmojiType.fromJson(Map<String, dynamic> json) =>
      _$EmojiTypeFromJson(json);
}
