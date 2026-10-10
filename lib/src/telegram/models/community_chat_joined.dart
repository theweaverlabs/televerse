// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/community.dart';

part 'community_chat_joined.freezed.dart';
part 'community_chat_joined.g.dart';

/// Describes a service message about a chat being joined by a user from a
/// community.
@freezed
abstract class CommunityChatJoined with _$CommunityChatJoined {
  /// Creates a new [CommunityChatJoined] object.
  const factory CommunityChatJoined({
    /// The community from which the chat was joined
    @JsonKey(name: 'community') required Community community,
  }) = _CommunityChatJoined;

  /// Creates a new [CommunityChatJoined] object from a JSON [Map].
  factory CommunityChatJoined.fromJson(Map<String, dynamic> json) =>
      _$CommunityChatJoinedFromJson(json);
}
