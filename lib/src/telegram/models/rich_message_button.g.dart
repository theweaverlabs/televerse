// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rich_message_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RichMessageButton _$RichMessageButtonFromJson(Map<String, dynamic> json) =>
    _RichMessageButton(
      text: const RichTextConverter().fromJson(json['text'] as Object),
      style: $enumDecodeNullable(_$StyleTypeEnumMap, json['style']),
      url: json['url'] as String?,
      callbackData: json['callback_data'] as String?,
      webApp: json['web_app'] == null
          ? null
          : WebAppInfo.fromJson(json['web_app'] as Map<String, dynamic>),
      loginUrl: json['login_url'] == null
          ? null
          : LoginURL.fromJson(json['login_url'] as Map<String, dynamic>),
      switchInlineQuery: json['switch_inline_query'] as String?,
      switchInlineQueryCurrentChat:
          json['switch_inline_query_current_chat'] as String?,
      switchInlineQueryChosenChat:
          json['switch_inline_query_chosen_chat'] == null
          ? null
          : SwitchInlineQueryChosenChat.fromJson(
              json['switch_inline_query_chosen_chat'] as Map<String, dynamic>,
            ),
      copyText: json['copy_text'] == null
          ? null
          : CopyTextButton.fromJson(json['copy_text'] as Map<String, dynamic>),
      disabled: json['disabled'] == null
          ? null
          : DisabledButton.fromJson(json['disabled'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RichMessageButtonToJson(
  _RichMessageButton instance,
) => <String, dynamic>{
  'text': const RichTextConverter().toJson(instance.text),
  'style': ?_$StyleTypeEnumMap[instance.style],
  'url': ?instance.url,
  'callback_data': ?instance.callbackData,
  'web_app': ?instance.webApp,
  'login_url': ?instance.loginUrl,
  'switch_inline_query': ?instance.switchInlineQuery,
  'switch_inline_query_current_chat': ?instance.switchInlineQueryCurrentChat,
  'switch_inline_query_chosen_chat': ?instance.switchInlineQueryChosenChat,
  'copy_text': ?instance.copyText,
  'disabled': ?instance.disabled,
};

const _$StyleTypeEnumMap = {
  StyleType.danger: 'danger',
  StyleType.success: 'success',
  StyleType.primary: 'primary',
  StyleType.link: 'link',
};
