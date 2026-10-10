// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/copy_text_button.dart';
import 'package:televerse/src/telegram/models/disabled_button.dart';
import 'package:televerse/src/telegram/models/login_url.dart';
import 'package:televerse/src/telegram/models/rich_text.dart';
import 'package:televerse/src/telegram/models/switch_inline_query_chosen_chat.dart';
import 'package:televerse/src/telegram/models/web_app_info.dart';
import 'package:televerse/src/telegram/types/types.dart';

part 'rich_message_button.freezed.dart';
part 'rich_message_button.g.dart';

/// This object represents a button in a RichMessage. Exactly one of the
/// fields other than [text] and [style] must be used to specify the type of
/// the button.
@freezed
abstract class RichMessageButton with _$RichMessageButton {
  /// This object represents a button in a rich message.
  const factory RichMessageButton({
    /// Text of the button. May contain only plain text, RichTextCustomEmoji
    /// and RichTextDateTime entities.
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// Optional. Style of the button. Must be one of “danger”, “success”,
    /// “primary”, or “link” (the button is shown as a regular link without
    /// borders). Apps may use theme-specific colors for the button background
    /// and text based on the style. The style “link” is allowed only for
    /// callback buttons.
    @JsonKey(name: 'style') StyleType? style,

    /// Optional. HTTP or tg:// URL to be opened when the button is pressed.
    /// Links tg://user?id=&lt;user_id&gt; can be used to mention a user by their
    /// identifier without using a username, if this is allowed by their
    /// privacy settings.
    @JsonKey(name: 'url') String? url,

    /// Optional. Data to be sent in a callback query to the bot when the
    /// button is pressed, 1-64 bytes
    @JsonKey(name: 'callback_data') String? callbackData,

    /// Optional. Description of the Web App that will be launched when the
    /// user presses the button. The Web App will be able to send an arbitrary
    /// message on behalf of the user using the method answerWebAppQuery.
    /// Available only in private chats between a user and the bot. Not
    /// supported for messages sent on behalf of a business account.
    @JsonKey(name: 'web_app') WebAppInfo? webApp,

    /// Optional. An HTTPS URL used to automatically authorize the user. Can be
    /// used as a replacement for the Telegram Login Widget. Not supported for
    /// ephemeral messages.
    @JsonKey(name: 'login_url') LoginURL? loginUrl,

    /// Optional. If set, pressing the button will prompt the user to select one
    /// of their chats, open that chat and insert the bot's username and the
    /// specified inline query in the input field. May be empty, in which case
    /// just the bot's username will be inserted. Not supported for messages
    /// sent in channel direct messages chats and on behalf of a business
    /// account.
    @JsonKey(name: 'switch_inline_query') String? switchInlineQuery,

    /// Optional. If set, pressing the button will insert the bot's username
    /// and the specified inline query in the current chat's input field. May
    /// be empty, in which case only the bot's username will be inserted. Not
    /// supported in channels and for messages sent in channel direct messages
    /// chats and on behalf of a business account.
    @JsonKey(name: 'switch_inline_query_current_chat')
    String? switchInlineQueryCurrentChat,

    /// Optional. If set, pressing the button will prompt the user to select one
    /// of their chats of the specified type, open that chat and insert the
    /// bot's username and the specified inline query in the input field. Not
    /// supported for messages sent in channel direct messages chats and on
    /// behalf of a business account.
    @JsonKey(name: 'switch_inline_query_chosen_chat')
    SwitchInlineQueryChosenChat? switchInlineQueryChosenChat,

    /// Optional. A button that copies the specified text to the clipboard
    @JsonKey(name: 'copy_text') CopyTextButton? copyText,

    /// Optional. If set, then the button is disabled and does nothing
    @JsonKey(name: 'disabled') DisabledButton? disabled,
  }) = _RichMessageButton;

  /// Creates a [RichMessageButton] object from JSON.
  factory RichMessageButton.fromJson(Map<String, dynamic> json) =>
      _$RichMessageButtonFromJson(json);
}
