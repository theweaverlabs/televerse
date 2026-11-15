import 'package:freezed_annotation/freezed_annotation.dart';

/// The type of a `ChatShareTheme`.
@JsonEnum(fieldRename: FieldRename.snake)
enum ChatShareThemeType {
  /// The theme is based on regular or custom emoji.
  @JsonValue('emoji')
  emoji,

  /// The theme is based on a unique gift.
  @JsonValue('unique_gift')
  uniqueGift,
}
