// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rich_message_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RichMessageButton {
  /// Text of the button. May contain only plain text, RichTextCustomEmoji
  /// and RichTextDateTime entities.
  @JsonKey(name: 'text')
  @RichTextConverter()
  RichText get text;

  /// Optional. Style of the button. Must be one of “danger”, “success”,
  /// “primary”, or “link” (the button is shown as a regular link without
  /// borders). Apps may use theme-specific colors for the button background
  /// and text based on the style. The style “link” is allowed only for
  /// callback buttons.
  @JsonKey(name: 'style')
  StyleType? get style;

  /// Optional. HTTP or tg:// URL to be opened when the button is pressed.
  /// Links tg://user?id=&lt;user_id&gt; can be used to mention a user by their
  /// identifier without using a username, if this is allowed by their
  /// privacy settings.
  @JsonKey(name: 'url')
  String? get url;

  /// Optional. Data to be sent in a callback query to the bot when the
  /// button is pressed, 1-64 bytes
  @JsonKey(name: 'callback_data')
  String? get callbackData;

  /// Optional. Description of the Web App that will be launched when the
  /// user presses the button. The Web App will be able to send an arbitrary
  /// message on behalf of the user using the method answerWebAppQuery.
  /// Available only in private chats between a user and the bot. Not
  /// supported for messages sent on behalf of a business account.
  @JsonKey(name: 'web_app')
  WebAppInfo? get webApp;

  /// Optional. An HTTPS URL used to automatically authorize the user. Can be
  /// used as a replacement for the Telegram Login Widget. Not supported for
  /// ephemeral messages.
  @JsonKey(name: 'login_url')
  LoginURL? get loginUrl;

  /// Optional. If set, pressing the button will prompt the user to select one
  /// of their chats, open that chat and insert the bot's username and the
  /// specified inline query in the input field. May be empty, in which case
  /// just the bot's username will be inserted. Not supported for messages
  /// sent in channel direct messages chats and on behalf of a business
  /// account.
  @JsonKey(name: 'switch_inline_query')
  String? get switchInlineQuery;

  /// Optional. If set, pressing the button will insert the bot's username
  /// and the specified inline query in the current chat's input field. May
  /// be empty, in which case only the bot's username will be inserted. Not
  /// supported in channels and for messages sent in channel direct messages
  /// chats and on behalf of a business account.
  @JsonKey(name: 'switch_inline_query_current_chat')
  String? get switchInlineQueryCurrentChat;

  /// Optional. If set, pressing the button will prompt the user to select one
  /// of their chats of the specified type, open that chat and insert the
  /// bot's username and the specified inline query in the input field. Not
  /// supported for messages sent in channel direct messages chats and on
  /// behalf of a business account.
  @JsonKey(name: 'switch_inline_query_chosen_chat')
  SwitchInlineQueryChosenChat? get switchInlineQueryChosenChat;

  /// Optional. A button that copies the specified text to the clipboard
  @JsonKey(name: 'copy_text')
  CopyTextButton? get copyText;

  /// Optional. If set, then the button is disabled and does nothing
  @JsonKey(name: 'disabled')
  DisabledButton? get disabled;

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichMessageButtonCopyWith<RichMessageButton> get copyWith =>
      _$RichMessageButtonCopyWithImpl<RichMessageButton>(
        this as RichMessageButton,
        _$identity,
      );

  /// Serializes this RichMessageButton to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'RichMessageButton(text: $text, style: $style, url: $url, callbackData: $callbackData, webApp: $webApp, loginUrl: $loginUrl, switchInlineQuery: $switchInlineQuery, switchInlineQueryCurrentChat: $switchInlineQueryCurrentChat, switchInlineQueryChosenChat: $switchInlineQueryChosenChat, copyText: $copyText, disabled: $disabled)';
  }
}

