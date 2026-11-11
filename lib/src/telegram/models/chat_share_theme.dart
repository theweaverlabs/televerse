// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'emoji_type.dart';
import 'unique_gift.dart';

part 'chat_share_theme.freezed.dart';
part 'chat_share_theme.g.dart';

/// The theme shown when sharing a link to a user or chat.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class ChatShareTheme with _$ChatShareTheme {
  /// A theme with regular or custom emoji on a background.
  const factory ChatShareTheme.emoji({
    /// The emoji shown on the background, up to six.
    @JsonKey(name: 'emojis') required List<EmojiType> emojis,

    /// Identifier of the backdrop, if the theme uses a custom background.
    @JsonKey(name: 'background_backdrop_id') int? backgroundBackdropId,
  }) = ChatShareThemeEmoji;

  /// A theme based on a unique gift owned by the user or chat.
  const factory ChatShareTheme.uniqueGift({
    /// The gift used for the theme.
    @JsonKey(name: 'gift') required UniqueGift gift,
  }) = ChatShareThemeUniqueGift;

  /// Creates a [ChatShareTheme] from JSON.
  factory ChatShareTheme.fromJson(Map<String, dynamic> json) =>
      _$ChatShareThemeFromJson(json);
}
