// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'keyboard_button_request_managed_bot.freezed.dart';
part 'keyboard_button_request_managed_bot.g.dart';

/// This object defines the parameters for the creation of a managed bot.
/// Information about the created bot will be shared with the bot using the
/// update `managed_bot` and a `Message` with the field `managed_bot_created`.
@freezed
abstract class KeyboardButtonRequestManagedBot
    with _$KeyboardButtonRequestManagedBot {
  /// Creates a new [KeyboardButtonRequestManagedBot] object.
  const factory KeyboardButtonRequestManagedBot({
    /// Signed 32-bit identifier of the request. Must be unique within the
    /// message.
    @JsonKey(name: 'request_id') required int requestId,

    /// Optional. Suggested name for the bot.
    @JsonKey(name: 'suggested_name') String? suggestedName,

    /// Optional. Suggested username for the bot.
    @JsonKey(name: 'suggested_username') String? suggestedUsername,
  }) = _KeyboardButtonRequestManagedBot;

  /// Creates a new [KeyboardButtonRequestManagedBot] from a JSON object.
  factory KeyboardButtonRequestManagedBot.fromJson(Map<String, dynamic> json) =>
      _$KeyboardButtonRequestManagedBotFromJson(json);
}
