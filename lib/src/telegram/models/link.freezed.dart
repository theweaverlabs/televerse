// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Link {
  /// URL of the link
  @JsonKey(name: 'url')
  String get url;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LinkCopyWith<Link> get copyWith =>
      _$LinkCopyWithImpl<Link>(this as Link, _$identity);

  /// Serializes this Link to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Link(url: $url)';
  }
}

/// @nodoc
abstract mixin class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) _then) =
      _$LinkCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'url') String url});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res> implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._self, this._then);

  final Link _self;
  final $Res Function(Link) _then;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? url = null}) {
    return _then(
      _self.copyWith(
        url: null == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [Link].
extension LinkPatterns on Link {
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
    TResult Function(_Link value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Link() when $default != null:
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
  TResult map<TResult extends Object?>(TResult Function(_Link value) $default) {
    final _that = this;
    switch (_that) {
      case _Link():
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
    TResult? Function(_Link value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Link() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Link implements Link {
  const _Link({@JsonKey(name: 'url') required this.url});
  factory _Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  /// URL of the link
  @override
  @JsonKey(name: 'url')
  final String url;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LinkCopyWith<_Link> get copyWith =>
      __$LinkCopyWithImpl<_Link>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LinkToJson(this);
  }

  @override
  String toString() {
    return 'Link(url: $url)';
  }
}

/// @nodoc
abstract mixin class _$LinkCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$LinkCopyWith(_Link value, $Res Function(_Link) _then) =
      __$LinkCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'url') String url});
}

/// @nodoc
class __$LinkCopyWithImpl<$Res> implements _$LinkCopyWith<$Res> {
  __$LinkCopyWithImpl(this._self, this._then);

  final _Link _self;
  final $Res Function(_Link) _then;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? url = null}) {
    return _then(
      _Link(
        url: null == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