/// @nodoc
abstract mixin class $RichMessageButtonCopyWith<$Res> {
  factory $RichMessageButtonCopyWith(
    RichMessageButton value,
    $Res Function(RichMessageButton) _then,
  ) = _$RichMessageButtonCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'style') StyleType? style,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'callback_data') String? callbackData,
    @JsonKey(name: 'web_app') WebAppInfo? webApp,
    @JsonKey(name: 'login_url') LoginURL? loginUrl,
    @JsonKey(name: 'switch_inline_query') String? switchInlineQuery,
    @JsonKey(name: 'switch_inline_query_current_chat')
    String? switchInlineQueryCurrentChat,
    @JsonKey(name: 'switch_inline_query_chosen_chat')
    SwitchInlineQueryChosenChat? switchInlineQueryChosenChat,
    @JsonKey(name: 'copy_text') CopyTextButton? copyText,
    @JsonKey(name: 'disabled') DisabledButton? disabled,
  });

  $RichTextCopyWith<$Res> get text;
  $WebAppInfoCopyWith<$Res>? get webApp;
  $LoginURLCopyWith<$Res>? get loginUrl;
  $SwitchInlineQueryChosenChatCopyWith<$Res>? get switchInlineQueryChosenChat;
  $CopyTextButtonCopyWith<$Res>? get copyText;
  $DisabledButtonCopyWith<$Res>? get disabled;
}

