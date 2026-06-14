// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'user.dart';

part 'bot_access_settings.freezed.dart';
part 'bot_access_settings.g.dart';

/// This object describes the access settings of a bot.
@freezed
abstract class BotAccessSettings with _$BotAccessSettings {
  /// Creates a new [BotAccessSettings] object.
  const factory BotAccessSettings({
    /// True, if only selected users can access the bot. The bot's owner can always access it.
    @JsonKey(name: 'is_access_restricted') required bool isAccessRestricted,

    /// Optional. The list of other users who have access to the bot if the access is restricted.
    @JsonKey(name: 'added_users') List<User>? addedUsers,
  }) = _BotAccessSettings;

  /// Creates a new [BotAccessSettings] object from a JSON [Map].
  factory BotAccessSettings.fromJson(Map<String, dynamic> json) =>
      _$BotAccessSettingsFromJson(json);
}
