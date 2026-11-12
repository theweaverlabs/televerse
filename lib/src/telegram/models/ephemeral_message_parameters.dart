// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ephemeral_message_parameters.freezed.dart';
part 'ephemeral_message_parameters.g.dart';

/// Describes the parameters of an ephemeral message to send.
@freezed
abstract class EphemeralMessageParameters with _$EphemeralMessageParameters {
  /// Constructs an [EphemeralMessageParameters].
  const factory EphemeralMessageParameters({
    /// Identifier of the user who will receive the message. Required unless
    /// [callbackQueryId] is used to send a reply to a callback query.
    /// Delivery is not guaranteed, especially if the user is offline.
    @JsonKey(name: 'receiver_user_id') int? receiverUserId,

    /// Identifier of the callback query that triggered the message.
    /// When [receiverUserId] is omitted, Telegram uses the callback to
    /// determine the chat and recipient. Channel direct messages do not
    /// support this form. The bot still needs to answer the callback query.
    @JsonKey(name: 'callback_query_id') String? callbackQueryId,

    /// Optional. Pass True if the ephemeral message must be shown in place of
    /// the original message. Must be False for callback queries from ephemeral
    /// messages, which must be edited using regular editEphemeralMessage…
    /// methods.
    @JsonKey(name: 'replace_callback_query_message')
    bool? replaceCallbackQueryMessage,
  }) = _EphemeralMessageParameters;

  /// Creates an [EphemeralMessageParameters] object from JSON.
  factory EphemeralMessageParameters.fromJson(Map<String, dynamic> json) =>
      _$EphemeralMessageParametersFromJson(json);
}