/// @nodoc
class _$RichMessageButtonCopyWithImpl<$Res>
    implements $RichMessageButtonCopyWith<$Res> {
  _$RichMessageButtonCopyWithImpl(this._self, this._then);

  final RichMessageButton _self;
  final $Res Function(RichMessageButton) _then;

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? style = freezed,
    Object? url = freezed,
    Object? callbackData = freezed,
    Object? webApp = freezed,
    Object? loginUrl = freezed,
    Object? switchInlineQuery = freezed,
    Object? switchInlineQueryCurrentChat = freezed,
    Object? switchInlineQueryChosenChat = freezed,
    Object? copyText = freezed,
    Object? disabled = freezed,
  }) {
    return _then(
      _self.copyWith(
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        style: freezed == style
            ? _self.style
            : style // ignore: cast_nullable_to_non_nullable
                  as StyleType?,
        url: freezed == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        callbackData: freezed == callbackData
            ? _self.callbackData
            : callbackData // ignore: cast_nullable_to_non_nullable
                  as String?,
        webApp: freezed == webApp
            ? _self.webApp
            : webApp // ignore: cast_nullable_to_non_nullable
                  as WebAppInfo?,
        loginUrl: freezed == loginUrl
            ? _self.loginUrl
            : loginUrl // ignore: cast_nullable_to_non_nullable
                  as LoginURL?,
        switchInlineQuery: freezed == switchInlineQuery
            ? _self.switchInlineQuery
            : switchInlineQuery // ignore: cast_nullable_to_non_nullable
                  as String?,
        switchInlineQueryCurrentChat: freezed == switchInlineQueryCurrentChat
            ? _self.switchInlineQueryCurrentChat
            : switchInlineQueryCurrentChat // ignore: cast_nullable_to_non_nullable
                  as String?,
        switchInlineQueryChosenChat: freezed == switchInlineQueryChosenChat
            ? _self.switchInlineQueryChosenChat
            : switchInlineQueryChosenChat // ignore: cast_nullable_to_non_nullable
                  as SwitchInlineQueryChosenChat?,
        copyText: freezed == copyText
            ? _self.copyText
            : copyText // ignore: cast_nullable_to_non_nullable
                  as CopyTextButton?,
        disabled: freezed == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as DisabledButton?,
      ),
    );
  }

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res> get text {
    return $RichTextCopyWith<$Res>(_self.text, (value) {
      return _then(_self.copyWith(text: value));
    });
  }

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebAppInfoCopyWith<$Res>? get webApp {
    if (_self.webApp == null) {
      return null;
    }

    return $WebAppInfoCopyWith<$Res>(_self.webApp!, (value) {
      return _then(_self.copyWith(webApp: value));
    });
  }

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginURLCopyWith<$Res>? get loginUrl {
    if (_self.loginUrl == null) {
      return null;
    }

    return $LoginURLCopyWith<$Res>(_self.loginUrl!, (value) {
      return _then(_self.copyWith(loginUrl: value));
    });
  }

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SwitchInlineQueryChosenChatCopyWith<$Res>? get switchInlineQueryChosenChat {
    if (_self.switchInlineQueryChosenChat == null) {
      return null;
    }

    return $SwitchInlineQueryChosenChatCopyWith<$Res>(
      _self.switchInlineQueryChosenChat!,
      (value) {
        return _then(_self.copyWith(switchInlineQueryChosenChat: value));
      },
    );
  }

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CopyTextButtonCopyWith<$Res>? get copyText {
    if (_self.copyText == null) {
      return null;
    }

    return $CopyTextButtonCopyWith<$Res>(_self.copyText!, (value) {
      return _then(_self.copyWith(copyText: value));
    });
  }

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisabledButtonCopyWith<$Res>? get disabled {
    if (_self.disabled == null) {
      return null;
    }

    return $DisabledButtonCopyWith<$Res>(_self.disabled!, (value) {
      return _then(_self.copyWith(disabled: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RichMessageButton].
extension RichMessageButtonPatterns on RichMessageButton {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RichMessageButton value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RichMessageButton() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RichMessageButton value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RichMessageButton():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RichMessageButton value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RichMessageButton() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RichMessageButton implements RichMessageButton {
  const _RichMessageButton({
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'style') this.style,
    @JsonKey(name: 'url') this.url,
    @JsonKey(name: 'callback_data') this.callbackData,
    @JsonKey(name: 'web_app') this.webApp,
    @JsonKey(name: 'login_url') this.loginUrl,
    @JsonKey(name: 'switch_inline_query') this.switchInlineQuery,
    @JsonKey(name: 'switch_inline_query_current_chat')
    this.switchInlineQueryCurrentChat,
    @JsonKey(name: 'switch_inline_query_chosen_chat')
    this.switchInlineQueryChosenChat,
    @JsonKey(name: 'copy_text') this.copyText,
    @JsonKey(name: 'disabled') this.disabled,
  });
  factory _RichMessageButton.fromJson(Map<String, dynamic> json) =>
      _$RichMessageButtonFromJson(json);

  /// Text of the button. May contain only plain text, RichTextCustomEmoji
  /// and RichTextDateTime entities.
  @override
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Optional. Style of the button. Must be one of “danger”, “success”,
  /// “primary”, or “link” (the button is shown as a regular link without
  /// borders). Apps may use theme-specific colors for the button background
  /// and text based on the style. The style “link” is allowed only for
  /// callback buttons.
  @override
  @JsonKey(name: 'style')
  final StyleType? style;

  /// Optional. HTTP or tg:// URL to be opened when the button is pressed.
  /// Links tg://user?id=&lt;user_id&gt; can be used to mention a user by their
  /// identifier without using a username, if this is allowed by their
  /// privacy settings.
  @override
  @JsonKey(name: 'url')
  final String? url;

  /// Optional. Data to be sent in a callback query to the bot when the
  /// button is pressed, 1-64 bytes
  @override
  @JsonKey(name: 'callback_data')
  final String? callbackData;

  /// Optional. Description of the Web App that will be launched when the
  /// user presses the button. The Web App will be able to send an arbitrary
  /// message on behalf of the user using the method answerWebAppQuery.
  /// Available only in private chats between a user and the bot. Not
  /// supported for messages sent on behalf of a business account.
  @override
  @JsonKey(name: 'web_app')
  final WebAppInfo? webApp;

  /// Optional. An HTTPS URL used to automatically authorize the user. Can be
  /// used as a replacement for the Telegram Login Widget. Not supported for
  /// ephemeral messages.
  @override
  @JsonKey(name: 'login_url')
  final LoginURL? loginUrl;

  /// Optional. If set, pressing the button will prompt the user to select one
  /// of their chats, open that chat and insert the bot's username and the
  /// specified inline query in the input field. May be empty, in which case
  /// just the bot's username will be inserted. Not supported for messages
  /// sent in channel direct messages chats and on behalf of a business
  /// account.
  @override
  @JsonKey(name: 'switch_inline_query')
  final String? switchInlineQuery;

  /// Optional. If set, pressing the button will insert the bot's username
  /// and the specified inline query in the current chat's input field. May
  /// be empty, in which case only the bot's username will be inserted. Not
  /// supported in channels and for messages sent in channel direct messages
  /// chats and on behalf of a business account.
  @override
  @JsonKey(name: 'switch_inline_query_current_chat')
  final String? switchInlineQueryCurrentChat;

  /// Optional. If set, pressing the button will prompt the user to select one
  /// of their chats of the specified type, open that chat and insert the
  /// bot's username and the specified inline query in the input field. Not
  /// supported for messages sent in channel direct messages chats and on
  /// behalf of a business account.
  @override
  @JsonKey(name: 'switch_inline_query_chosen_chat')
  final SwitchInlineQueryChosenChat? switchInlineQueryChosenChat;

  /// Optional. A button that copies the specified text to the clipboard
  @override
  @JsonKey(name: 'copy_text')
  final CopyTextButton? copyText;

  /// Optional. If set, then the button is disabled and does nothing
  @override
  @JsonKey(name: 'disabled')
  final DisabledButton? disabled;

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RichMessageButtonCopyWith<_RichMessageButton> get copyWith =>
      __$RichMessageButtonCopyWithImpl<_RichMessageButton>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichMessageButtonToJson(this);
  }

  @override
  String toString() {
    return 'RichMessageButton(text: $text, style: $style, url: $url, callbackData: $callbackData, webApp: $webApp, loginUrl: $loginUrl, switchInlineQuery: $switchInlineQuery, switchInlineQueryCurrentChat: $switchInlineQueryCurrentChat, switchInlineQueryChosenChat: $switchInlineQueryChosenChat, copyText: $copyText, disabled: $disabled)';
  }
}

/// @nodoc
abstract mixin class _$RichMessageButtonCopyWith<$Res>
    implements $RichMessageButtonCopyWith<$Res> {
  factory _$RichMessageButtonCopyWith(
    _RichMessageButton value,
    $Res Function(_RichMessageButton) _then,
  ) = __$RichMessageButtonCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'style') StyleType? style,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'callback_data') String? callbackData,
    @JsonKey(name: 'web_app') WebAppInfo? webApp,
    @JsonKey(name: 'login_url') LoginURL? loginUrl,
    @JsonKey(name: 'switch_inline_query') String? switchInlineQuery,
    @JsonKey(name: 'switch_inline_query_current_chat')
    String? switchInlineQueryCurrentChat,
    @JsonKey(name: 'switch_inline_query_chosen_chat')
    SwitchInlineQueryChosenChat? switchInlineQueryChosenChat,
    @JsonKey(name: 'copy_text') CopyTextButton? copyText,
    @JsonKey(name: 'disabled') DisabledButton? disabled,
  });

  @override
  $RichTextCopyWith<$Res> get text;
  @override
  $WebAppInfoCopyWith<$Res>? get webApp;
  @override
  $LoginURLCopyWith<$Res>? get loginUrl;
  @override
  $SwitchInlineQueryChosenChatCopyWith<$Res>? get switchInlineQueryChosenChat;
  @override
  $CopyTextButtonCopyWith<$Res>? get copyText;
  @override
  $DisabledButtonCopyWith<$Res>? get disabled;
}

