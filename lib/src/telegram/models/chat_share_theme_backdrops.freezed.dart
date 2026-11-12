// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_share_theme_backdrops.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatShareThemeBackdrops {
  /// The available backdrops.
  @JsonKey(name: 'backdrops')
  List<ChatShareThemeBackdrop> get backdrops;

  /// Create a copy of ChatShareThemeBackdrops
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatShareThemeBackdropsCopyWith<ChatShareThemeBackdrops> get copyWith =>
      _$ChatShareThemeBackdropsCopyWithImpl<ChatShareThemeBackdrops>(
        this as ChatShareThemeBackdrops,
        _$identity,
      );

  /// Serializes this ChatShareThemeBackdrops to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatShareThemeBackdrops(backdrops: $backdrops)';
  }
}

/// @nodoc
abstract mixin class $ChatShareThemeBackdropsCopyWith<$Res> {
  factory $ChatShareThemeBackdropsCopyWith(
    ChatShareThemeBackdrops value,
    $Res Function(ChatShareThemeBackdrops) _then,
  ) = _$ChatShareThemeBackdropsCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'backdrops') List<ChatShareThemeBackdrop> backdrops,
  });
}

/// @nodoc
class _$ChatShareThemeBackdropsCopyWithImpl<$Res>
    implements $ChatShareThemeBackdropsCopyWith<$Res> {
  _$ChatShareThemeBackdropsCopyWithImpl(this._self, this._then);

  final ChatShareThemeBackdrops _self;
  final $Res Function(ChatShareThemeBackdrops) _then;

  /// Create a copy of ChatShareThemeBackdrops
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? backdrops = null}) {
    return _then(
      _self.copyWith(
        backdrops: null == backdrops
            ? _self.backdrops
            : backdrops // ignore: cast_nullable_to_non_nullable
                  as List<ChatShareThemeBackdrop>,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [ChatShareThemeBackdrops].
extension ChatShareThemeBackdropsPatterns on ChatShareThemeBackdrops {
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
    TResult Function(_ChatShareThemeBackdrops value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatShareThemeBackdrops() when $default != null:
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
    TResult Function(_ChatShareThemeBackdrops value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatShareThemeBackdrops():
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
    TResult? Function(_ChatShareThemeBackdrops value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatShareThemeBackdrops() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatShareThemeBackdrops implements ChatShareThemeBackdrops {
  const _ChatShareThemeBackdrops({
    @JsonKey(name: 'backdrops')
    required final List<ChatShareThemeBackdrop> backdrops,
  }) : _backdrops = backdrops;
  factory _ChatShareThemeBackdrops.fromJson(Map<String, dynamic> json) =>
      _$ChatShareThemeBackdropsFromJson(json);

  /// The available backdrops.
  final List<ChatShareThemeBackdrop> _backdrops;

  /// The available backdrops.
  @override
  @JsonKey(name: 'backdrops')
  List<ChatShareThemeBackdrop> get backdrops {
    if (_backdrops is EqualUnmodifiableListView) return _backdrops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_backdrops);
  }

  /// Create a copy of ChatShareThemeBackdrops
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatShareThemeBackdropsCopyWith<_ChatShareThemeBackdrops> get copyWith =>
      __$ChatShareThemeBackdropsCopyWithImpl<_ChatShareThemeBackdrops>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$ChatShareThemeBackdropsToJson(this);
  }

  @override
  String toString() {
    return 'ChatShareThemeBackdrops(backdrops: $backdrops)';
  }
}

/// @nodoc
abstract mixin class _$ChatShareThemeBackdropsCopyWith<$Res>
    implements $ChatShareThemeBackdropsCopyWith<$Res> {
  factory _$ChatShareThemeBackdropsCopyWith(
    _ChatShareThemeBackdrops value,
    $Res Function(_ChatShareThemeBackdrops) _then,
  ) = __$ChatShareThemeBackdropsCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'backdrops') List<ChatShareThemeBackdrop> backdrops,
  });
}

/// @nodoc
class __$ChatShareThemeBackdropsCopyWithImpl<$Res>
    implements _$ChatShareThemeBackdropsCopyWith<$Res> {
  __$ChatShareThemeBackdropsCopyWithImpl(this._self, this._then);

  final _ChatShareThemeBackdrops _self;
  final $Res Function(_ChatShareThemeBackdrops) _then;

  /// Create a copy of ChatShareThemeBackdrops
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? backdrops = null}) {
    return _then(
      _ChatShareThemeBackdrops(
        backdrops: null == backdrops
            ? _self._backdrops
            : backdrops // ignore: cast_nullable_to_non_nullable
                  as List<ChatShareThemeBackdrop>,
      ),
    );
  }
}
