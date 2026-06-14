// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sent_guest_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SentGuestMessage {
  /// Identifier of the sent inline message.
  @JsonKey(name: 'inline_message_id')
  String get inlineMessageId;

  /// Create a copy of SentGuestMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SentGuestMessageCopyWith<SentGuestMessage> get copyWith =>
      _$SentGuestMessageCopyWithImpl<SentGuestMessage>(
        this as SentGuestMessage,
        _$identity,
      );

  /// Serializes this SentGuestMessage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SentGuestMessage(inlineMessageId: $inlineMessageId)';
  }
}

/// @nodoc
abstract mixin class $SentGuestMessageCopyWith<$Res> {
  factory $SentGuestMessageCopyWith(
    SentGuestMessage value,
    $Res Function(SentGuestMessage) _then,
  ) = _$SentGuestMessageCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'inline_message_id') String inlineMessageId});
}

/// @nodoc
class _$SentGuestMessageCopyWithImpl<$Res>
    implements $SentGuestMessageCopyWith<$Res> {
  _$SentGuestMessageCopyWithImpl(this._self, this._then);

  final SentGuestMessage _self;
  final $Res Function(SentGuestMessage) _then;

  /// Create a copy of SentGuestMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? inlineMessageId = null}) {
    return _then(
      _self.copyWith(
        inlineMessageId: null == inlineMessageId
            ? _self.inlineMessageId
            : inlineMessageId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [SentGuestMessage].
extension SentGuestMessagePatterns on SentGuestMessage {
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
    TResult Function(_SentGuestMessage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SentGuestMessage() when $default != null:
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
    TResult Function(_SentGuestMessage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SentGuestMessage():
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
    TResult? Function(_SentGuestMessage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SentGuestMessage() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SentGuestMessage implements SentGuestMessage {
  const _SentGuestMessage({
    @JsonKey(name: 'inline_message_id') required this.inlineMessageId,
  });
  factory _SentGuestMessage.fromJson(Map<String, dynamic> json) =>
      _$SentGuestMessageFromJson(json);

  /// Identifier of the sent inline message.
  @override
  @JsonKey(name: 'inline_message_id')
  final String inlineMessageId;

  /// Create a copy of SentGuestMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SentGuestMessageCopyWith<_SentGuestMessage> get copyWith =>
      __$SentGuestMessageCopyWithImpl<_SentGuestMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SentGuestMessageToJson(this);
  }

  @override
  String toString() {
    return 'SentGuestMessage(inlineMessageId: $inlineMessageId)';
  }
}

/// @nodoc
abstract mixin class _$SentGuestMessageCopyWith<$Res>
    implements $SentGuestMessageCopyWith<$Res> {
  factory _$SentGuestMessageCopyWith(
    _SentGuestMessage value,
    $Res Function(_SentGuestMessage) _then,
  ) = __$SentGuestMessageCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'inline_message_id') String inlineMessageId});
}

/// @nodoc
class __$SentGuestMessageCopyWithImpl<$Res>
    implements _$SentGuestMessageCopyWith<$Res> {
  __$SentGuestMessageCopyWithImpl(this._self, this._then);

  final _SentGuestMessage _self;
  final $Res Function(_SentGuestMessage) _then;

  /// Create a copy of SentGuestMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? inlineMessageId = null}) {
    return _then(
      _SentGuestMessage(
        inlineMessageId: null == inlineMessageId
            ? _self.inlineMessageId
            : inlineMessageId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
