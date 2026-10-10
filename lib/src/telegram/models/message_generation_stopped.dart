// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';
import 'package:televerse/src/telegram/models/chat.dart';

part 'message_generation_stopped.freezed.dart';
part 'message_generation_stopped.g.dart';

/// This object describes an update about a user stopping message generation.
@freezed
abstract class MessageGenerationStopped
    with _$MessageGenerationStopped
    implements WithChat {
  /// Creates a new [MessageGenerationStopped] object.
  const factory MessageGenerationStopped({
    /// Chat in which the message is generated
    @JsonKey(name: 'chat') required Chat chat,

    /// Optional. Unique identifier of the message thread in which the message
    /// is generated
    @JsonKey(name: 'message_thread_id') int? messageThreadId,

    /// Unique identifier of the message draft which was stopped
    @JsonKey(name: 'draft_id') required int draftId,
  }) = _MessageGenerationStopped;

  /// Creates a new [MessageGenerationStopped] object from a JSON [Map].
  factory MessageGenerationStopped.fromJson(Map<String, dynamic> json) =>
      _$MessageGenerationStoppedFromJson(json);
}
