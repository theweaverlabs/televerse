// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ephemeral_message_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EphemeralMessageParameters {
  /// Identifier of the user who will receive the message. It is not
  /// guaranteed that the user will receive the message, especially if they
  /// are offline.
  @JsonKey(name: 'receiver_user_id')
  int get receiverUserId;

  /// Optional. Identifier of the callback query which triggered the message,
  /// if any
  @JsonKey(name: 'callback_query_id')
  String? get callbackQueryId;

  /// Optional. Pass True if the ephemeral message must be shown in place of
  /// the original message. Must be False for callback queries from ephemeral
  /// messages, which must be edited using regular editEphemeralMessage…
  /// methods.
  @JsonKey(name: 'replace_callback_query_message')
  bool? get replaceCallbackQueryMessage;

  /// Create a copy of EphemeralMessageParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EphemeralMessageParametersCopyWith<EphemeralMessageParameters>
  get copyWith =>
      _$EphemeralMessageParametersCopyWithImpl<EphemeralMessageParameters>(
        this as EphemeralMessageParameters,
        _$identity,
      );

  /// Serializes this EphemeralMessageParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'EphemeralMessageParameters(receiverUserId: $receiverUserId, callbackQueryId: $callbackQueryId, replaceCallbackQueryMessage: $replaceCallbackQueryMessage)';
  }
}

/// @nodoc
abstract mixin class $EphemeralMessageParametersCopyWith<$Res> {
  factory $EphemeralMessageParametersCopyWith(
    EphemeralMessageParameters value,
    $Res Function(EphemeralMessageParameters) _then,
  ) = _$EphemeralMessageParametersCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'receiver_user_id') int receiverUserId,
    @JsonKey(name: 'callback_query_id') String? callbackQueryId,
    @JsonKey(name: 'replace_callback_query_message')
    bool? replaceCallbackQueryMessage,
  });
}

/// @nodoc
class _$EphemeralMessageParametersCopyWithImpl<$Res>
    implements $EphemeralMessageParametersCopyWith<$Res> {
  _$EphemeralMessageParametersCopyWithImpl(this._self, this._then);

  final EphemeralMessageParameters _self;
  final $Res Function(EphemeralMessageParameters) _then;

  /// Create a copy of EphemeralMessageParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverUserId = null,
    Object? callbackQueryId = freezed,
    Object? replaceCallbackQueryMessage = freezed,
  }) {
    return _then(
      _self.copyWith(
        receiverUserId: null == receiverUserId
            ? _self.receiverUserId
            : receiverUserId // ignore: cast_nullable_to_non_nullable
                  as int,
        callbackQueryId: freezed == callbackQueryId
            ? _self.callbackQueryId
            : callbackQueryId // ignore: cast_nullable_to_non_nullable
                  as String?,
        replaceCallbackQueryMessage: freezed == replaceCallbackQueryMessage
            ? _self.replaceCallbackQueryMessage
            : replaceCallbackQueryMessage // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [EphemeralMessageParameters].
extension EphemeralMessageParametersPatterns on EphemeralMessageParameters {
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
    TResult Function(_EphemeralMessageParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EphemeralMessageParameters() when $default != null:
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
    TResult Function(_EphemeralMessageParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EphemeralMessageParameters():
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
    TResult? Function(_EphemeralMessageParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EphemeralMessageParameters() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EphemeralMessageParameters implements EphemeralMessageParameters {
  const _EphemeralMessageParameters({
    @JsonKey(name: 'receiver_user_id') required this.receiverUserId,
    @JsonKey(name: 'callback_query_id') this.callbackQueryId,
    @JsonKey(name: 'replace_callback_query_message')
    this.replaceCallbackQueryMessage,
  });
  factory _EphemeralMessageParameters.fromJson(Map<String, dynamic> json) =>
      _$EphemeralMessageParametersFromJson(json);

  /// Identifier of the user who will receive the message. It is not
  /// guaranteed that the user will receive the message, especially if they
  /// are offline.
  @override
  @JsonKey(name: 'receiver_user_id')
  final int receiverUserId;

  /// Optional. Identifier of the callback query which triggered the message,
  /// if any
  @override
  @JsonKey(name: 'callback_query_id')
  final String? callbackQueryId;

  /// Optional. Pass True if the ephemeral message must be shown in place of
  /// the original message. Must be False for callback queries from ephemeral
  /// messages, which must be edited using regular editEphemeralMessage…
  /// methods.
  @override
  @JsonKey(name: 'replace_callback_query_message')
  final bool? replaceCallbackQueryMessage;

  /// Create a copy of EphemeralMessageParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EphemeralMessageParametersCopyWith<_EphemeralMessageParameters>
  get copyWith =>
      __$EphemeralMessageParametersCopyWithImpl<_EphemeralMessageParameters>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$EphemeralMessageParametersToJson(this);
  }

  @override
  String toString() {
    return 'EphemeralMessageParameters(receiverUserId: $receiverUserId, callbackQueryId: $callbackQueryId, replaceCallbackQueryMessage: $replaceCallbackQueryMessage)';
  }
}

/// @nodoc
abstract mixin class _$EphemeralMessageParametersCopyWith<$Res>
    implements $EphemeralMessageParametersCopyWith<$Res> {
  factory _$EphemeralMessageParametersCopyWith(
    _EphemeralMessageParameters value,
    $Res Function(_EphemeralMessageParameters) _then,
  ) = __$EphemeralMessageParametersCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'receiver_user_id') int receiverUserId,
    @JsonKey(name: 'callback_query_id') String? callbackQueryId,
    @JsonKey(name: 'replace_callback_query_message')
    bool? replaceCallbackQueryMessage,
  });
}

/// @nodoc
class __$EphemeralMessageParametersCopyWithImpl<$Res>
    implements _$EphemeralMessageParametersCopyWith<$Res> {
  __$EphemeralMessageParametersCopyWithImpl(this._self, this._then);

  final _EphemeralMessageParameters _self;
  final $Res Function(_EphemeralMessageParameters) _then;

  /// Create a copy of EphemeralMessageParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? receiverUserId = null,
    Object? callbackQueryId = freezed,
    Object? replaceCallbackQueryMessage = freezed,
  }) {
    return _then(
      _EphemeralMessageParameters(
        receiverUserId: null == receiverUserId
            ? _self.receiverUserId
            : receiverUserId // ignore: cast_nullable_to_non_nullable
                  as int,
        callbackQueryId: freezed == callbackQueryId
            ? _self.callbackQueryId
            : callbackQueryId // ignore: cast_nullable_to_non_nullable
                  as String?,
        replaceCallbackQueryMessage: freezed == replaceCallbackQueryMessage
            ? _self.replaceCallbackQueryMessage
            : replaceCallbackQueryMessage // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}
