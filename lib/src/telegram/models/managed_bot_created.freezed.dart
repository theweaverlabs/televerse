// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'managed_bot_created.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ManagedBotCreated {
  /// Information about the bot. The bot's token can be fetched using the
  /// method `getManagedBotToken`.
  @JsonKey(name: 'bot')
  User get bot;

  /// Create a copy of ManagedBotCreated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ManagedBotCreatedCopyWith<ManagedBotCreated> get copyWith =>
      _$ManagedBotCreatedCopyWithImpl<ManagedBotCreated>(
        this as ManagedBotCreated,
        _$identity,
      );

  /// Serializes this ManagedBotCreated to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ManagedBotCreated(bot: $bot)';
  }
}

/// @nodoc
abstract mixin class $ManagedBotCreatedCopyWith<$Res> {
  factory $ManagedBotCreatedCopyWith(
    ManagedBotCreated value,
    $Res Function(ManagedBotCreated) _then,
  ) = _$ManagedBotCreatedCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'bot') User bot});

  $UserCopyWith<$Res> get bot;
}

/// @nodoc
class _$ManagedBotCreatedCopyWithImpl<$Res>
    implements $ManagedBotCreatedCopyWith<$Res> {
  _$ManagedBotCreatedCopyWithImpl(this._self, this._then);

  final ManagedBotCreated _self;
  final $Res Function(ManagedBotCreated) _then;

  /// Create a copy of ManagedBotCreated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? bot = null}) {
    return _then(
      _self.copyWith(
        bot: null == bot
            ? _self.bot
            : bot // ignore: cast_nullable_to_non_nullable
                  as User,
      ),
    );
  }

  /// Create a copy of ManagedBotCreated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get bot {
    return $UserCopyWith<$Res>(_self.bot, (value) {
      return _then(_self.copyWith(bot: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ManagedBotCreated].
extension ManagedBotCreatedPatterns on ManagedBotCreated {
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
    TResult Function(_ManagedBotCreated value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ManagedBotCreated() when $default != null:
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
    TResult Function(_ManagedBotCreated value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManagedBotCreated():
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
    TResult? Function(_ManagedBotCreated value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManagedBotCreated() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ManagedBotCreated implements ManagedBotCreated {
  const _ManagedBotCreated({@JsonKey(name: 'bot') required this.bot});
  factory _ManagedBotCreated.fromJson(Map<String, dynamic> json) =>
      _$ManagedBotCreatedFromJson(json);

  /// Information about the bot. The bot's token can be fetched using the
  /// method `getManagedBotToken`.
  @override
  @JsonKey(name: 'bot')
  final User bot;

  /// Create a copy of ManagedBotCreated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ManagedBotCreatedCopyWith<_ManagedBotCreated> get copyWith =>
      __$ManagedBotCreatedCopyWithImpl<_ManagedBotCreated>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ManagedBotCreatedToJson(this);
  }

  @override
  String toString() {
    return 'ManagedBotCreated(bot: $bot)';
  }
}

/// @nodoc
abstract mixin class _$ManagedBotCreatedCopyWith<$Res>
    implements $ManagedBotCreatedCopyWith<$Res> {
  factory _$ManagedBotCreatedCopyWith(
    _ManagedBotCreated value,
    $Res Function(_ManagedBotCreated) _then,
  ) = __$ManagedBotCreatedCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'bot') User bot});

  @override
  $UserCopyWith<$Res> get bot;
}

/// @nodoc
class __$ManagedBotCreatedCopyWithImpl<$Res>
    implements _$ManagedBotCreatedCopyWith<$Res> {
  __$ManagedBotCreatedCopyWithImpl(this._self, this._then);

  final _ManagedBotCreated _self;
  final $Res Function(_ManagedBotCreated) _then;

  /// Create a copy of ManagedBotCreated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? bot = null}) {
    return _then(
      _ManagedBotCreated(
        bot: null == bot
            ? _self.bot
            : bot // ignore: cast_nullable_to_non_nullable
                  as User,
      ),
    );
  }

  /// Create a copy of ManagedBotCreated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get bot {
    return $UserCopyWith<$Res>(_self.bot, (value) {
      return _then(_self.copyWith(bot: value));
    });
  }
}
