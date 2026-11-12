// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ton_nft_attribute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TonNftAttribute {
  /// Name of the trait.
  @JsonKey(name: 'trait_type')
  String get traitType;

  /// Value of the trait.
  @JsonKey(name: 'value')
  String get value;

  /// Create a copy of TonNftAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TonNftAttributeCopyWith<TonNftAttribute> get copyWith =>
      _$TonNftAttributeCopyWithImpl<TonNftAttribute>(
        this as TonNftAttribute,
        _$identity,
      );

  /// Serializes this TonNftAttribute to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'TonNftAttribute(traitType: $traitType, value: $value)';
  }
}

/// @nodoc
abstract mixin class $TonNftAttributeCopyWith<$Res> {
  factory $TonNftAttributeCopyWith(
    TonNftAttribute value,
    $Res Function(TonNftAttribute) _then,
  ) = _$TonNftAttributeCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'trait_type') String traitType,
    @JsonKey(name: 'value') String value,
  });
}

/// @nodoc
class _$TonNftAttributeCopyWithImpl<$Res>
    implements $TonNftAttributeCopyWith<$Res> {
  _$TonNftAttributeCopyWithImpl(this._self, this._then);

  final TonNftAttribute _self;
  final $Res Function(TonNftAttribute) _then;

  /// Create a copy of TonNftAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? traitType = null, Object? value = null}) {
    return _then(
      _self.copyWith(
        traitType: null == traitType
            ? _self.traitType
            : traitType // ignore: cast_nullable_to_non_nullable
                  as String,
        value: null == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [TonNftAttribute].
extension TonNftAttributePatterns on TonNftAttribute {
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
    TResult Function(_TonNftAttribute value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TonNftAttribute() when $default != null:
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
    TResult Function(_TonNftAttribute value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TonNftAttribute():
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
    TResult? Function(_TonNftAttribute value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TonNftAttribute() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TonNftAttribute implements TonNftAttribute {
  const _TonNftAttribute({
    @JsonKey(name: 'trait_type') required this.traitType,
    @JsonKey(name: 'value') required this.value,
  });
  factory _TonNftAttribute.fromJson(Map<String, dynamic> json) =>
      _$TonNftAttributeFromJson(json);

  /// Name of the trait.
  @override
  @JsonKey(name: 'trait_type')
  final String traitType;

  /// Value of the trait.
  @override
  @JsonKey(name: 'value')
  final String value;

  /// Create a copy of TonNftAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TonNftAttributeCopyWith<_TonNftAttribute> get copyWith =>
      __$TonNftAttributeCopyWithImpl<_TonNftAttribute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TonNftAttributeToJson(this);
  }

  @override
  String toString() {
    return 'TonNftAttribute(traitType: $traitType, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$TonNftAttributeCopyWith<$Res>
    implements $TonNftAttributeCopyWith<$Res> {
  factory _$TonNftAttributeCopyWith(
    _TonNftAttribute value,
    $Res Function(_TonNftAttribute) _then,
  ) = __$TonNftAttributeCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'trait_type') String traitType,
    @JsonKey(name: 'value') String value,
  });
}

/// @nodoc
class __$TonNftAttributeCopyWithImpl<$Res>
    implements _$TonNftAttributeCopyWith<$Res> {
  __$TonNftAttributeCopyWithImpl(this._self, this._then);

  final _TonNftAttribute _self;
  final $Res Function(_TonNftAttribute) _then;

  /// Create a copy of TonNftAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? traitType = null, Object? value = null}) {
    return _then(
      _TonNftAttribute(
        traitType: null == traitType
            ? _self.traitType
            : traitType // ignore: cast_nullable_to_non_nullable
                  as String,
        value: null == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
