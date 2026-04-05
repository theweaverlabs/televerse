// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'managed_bot_updated.freezed.dart';
part 'managed_bot_updated.g.dart';

/// This object contains information about the creation or token update of a
/// bot that is managed by the current bot.
@freezed
abstract class ManagedBotUpdated with _$ManagedBotUpdated {
  /// Creates a new [ManagedBotUpdated] instance
  const factory ManagedBotUpdated({
    /// User that created the bot
    @JsonKey(name: 'user') required User user,

    /// Information about the bot. Token of the bot can be fetched using the
    /// method getManagedBotToken.
    @JsonKey(name: 'bot') required User bot,
  }) = _ManagedBotUpdated;

  /// Creates a new [ManagedBotUpdated] from JSON object.
  factory ManagedBotUpdated.fromJson(Map<String, dynamic> json) =>
      _$ManagedBotUpdatedFromJson(json);
}
