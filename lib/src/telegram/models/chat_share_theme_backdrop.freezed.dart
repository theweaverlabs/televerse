// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_share_theme_backdrop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatShareThemeBackdrop {
  /// Unique identifier of the backdrop.
  @JsonKey(name: 'id')
  int get id;

  /// Name of the backdrop.
  @JsonKey(name: 'name')
  String get name;

  /// Colors of the backdrop.
  @JsonKey(name: 'colors')
  UniqueGiftBackdropColors get colors;

  /// Create a copy of ChatShareThemeBackdrop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatShareThemeBackdropCopyWith<ChatShareThemeBackdrop> get copyWith =>
      _$ChatShareThemeBackdropCopyWithImpl<ChatShareThemeBackdrop>(
        this as ChatShareThemeBackdrop,
        _$identity,
      );

  /// Serializes this ChatShareThemeBackdrop to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatShareThemeBackdrop(id: $id, name: $name, colors: $colors)';
  }
}

/// @nodoc
abstract mixin class $ChatShareThemeBackdropCopyWith<$Res> {
  factory $ChatShareThemeBackdropCopyWith(
    ChatShareThemeBackdrop value,
    $Res Function(ChatShareThemeBackdrop) _then,
  ) = _$ChatShareThemeBackdropCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'colors') UniqueGiftBackdropColors colors,
  });

  $UniqueGiftBackdropColorsCopyWith<$Res> get colors;
}

/// @nodoc
class _$ChatShareThemeBackdropCopyWithImpl<$Res>
    implements $ChatShareThemeBackdropCopyWith<$Res> {
  _$ChatShareThemeBackdropCopyWithImpl(this._self, this._then);

  final ChatShareThemeBackdrop _self;
  final $Res Function(ChatShareThemeBackdrop) _then;

  /// Create a copy of ChatShareThemeBackdrop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? colors = null}) {
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        colors: null == colors
            ? _self.colors
            : colors // ignore: cast_nullable_to_non_nullable
                  as UniqueGiftBackdropColors,
      ),
    );
  }

  /// Create a copy of ChatShareThemeBackdrop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftBackdropColorsCopyWith<$Res> get colors {
    return $UniqueGiftBackdropColorsCopyWith<$Res>(_self.colors, (value) {
      return _then(_self.copyWith(colors: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChatShareThemeBackdrop].
extension ChatShareThemeBackdropPatterns on ChatShareThemeBackdrop {
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
    TResult Function(_ChatShareThemeBackdrop value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatShareThemeBackdrop() when $default != null:
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
    TResult Function(_ChatShareThemeBackdrop value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatShareThemeBackdrop():
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
    TResult? Function(_ChatShareThemeBackdrop value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatShareThemeBackdrop() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatShareThemeBackdrop implements ChatShareThemeBackdrop {
  const _ChatShareThemeBackdrop({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'colors') required this.colors,
  });
  factory _ChatShareThemeBackdrop.fromJson(Map<String, dynamic> json) =>
      _$ChatShareThemeBackdropFromJson(json);

  /// Unique identifier of the backdrop.
  @override
  @JsonKey(name: 'id')
  final int id;

  /// Name of the backdrop.
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Colors of the backdrop.
  @override
  @JsonKey(name: 'colors')
  final UniqueGiftBackdropColors colors;

  /// Create a copy of ChatShareThemeBackdrop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatShareThemeBackdropCopyWith<_ChatShareThemeBackdrop> get copyWith =>
      __$ChatShareThemeBackdropCopyWithImpl<_ChatShareThemeBackdrop>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$ChatShareThemeBackdropToJson(this);
  }

  @override
  String toString() {
    return 'ChatShareThemeBackdrop(id: $id, name: $name, colors: $colors)';
  }
}

/// @nodoc
abstract mixin class _$ChatShareThemeBackdropCopyWith<$Res>
    implements $ChatShareThemeBackdropCopyWith<$Res> {
  factory _$ChatShareThemeBackdropCopyWith(
    _ChatShareThemeBackdrop value,
    $Res Function(_ChatShareThemeBackdrop) _then,
  ) = __$ChatShareThemeBackdropCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'colors') UniqueGiftBackdropColors colors,
  });

  @override
  $UniqueGiftBackdropColorsCopyWith<$Res> get colors;
}

/// @nodoc
class __$ChatShareThemeBackdropCopyWithImpl<$Res>
    implements _$ChatShareThemeBackdropCopyWith<$Res> {
  __$ChatShareThemeBackdropCopyWithImpl(this._self, this._then);

  final _ChatShareThemeBackdrop _self;
  final $Res Function(_ChatShareThemeBackdrop) _then;

  /// Create a copy of ChatShareThemeBackdrop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? id = null, Object? name = null, Object? colors = null}) {
    return _then(
      _ChatShareThemeBackdrop(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        colors: null == colors
            ? _self.colors
            : colors // ignore: cast_nullable_to_non_nullable
                  as UniqueGiftBackdropColors,
      ),
    );
  }

  /// Create a copy of ChatShareThemeBackdrop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftBackdropColorsCopyWith<$Res> get colors {
    return $UniqueGiftBackdropColorsCopyWith<$Res>(_self.colors, (value) {
      return _then(_self.copyWith(colors: value));
    });
  }
}
