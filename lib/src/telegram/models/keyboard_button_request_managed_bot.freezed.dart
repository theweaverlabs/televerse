// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard_button_request_managed_bot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KeyboardButtonRequestManagedBot {
  /// Signed 32-bit identifier of the request. Must be unique within the
  /// message.
  @JsonKey(name: 'request_id')
  int get requestId;

  /// Optional. Suggested name for the bot.
  @JsonKey(name: 'suggested_name')
  String? get suggestedName;

  /// Optional. Suggested username for the bot.
  @JsonKey(name: 'suggested_username')
  String? get suggestedUsername;

  /// Create a copy of KeyboardButtonRequestManagedBot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeyboardButtonRequestManagedBotCopyWith<KeyboardButtonRequestManagedBot>
  get copyWith =>
      _$KeyboardButtonRequestManagedBotCopyWithImpl<
        KeyboardButtonRequestManagedBot
      >(this as KeyboardButtonRequestManagedBot, _$identity);

  /// Serializes this KeyboardButtonRequestManagedBot to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'KeyboardButtonRequestManagedBot(requestId: $requestId, suggestedName: $suggestedName, suggestedUsername: $suggestedUsername)';
  }
}

/// @nodoc
abstract mixin class $KeyboardButtonRequestManagedBotCopyWith<$Res> {
  factory $KeyboardButtonRequestManagedBotCopyWith(
    KeyboardButtonRequestManagedBot value,
    $Res Function(KeyboardButtonRequestManagedBot) _then,
  ) = _$KeyboardButtonRequestManagedBotCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'request_id') int requestId,
    @JsonKey(name: 'suggested_name') String? suggestedName,
    @JsonKey(name: 'suggested_username') String? suggestedUsername,
  });
}

/// @nodoc
class _$KeyboardButtonRequestManagedBotCopyWithImpl<$Res>
    implements $KeyboardButtonRequestManagedBotCopyWith<$Res> {
  _$KeyboardButtonRequestManagedBotCopyWithImpl(this._self, this._then);

  final KeyboardButtonRequestManagedBot _self;
  final $Res Function(KeyboardButtonRequestManagedBot) _then;

  /// Create a copy of KeyboardButtonRequestManagedBot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? suggestedName = freezed,
    Object? suggestedUsername = freezed,
  }) {
    return _then(
      _self.copyWith(
        requestId: null == requestId
            ? _self.requestId
            : requestId // ignore: cast_nullable_to_non_nullable
                  as int,
        suggestedName: freezed == suggestedName
            ? _self.suggestedName
            : suggestedName // ignore: cast_nullable_to_non_nullable
                  as String?,
        suggestedUsername: freezed == suggestedUsername
            ? _self.suggestedUsername
            : suggestedUsername // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [KeyboardButtonRequestManagedBot].
extension KeyboardButtonRequestManagedBotPatterns
    on KeyboardButtonRequestManagedBot {
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
    TResult Function(_KeyboardButtonRequestManagedBot value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KeyboardButtonRequestManagedBot() when $default != null:
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
    TResult Function(_KeyboardButtonRequestManagedBot value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardButtonRequestManagedBot():
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
    TResult? Function(_KeyboardButtonRequestManagedBot value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardButtonRequestManagedBot() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _KeyboardButtonRequestManagedBot
    implements KeyboardButtonRequestManagedBot {
  const _KeyboardButtonRequestManagedBot({
    @JsonKey(name: 'request_id') required this.requestId,
    @JsonKey(name: 'suggested_name') this.suggestedName,
    @JsonKey(name: 'suggested_username') this.suggestedUsername,
  });
  factory _KeyboardButtonRequestManagedBot.fromJson(
    Map<String, dynamic> json,
  ) => _$KeyboardButtonRequestManagedBotFromJson(json);

  /// Signed 32-bit identifier of the request. Must be unique within the
  /// message.
  @override
  @JsonKey(name: 'request_id')
  final int requestId;

  /// Optional. Suggested name for the bot.
  @override
  @JsonKey(name: 'suggested_name')
  final String? suggestedName;

  /// Optional. Suggested username for the bot.
  @override
  @JsonKey(name: 'suggested_username')
  final String? suggestedUsername;

  /// Create a copy of KeyboardButtonRequestManagedBot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeyboardButtonRequestManagedBotCopyWith<_KeyboardButtonRequestManagedBot>
  get copyWith =>
      __$KeyboardButtonRequestManagedBotCopyWithImpl<
        _KeyboardButtonRequestManagedBot
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KeyboardButtonRequestManagedBotToJson(this);
  }

  @override
  String toString() {
    return 'KeyboardButtonRequestManagedBot(requestId: $requestId, suggestedName: $suggestedName, suggestedUsername: $suggestedUsername)';
  }
}

/// @nodoc
abstract mixin class _$KeyboardButtonRequestManagedBotCopyWith<$Res>
    implements $KeyboardButtonRequestManagedBotCopyWith<$Res> {
  factory _$KeyboardButtonRequestManagedBotCopyWith(
    _KeyboardButtonRequestManagedBot value,
    $Res Function(_KeyboardButtonRequestManagedBot) _then,
  ) = __$KeyboardButtonRequestManagedBotCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'request_id') int requestId,
    @JsonKey(name: 'suggested_name') String? suggestedName,
    @JsonKey(name: 'suggested_username') String? suggestedUsername,
  });
}

/// @nodoc
class __$KeyboardButtonRequestManagedBotCopyWithImpl<$Res>
    implements _$KeyboardButtonRequestManagedBotCopyWith<$Res> {
  __$KeyboardButtonRequestManagedBotCopyWithImpl(this._self, this._then);

  final _KeyboardButtonRequestManagedBot _self;
  final $Res Function(_KeyboardButtonRequestManagedBot) _then;

  /// Create a copy of KeyboardButtonRequestManagedBot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? suggestedName = freezed,
    Object? suggestedUsername = freezed,
  }) {
    return _then(
      _KeyboardButtonRequestManagedBot(
        requestId: null == requestId
            ? _self.requestId
            : requestId // ignore: cast_nullable_to_non_nullable
                  as int,
        suggestedName: freezed == suggestedName
            ? _self.suggestedName
            : suggestedName // ignore: cast_nullable_to_non_nullable
                  as String?,
        suggestedUsername: freezed == suggestedUsername
            ? _self.suggestedUsername
            : suggestedUsername // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
