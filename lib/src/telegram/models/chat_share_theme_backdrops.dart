// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'chat_share_theme_backdrop.dart';

part 'chat_share_theme_backdrops.freezed.dart';
part 'chat_share_theme_backdrops.g.dart';

/// The available backdrops for chat share themes.
@freezed
abstract class ChatShareThemeBackdrops with _$ChatShareThemeBackdrops {
  /// Creates a [ChatShareThemeBackdrops].
  const factory ChatShareThemeBackdrops({
    /// The available backdrops.
    @JsonKey(name: 'backdrops') required List<ChatShareThemeBackdrop> backdrops,
  }) = _ChatShareThemeBackdrops;

  /// Creates a [ChatShareThemeBackdrops] from JSON.
  factory ChatShareThemeBackdrops.fromJson(Map<String, dynamic> json) =>
      _$ChatShareThemeBackdropsFromJson(json);
}
