// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'widget.freezed.dart';
part 'widget.g.dart';

/// An HTML widget attached to a message.
///
/// In a Flutter app, prefix the Telegram import to use both Widget types:
/// `import 'package:televerse/telegram.dart' as telegram;`.
@freezed
abstract class Widget with _$Widget {
  /// Creates a [Widget].
  const factory Widget({
    /// The HTML source of the widget.
    @JsonKey(name: 'html') required String html,

    /// Identifier of the widget, if it is shared.
    @JsonKey(name: 'id') String? id,

    /// Width in logical pixels, if fixed.
    @JsonKey(name: 'width') int? width,

    /// Height in logical pixels, if fixed.
    @JsonKey(name: 'height') int? height,

    /// Data available wherever the widget is shown.
    @JsonKey(name: 'public_data') String? publicData,

    /// Data specific to the message.
    @JsonKey(name: 'chat_data') String? chatData,
  }) = _Widget;

  /// Creates a [Widget] from JSON.
  factory Widget.fromJson(Map<String, dynamic> json) => _$WidgetFromJson(json);
}