/// @nodoc
class __$RichMessageButtonCopyWithImpl<$Res>
    implements _$RichMessageButtonCopyWith<$Res> {
  __$RichMessageButtonCopyWithImpl(this._self, this._then);

  final _RichMessageButton _self;
  final $Res Function(_RichMessageButton) _then;

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
    Object? style = freezed,
    Object? url = freezed,
    Object? callbackData = freezed,
    Object? webApp = freezed,
    Object? loginUrl = freezed,
    Object? switchInlineQuery = freezed,
    Object? switchInlineQueryCurrentChat = freezed,
    Object? switchInlineQueryChosenChat = freezed,
    Object? copyText = freezed,
    Object? disabled = freezed,
  }) {
    return _then(
      _RichMessageButton(
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        style: freezed == style
            ? _self.style
            : style // ignore: cast_nullable_to_non_nullable
                  as StyleType?,
        url: freezed == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        callbackData: freezed == callbackData
            ? _self.callbackData
            : callbackData // ignore: cast_nullable_to_non_nullable
                  as String?,
        webApp: freezed == webApp
            ? _self.webApp
            : webApp // ignore: cast_nullable_to_non_nullable
                  as WebAppInfo?,
        loginUrl: freezed == loginUrl
            ? _self.loginUrl
            : loginUrl // ignore: cast_nullable_to_non_nullable
                  as LoginURL?,
        switchInlineQuery: freezed == switchInlineQuery
            ? _self.switchInlineQuery
            : switchInlineQuery // ignore: cast_nullable_to_non_nullable
                  as String?,
        switchInlineQueryCurrentChat: freezed == switchInlineQueryCurrentChat
            ? _self.switchInlineQueryCurrentChat
            : switchInlineQueryCurrentChat // ignore: cast_nullable_to_non_nullable
                  as String?,
        switchInlineQueryChosenChat: freezed == switchInlineQueryChosenChat
            ? _self.switchInlineQueryChosenChat
            : switchInlineQueryChosenChat // ignore: cast_nullable_to_non_nullable
                  as SwitchInlineQueryChosenChat?,
        copyText: freezed == copyText
            ? _self.copyText
            : copyText // ignore: cast_nullable_to_non_nullable
                  as CopyTextButton?,
        disabled: freezed == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as DisabledButton?,
      ),
    );
  }

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res> get text {
    return $RichTextCopyWith<$Res>(_self.text, (value) {
      return _then(_self.copyWith(text: value));
    });
  }

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebAppInfoCopyWith<$Res>? get webApp {
    if (_self.webApp == null) {
      return null;
    }

    return $WebAppInfoCopyWith<$Res>(_self.webApp!, (value) {
      return _then(_self.copyWith(webApp: value));
    });
  }

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginURLCopyWith<$Res>? get loginUrl {
    if (_self.loginUrl == null) {
      return null;
    }

    return $LoginURLCopyWith<$Res>(_self.loginUrl!, (value) {
      return _then(_self.copyWith(loginUrl: value));
    });
  }

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SwitchInlineQueryChosenChatCopyWith<$Res>? get switchInlineQueryChosenChat {
    if (_self.switchInlineQueryChosenChat == null) {
      return null;
    }

    return $SwitchInlineQueryChosenChatCopyWith<$Res>(
      _self.switchInlineQueryChosenChat!,
      (value) {
        return _then(_self.copyWith(switchInlineQueryChosenChat: value));
      },
    );
  }

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CopyTextButtonCopyWith<$Res>? get copyText {
    if (_self.copyText == null) {
      return null;
    }

    return $CopyTextButtonCopyWith<$Res>(_self.copyText!, (value) {
      return _then(_self.copyWith(copyText: value));
    });
  }

  /// Create a copy of RichMessageButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisabledButtonCopyWith<$Res>? get disabled {
    if (_self.disabled == null) {
      return null;
    }

    return $DisabledButtonCopyWith<$Res>(_self.disabled!, (value) {
      return _then(_self.copyWith(disabled: value));
    });
  }
}
