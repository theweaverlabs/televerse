// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'managed_bot_updated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ManagedBotUpdated {
  /// User that created the bot
  @JsonKey(name: 'user')
  User get user;

  /// Information about the bot. Token of the bot can be fetched using the
  /// method getManagedBotToken.
  @JsonKey(name: 'bot')
  User get bot;

  /// Create a copy of ManagedBotUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ManagedBotUpdatedCopyWith<ManagedBotUpdated> get copyWith =>
      _$ManagedBotUpdatedCopyWithImpl<ManagedBotUpdated>(
        this as ManagedBotUpdated,
        _$identity,
      );

  /// Serializes this ManagedBotUpdated to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ManagedBotUpdated(user: $user, bot: $bot)';
  }
}

/// @nodoc
abstract mixin class $ManagedBotUpdatedCopyWith<$Res> {
  factory $ManagedBotUpdatedCopyWith(
    ManagedBotUpdated value,
    $Res Function(ManagedBotUpdated) _then,
  ) = _$ManagedBotUpdatedCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'user') User user, @JsonKey(name: 'bot') User bot});

  $UserCopyWith<$Res> get user;
  $UserCopyWith<$Res> get bot;
}

/// @nodoc
class _$ManagedBotUpdatedCopyWithImpl<$Res>
    implements $ManagedBotUpdatedCopyWith<$Res> {
  _$ManagedBotUpdatedCopyWithImpl(this._self, this._then);

  final ManagedBotUpdated _self;
  final $Res Function(ManagedBotUpdated) _then;

  /// Create a copy of ManagedBotUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null, Object? bot = null}) {
    return _then(
      _self.copyWith(
        user: null == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
        bot: null == bot
            ? _self.bot
            : bot // ignore: cast_nullable_to_non_nullable
                  as User,
      ),
    );
  }

  /// Create a copy of ManagedBotUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of ManagedBotUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get bot {
    return $UserCopyWith<$Res>(_self.bot, (value) {
      return _then(_self.copyWith(bot: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ManagedBotUpdated].
extension ManagedBotUpdatedPatterns on ManagedBotUpdated {
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
    TResult Function(_ManagedBotUpdated value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ManagedBotUpdated() when $default != null:
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
    TResult Function(_ManagedBotUpdated value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManagedBotUpdated():
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
    TResult? Function(_ManagedBotUpdated value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManagedBotUpdated() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ManagedBotUpdated implements ManagedBotUpdated {
  const _ManagedBotUpdated({
    @JsonKey(name: 'user') required this.user,
    @JsonKey(name: 'bot') required this.bot,
  });
  factory _ManagedBotUpdated.fromJson(Map<String, dynamic> json) =>
      _$ManagedBotUpdatedFromJson(json);

  /// User that created the bot
  @override
  @JsonKey(name: 'user')
  final User user;

  /// Information about the bot. Token of the bot can be fetched using the
  /// method getManagedBotToken.
  @override
  @JsonKey(name: 'bot')
  final User bot;

  /// Create a copy of ManagedBotUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ManagedBotUpdatedCopyWith<_ManagedBotUpdated> get copyWith =>
      __$ManagedBotUpdatedCopyWithImpl<_ManagedBotUpdated>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ManagedBotUpdatedToJson(this);
  }

  @override
  String toString() {
    return 'ManagedBotUpdated(user: $user, bot: $bot)';
  }
}

/// @nodoc
abstract mixin class _$ManagedBotUpdatedCopyWith<$Res>
    implements $ManagedBotUpdatedCopyWith<$Res> {
  factory _$ManagedBotUpdatedCopyWith(
    _ManagedBotUpdated value,
    $Res Function(_ManagedBotUpdated) _then,
  ) = __$ManagedBotUpdatedCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user') User user, @JsonKey(name: 'bot') User bot});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $UserCopyWith<$Res> get bot;
}

/// @nodoc
class __$ManagedBotUpdatedCopyWithImpl<$Res>
    implements _$ManagedBotUpdatedCopyWith<$Res> {
  __$ManagedBotUpdatedCopyWithImpl(this._self, this._then);

  final _ManagedBotUpdated _self;
  final $Res Function(_ManagedBotUpdated) _then;

  /// Create a copy of ManagedBotUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? user = null, Object? bot = null}) {
    return _then(
      _ManagedBotUpdated(
        user: null == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
        bot: null == bot
            ? _self.bot
            : bot // ignore: cast_nullable_to_non_nullable
                  as User,
      ),
    );
  }

  /// Create a copy of ManagedBotUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of ManagedBotUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get bot {
    return $UserCopyWith<$Res>(_self.bot, (value) {
      return _then(_self.copyWith(bot: value));
    });
  }
}
