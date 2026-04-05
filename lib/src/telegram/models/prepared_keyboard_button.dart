// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prepared_keyboard_button.freezed.dart';
part 'prepared_keyboard_button.g.dart';

/// Describes a keyboard button to be used by a user of a Mini App.
@freezed
abstract class PreparedKeyboardButton with _$PreparedKeyboardButton {
  /// Creates a [PreparedKeyboardButton] object.
  const factory PreparedKeyboardButton({
    /// Unique identifier of the keyboard button
    @JsonKey(name: 'id') required String id,
  }) = _PreparedKeyboardButton;

  /// Creates a [PreparedKeyboardButton] object from a JSON map.
  factory PreparedKeyboardButton.fromJson(Map<String, dynamic> json) =>
      _$PreparedKeyboardButtonFromJson(json);
}
