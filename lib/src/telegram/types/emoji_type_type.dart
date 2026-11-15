import 'package:freezed_annotation/freezed_annotation.dart';

/// The type of an `EmojiType`.
@JsonEnum(fieldRename: FieldRename.snake)
enum EmojiTypeType {
  /// A regular emoji.
  @JsonValue('emoji')
  emoji,

  /// A custom emoji.
  @JsonValue('custom_emoji')
  customEmoji,
}
