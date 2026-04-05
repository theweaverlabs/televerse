// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'managed_bot_created.freezed.dart';
part 'managed_bot_created.g.dart';

/// This object contains information about the bot that was created to be
/// managed by the current bot.
@freezed
abstract class ManagedBotCreated with _$ManagedBotCreated {
  /// Creates a new [ManagedBotCreated] object.
  const factory ManagedBotCreated({
    /// Information about the bot. The bot's token can be fetched using the
    /// method `getManagedBotToken`.
    @JsonKey(name: 'bot') required User bot,
  }) = _ManagedBotCreated;

  /// Creates a new [ManagedBotCreated] from a JSON object.
  factory ManagedBotCreated.fromJson(Map<String, dynamic> json) =>
      _$ManagedBotCreatedFromJson(json);
}
