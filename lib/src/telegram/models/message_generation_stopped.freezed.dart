// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_generation_stopped.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageGenerationStopped {
  /// Chat in which the message is generated
  @JsonKey(name: 'chat')
  Chat get chat;

  /// Optional. Unique identifier of the message thread in which the message
  /// is generated
  @JsonKey(name: 'message_thread_id')
  int? get messageThreadId;

  /// Unique identifier of the message draft which was stopped
  @JsonKey(name: 'draft_id')
  int get draftId;

  /// Create a copy of MessageGenerationStopped
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageGenerationStoppedCopyWith<MessageGenerationStopped> get copyWith =>
      _$MessageGenerationStoppedCopyWithImpl<MessageGenerationStopped>(
        this as MessageGenerationStopped,
        _$identity,
      );

  /// Serializes this MessageGenerationStopped to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'MessageGenerationStopped(chat: $chat, messageThreadId: $messageThreadId, draftId: $draftId)';
  }
}

/// @nodoc
abstract mixin class $MessageGenerationStoppedCopyWith<$Res> {
  factory $MessageGenerationStoppedCopyWith(
    MessageGenerationStopped value,
    $Res Function(MessageGenerationStopped) _then,
  ) = _$MessageGenerationStoppedCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'chat') Chat chat,
    @JsonKey(name: 'message_thread_id') int? messageThreadId,
    @JsonKey(name: 'draft_id') int draftId,
  });

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class _$MessageGenerationStoppedCopyWithImpl<$Res>
    implements $MessageGenerationStoppedCopyWith<$Res> {
  _$MessageGenerationStoppedCopyWithImpl(this._self, this._then);

  final MessageGenerationStopped _self;
  final $Res Function(MessageGenerationStopped) _then;

  /// Create a copy of MessageGenerationStopped
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? messageThreadId = freezed,
    Object? draftId = null,
  }) {
    return _then(
      _self.copyWith(
        chat: null == chat
            ? _self.chat
            : chat // ignore: cast_nullable_to_non_nullable
                  as Chat,
        messageThreadId: freezed == messageThreadId
            ? _self.messageThreadId
            : messageThreadId // ignore: cast_nullable_to_non_nullable
                  as int?,
        draftId: null == draftId
            ? _self.draftId
            : draftId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }

  /// Create a copy of MessageGenerationStopped
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MessageGenerationStopped].
extension MessageGenerationStoppedPatterns on MessageGenerationStopped {
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
    TResult Function(_MessageGenerationStopped value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MessageGenerationStopped() when $default != null:
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
    TResult Function(_MessageGenerationStopped value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MessageGenerationStopped():
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
    TResult? Function(_MessageGenerationStopped value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MessageGenerationStopped() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MessageGenerationStopped implements MessageGenerationStopped {
  const _MessageGenerationStopped({
    @JsonKey(name: 'chat') required this.chat,
    @JsonKey(name: 'message_thread_id') this.messageThreadId,
    @JsonKey(name: 'draft_id') required this.draftId,
  });
  factory _MessageGenerationStopped.fromJson(Map<String, dynamic> json) =>
      _$MessageGenerationStoppedFromJson(json);

  /// Chat in which the message is generated
  @override
  @JsonKey(name: 'chat')
  final Chat chat;

  /// Optional. Unique identifier of the message thread in which the message
  /// is generated
  @override
  @JsonKey(name: 'message_thread_id')
  final int? messageThreadId;

  /// Unique identifier of the message draft which was stopped
  @override
  @JsonKey(name: 'draft_id')
  final int draftId;

  /// Create a copy of MessageGenerationStopped
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageGenerationStoppedCopyWith<_MessageGenerationStopped> get copyWith =>
      __$MessageGenerationStoppedCopyWithImpl<_MessageGenerationStopped>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$MessageGenerationStoppedToJson(this);
  }

  @override
  String toString() {
    return 'MessageGenerationStopped(chat: $chat, messageThreadId: $messageThreadId, draftId: $draftId)';
  }
}

/// @nodoc
abstract mixin class _$MessageGenerationStoppedCopyWith<$Res>
    implements $MessageGenerationStoppedCopyWith<$Res> {
  factory _$MessageGenerationStoppedCopyWith(
    _MessageGenerationStopped value,
    $Res Function(_MessageGenerationStopped) _then,
  ) = __$MessageGenerationStoppedCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'chat') Chat chat,
    @JsonKey(name: 'message_thread_id') int? messageThreadId,
    @JsonKey(name: 'draft_id') int draftId,
  });

  @override
  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$MessageGenerationStoppedCopyWithImpl<$Res>
    implements _$MessageGenerationStoppedCopyWith<$Res> {
  __$MessageGenerationStoppedCopyWithImpl(this._self, this._then);

  final _MessageGenerationStopped _self;
  final $Res Function(_MessageGenerationStopped) _then;

  /// Create a copy of MessageGenerationStopped
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chat = null,
    Object? messageThreadId = freezed,
    Object? draftId = null,
  }) {
    return _then(
      _MessageGenerationStopped(
        chat: null == chat
            ? _self.chat
            : chat // ignore: cast_nullable_to_non_nullable
                  as Chat,
        messageThreadId: freezed == messageThreadId
            ? _self.messageThreadId
            : messageThreadId // ignore: cast_nullable_to_non_nullable
                  as int?,
        draftId: null == draftId
            ? _self.draftId
            : draftId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }

  /// Create a copy of MessageGenerationStopped
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }
}
