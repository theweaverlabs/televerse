// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WidgetQuery {
  /// Unique identifier of the query.
  @JsonKey(name: 'id')
  String get id;

  /// User who sent the query.
  @JsonKey(name: 'from')
  User get from;

  /// Global identifier for the chat where the message was sent.
  @JsonKey(name: 'chat_instance')
  String get chatInstance;

  /// Type of the query and its associated wallet data, if any.
  @JsonKey(name: 'type')
  WidgetQueryType get type;

  /// Data sent by the widget, 1-64 bytes.
  @JsonKey(name: 'data')
  String get data;

  /// Chat containing the widget message, if the message is not inline.
  @JsonKey(name: 'chat')
  Chat? get chat;

  /// Identifier of the widget message, if the message is not inline.
  @JsonKey(name: 'message_id')
  int? get messageId;

  /// Identifier of the inline message containing the widget.
  @JsonKey(name: 'inline_message_id')
  String? get inlineMessageId;

  /// Type of the chat, for widgets in inline messages.
  @JsonKey(name: 'chat_type')
  ChatType? get chatType;

  /// Identifier of the widget, if it is shared.
  @JsonKey(name: 'widget_id')
  String? get widgetId;

  /// Create a copy of WidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WidgetQueryCopyWith<WidgetQuery> get copyWith =>
      _$WidgetQueryCopyWithImpl<WidgetQuery>(this as WidgetQuery, _$identity);

  /// Serializes this WidgetQuery to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'WidgetQuery(id: $id, from: $from, chatInstance: $chatInstance, type: $type, data: $data, chat: $chat, messageId: $messageId, inlineMessageId: $inlineMessageId, chatType: $chatType, widgetId: $widgetId)';
  }
}

/// @nodoc
abstract mixin class $WidgetQueryCopyWith<$Res> {
  factory $WidgetQueryCopyWith(
    WidgetQuery value,
    $Res Function(WidgetQuery) _then,
  ) = _$WidgetQueryCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'from') User from,
    @JsonKey(name: 'chat_instance') String chatInstance,
    @JsonKey(name: 'type') WidgetQueryType type,
    @JsonKey(name: 'data') String data,
    @JsonKey(name: 'chat') Chat? chat,
    @JsonKey(name: 'message_id') int? messageId,
    @JsonKey(name: 'inline_message_id') String? inlineMessageId,
    @JsonKey(name: 'chat_type') ChatType? chatType,
    @JsonKey(name: 'widget_id') String? widgetId,
  });

  $UserCopyWith<$Res> get from;
  $WidgetQueryTypeCopyWith<$Res> get type;
  $ChatCopyWith<$Res>? get chat;
}

/// @nodoc
class _$WidgetQueryCopyWithImpl<$Res> implements $WidgetQueryCopyWith<$Res> {
  _$WidgetQueryCopyWithImpl(this._self, this._then);

  final WidgetQuery _self;
  final $Res Function(WidgetQuery) _then;

  /// Create a copy of WidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? chatInstance = null,
    Object? type = null,
    Object? data = null,
    Object? chat = freezed,
    Object? messageId = freezed,
    Object? inlineMessageId = freezed,
    Object? chatType = freezed,
    Object? widgetId = freezed,
  }) {
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        from: null == from
            ? _self.from
            : from // ignore: cast_nullable_to_non_nullable
                  as User,
        chatInstance: null == chatInstance
            ? _self.chatInstance
            : chatInstance // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as WidgetQueryType,
        data: null == data
            ? _self.data
            : data // ignore: cast_nullable_to_non_nullable
                  as String,
        chat: freezed == chat
            ? _self.chat
            : chat // ignore: cast_nullable_to_non_nullable
                  as Chat?,
        messageId: freezed == messageId
            ? _self.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as int?,
        inlineMessageId: freezed == inlineMessageId
            ? _self.inlineMessageId
            : inlineMessageId // ignore: cast_nullable_to_non_nullable
                  as String?,
        chatType: freezed == chatType
            ? _self.chatType
            : chatType // ignore: cast_nullable_to_non_nullable
                  as ChatType?,
        widgetId: freezed == widgetId
            ? _self.widgetId
            : widgetId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of WidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of WidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WidgetQueryTypeCopyWith<$Res> get type {
    return $WidgetQueryTypeCopyWith<$Res>(_self.type, (value) {
      return _then(_self.copyWith(type: value));
    });
  }

  /// Create a copy of WidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get chat {
    if (_self.chat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.chat!, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }
}

