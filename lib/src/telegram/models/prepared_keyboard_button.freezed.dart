// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prepared_keyboard_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PreparedKeyboardButton {
  /// Unique identifier of the keyboard button
  @JsonKey(name: 'id')
  String get id;

  /// Create a copy of PreparedKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PreparedKeyboardButtonCopyWith<PreparedKeyboardButton> get copyWith =>
      _$PreparedKeyboardButtonCopyWithImpl<PreparedKeyboardButton>(
        this as PreparedKeyboardButton,
        _$identity,
      );

  /// Serializes this PreparedKeyboardButton to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'PreparedKeyboardButton(id: $id)';
  }
}

/// @nodoc
abstract mixin class $PreparedKeyboardButtonCopyWith<$Res> {
  factory $PreparedKeyboardButtonCopyWith(
    PreparedKeyboardButton value,
    $Res Function(PreparedKeyboardButton) _then,
  ) = _$PreparedKeyboardButtonCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class _$PreparedKeyboardButtonCopyWithImpl<$Res>
    implements $PreparedKeyboardButtonCopyWith<$Res> {
  _$PreparedKeyboardButtonCopyWithImpl(this._self, this._then);

  final PreparedKeyboardButton _self;
  final $Res Function(PreparedKeyboardButton) _then;

  /// Create a copy of PreparedKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PreparedKeyboardButton].
extension PreparedKeyboardButtonPatterns on PreparedKeyboardButton {
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
    TResult Function(_PreparedKeyboardButton value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PreparedKeyboardButton() when $default != null:
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
    TResult Function(_PreparedKeyboardButton value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreparedKeyboardButton():
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
    TResult? Function(_PreparedKeyboardButton value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreparedKeyboardButton() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PreparedKeyboardButton implements PreparedKeyboardButton {
  const _PreparedKeyboardButton({@JsonKey(name: 'id') required this.id});
  factory _PreparedKeyboardButton.fromJson(Map<String, dynamic> json) =>
      _$PreparedKeyboardButtonFromJson(json);

  /// Unique identifier of the keyboard button
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Create a copy of PreparedKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PreparedKeyboardButtonCopyWith<_PreparedKeyboardButton> get copyWith =>
      __$PreparedKeyboardButtonCopyWithImpl<_PreparedKeyboardButton>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PreparedKeyboardButtonToJson(this);
  }

  @override
  String toString() {
    return 'PreparedKeyboardButton(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$PreparedKeyboardButtonCopyWith<$Res>
    implements $PreparedKeyboardButtonCopyWith<$Res> {
  factory _$PreparedKeyboardButtonCopyWith(
    _PreparedKeyboardButton value,
    $Res Function(_PreparedKeyboardButton) _then,
  ) = __$PreparedKeyboardButtonCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class __$PreparedKeyboardButtonCopyWithImpl<$Res>
    implements _$PreparedKeyboardButtonCopyWith<$Res> {
  __$PreparedKeyboardButtonCopyWithImpl(this._self, this._then);

  final _PreparedKeyboardButton _self;
  final $Res Function(_PreparedKeyboardButton) _then;

  /// Create a copy of PreparedKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? id = null}) {
    return _then(
      _PreparedKeyboardButton(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
