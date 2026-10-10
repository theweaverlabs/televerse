// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'disabled_button.freezed.dart';
part 'disabled_button.g.dart';

/// This object represents a disabled button which does nothing. Currently
/// holds no information.
@freezed
abstract class DisabledButton with _$DisabledButton {
  /// Creates a new [DisabledButton] object.
  const factory DisabledButton() = _DisabledButton;

  /// Creates a [DisabledButton] object from JSON object.
  factory DisabledButton.fromJson(Map<String, dynamic> json) =>
      _$DisabledButtonFromJson(json);
}
