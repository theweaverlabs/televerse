// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'unique_gift_backdrop_colors.dart';

part 'chat_share_theme_backdrop.freezed.dart';
part 'chat_share_theme_backdrop.g.dart';

/// A backdrop that can be used as a chat share theme background.
@freezed
abstract class ChatShareThemeBackdrop with _$ChatShareThemeBackdrop {
  /// Creates a [ChatShareThemeBackdrop].
  const factory ChatShareThemeBackdrop({
    /// Unique identifier of the backdrop.
    @JsonKey(name: 'id') required int id,

    /// Name of the backdrop.
    @JsonKey(name: 'name') required String name,

    /// Colors of the backdrop.
    @JsonKey(name: 'colors') required UniqueGiftBackdropColors colors,
  }) = _ChatShareThemeBackdrop;

  /// Creates a [ChatShareThemeBackdrop] from JSON.
  factory ChatShareThemeBackdrop.fromJson(Map<String, dynamic> json) =>
      _$ChatShareThemeBackdropFromJson(json);
}
