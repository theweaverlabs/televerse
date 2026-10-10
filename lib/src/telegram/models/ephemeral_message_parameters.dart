// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ephemeral_message_parameters.freezed.dart';
part 'ephemeral_message_parameters.g.dart';

/// Describes the parameters of an ephemeral message to send.
@freezed
abstract class EphemeralMessageParameters with _$EphemeralMessageParameters {
  /// Constructs an [EphemeralMessageParameters].
  const factory EphemeralMessageParameters({
    /// Identifier of the user who will receive the message. It is not
    /// guaranteed that the user will receive the message, especially if they
    /// are offline.
    @JsonKey(name: 'receiver_user_id') required int receiverUserId,

    /// Optional. Identifier of the callback query which triggered the message,
    /// if any
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