/// Adds pattern-matching-related methods to [WidgetQuery].
extension WidgetQueryPatterns on WidgetQuery {
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
    TResult Function(_WidgetQuery value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WidgetQuery() when $default != null:
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
    TResult Function(_WidgetQuery value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WidgetQuery():
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
    TResult? Function(_WidgetQuery value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WidgetQuery() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WidgetQuery implements WidgetQuery {
  const _WidgetQuery({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'from') required this.from,
    @JsonKey(name: 'chat_instance') required this.chatInstance,
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'data') required this.data,
    @JsonKey(name: 'chat') this.chat,
    @JsonKey(name: 'message_id') this.messageId,
    @JsonKey(name: 'inline_message_id') this.inlineMessageId,
    @JsonKey(name: 'chat_type') this.chatType,
    @JsonKey(name: 'widget_id') this.widgetId,
  });
  factory _WidgetQuery.fromJson(Map<String, dynamic> json) =>
      _$WidgetQueryFromJson(json);

  /// Unique identifier of the query.
  @override
  @JsonKey(name: 'id')
  final String id;

  /// User who sent the query.
  @override
  @JsonKey(name: 'from')
  final User from;

  /// Global identifier for the chat where the message was sent.
  @override
  @JsonKey(name: 'chat_instance')
  final String chatInstance;

  /// Type of the query and its associated wallet data, if any.
  @override
  @JsonKey(name: 'type')
  final WidgetQueryType type;

  /// Data sent by the widget, 1-64 bytes.
  @override
  @JsonKey(name: 'data')
  final String data;

  /// Chat containing the widget message, if the message is not inline.
  @override
  @JsonKey(name: 'chat')
  final Chat? chat;

  /// Identifier of the widget message, if the message is not inline.
  @override
  @JsonKey(name: 'message_id')
  final int? messageId;

  /// Identifier of the inline message containing the widget.
  @override
  @JsonKey(name: 'inline_message_id')
  final String? inlineMessageId;

  /// Type of the chat, for widgets in inline messages.
  @override
  @JsonKey(name: 'chat_type')
  final ChatType? chatType;

  /// Identifier of the widget, if it is shared.
  @override
  @JsonKey(name: 'widget_id')
  final String? widgetId;

  /// Create a copy of WidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WidgetQueryCopyWith<_WidgetQuery> get copyWith =>
      __$WidgetQueryCopyWithImpl<_WidgetQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WidgetQueryToJson(this);
  }

  @override
  String toString() {
    return 'WidgetQuery(id: $id, from: $from, chatInstance: $chatInstance, type: $type, data: $data, chat: $chat, messageId: $messageId, inlineMessageId: $inlineMessageId, chatType: $chatType, widgetId: $widgetId)';
  }
}

/// @nodoc
abstract mixin class _$WidgetQueryCopyWith<$Res>
    implements $WidgetQueryCopyWith<$Res> {
  factory _$WidgetQueryCopyWith(
    _WidgetQuery value,
    $Res Function(_WidgetQuery) _then,
  ) = __$WidgetQueryCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'from') User from,
    @JsonKey(name: 'chat_instance') String chatInstance,
    @JsonKey(name: 'type') WidgetQueryType type,
    @JsonKey(name: 'data') String data,
    @JsonKey(name: 'chat') Chat? chat,
    @JsonKey(name: 'message_id') int? messageId,
    @JsonKey(name: 'inline_message_id') String? inlineMessageId,
    @JsonKey(name: 'chat_type') ChatType? chatType,
    @JsonKey(name: 'widget_id') String? widgetId,
  });

  @override
  $UserCopyWith<$Res> get from;
  @override
  $WidgetQueryTypeCopyWith<$Res> get type;
  @override
  $ChatCopyWith<$Res>? get chat;
}

/// @nodoc
class __$WidgetQueryCopyWithImpl<$Res> implements _$WidgetQueryCopyWith<$Res> {
  __$WidgetQueryCopyWithImpl(this._self, this._then);

  final _WidgetQuery _self;
  final $Res Function(_WidgetQuery) _then;

  /// Create a copy of WidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? chatInstance = null,
    Object? type = null,
    Object? data = null,
    Object? chat = freezed,
    Object? messageId = freezed,
    Object? inlineMessageId = freezed,
    Object? chatType = freezed,
    Object? widgetId = freezed,
  }) {
    return _then(
      _WidgetQuery(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        from: null == from
            ? _self.from
            : from // ignore: cast_nullable_to_non_nullable
                  as User,
        chatInstance: null == chatInstance
            ? _self.chatInstance
            : chatInstance // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as WidgetQueryType,
        data: null == data
            ? _self.data
            : data // ignore: cast_nullable_to_non_nullable
                  as String,
        chat: freezed == chat
            ? _self.chat
            : chat // ignore: cast_nullable_to_non_nullable
                  as Chat?,
        messageId: freezed == messageId
            ? _self.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as int?,
        inlineMessageId: freezed == inlineMessageId
            ? _self.inlineMessageId
            : inlineMessageId // ignore: cast_nullable_to_non_nullable
                  as String?,
        chatType: freezed == chatType
            ? _self.chatType
            : chatType // ignore: cast_nullable_to_non_nullable
                  as ChatType?,
        widgetId: freezed == widgetId
            ? _self.widgetId
            : widgetId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of WidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of WidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WidgetQueryTypeCopyWith<$Res> get type {
    return $WidgetQueryTypeCopyWith<$Res>(_self.type, (value) {
      return _then(_self.copyWith(type: value));
    });
  }

  /// Create a copy of WidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get chat {
    if (_self.chat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.chat!, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }
}
