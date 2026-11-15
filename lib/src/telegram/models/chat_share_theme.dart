// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import '../types/chat_share_theme_type.dart';
import 'emoji_type.dart';
import 'unique_gift.dart';

part 'chat_share_theme.freezed.dart';
part 'chat_share_theme.g.dart';

/// Interface to expose the `type` property on [ChatShareTheme].
abstract interface class _ChatShareThemeImpl {
  /// Type of the theme.
  ChatShareThemeType get type;
}

/// This object describes the theme of the screen for sharing a link to a user
/// or a chat. Currently, it can be one of:
/// - [ChatShareThemeEmoji]
/// - [ChatShareThemeUniqueGift]
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class ChatShareTheme
    with _$ChatShareTheme
    implements _ChatShareThemeImpl {
  /// The theme is based on regular or custom emoji.
  @Assert(
    'type == ChatShareThemeType.emoji',
    'type must be ChatShareThemeType.emoji',
  )
  const factory ChatShareTheme.emoji({
    /// Type of the theme, always "emoji"
    @JsonKey(name: 'type')
    @Default(ChatShareThemeType.emoji)
    ChatShareThemeType type,

    /// List of 0-6 regular or custom emoji
    @JsonKey(name: 'emojis') required List<EmojiType> emojis,

    /// Optional. Identifier of the backdrop used as the background; omitted if
    /// the default background is used. Use getChatShareThemeBackdrops to get
    /// information about the backdrop.
    @JsonKey(name: 'background_backdrop_id') int? backgroundBackdropId,
  }) = ChatShareThemeEmoji;

  /// The theme is based on a unique gift.
  @Assert(
    'type == ChatShareThemeType.uniqueGift',
    'type must be ChatShareThemeType.uniqueGift',
  )
  const factory ChatShareTheme.uniqueGift({
    /// Type of the theme, always "unique_gift"
    @JsonKey(name: 'type')
    @Default(ChatShareThemeType.uniqueGift)
    ChatShareThemeType type,

    /// The gift
    @JsonKey(name: 'gift') required UniqueGift gift,
  }) = ChatShareThemeUniqueGift;

  /// Creates a [ChatShareTheme] from JSON.
  factory ChatShareTheme.fromJson(Map<String, dynamic> json) =>
      _$ChatShareThemeFromJson(json);
}
