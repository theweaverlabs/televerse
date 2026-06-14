// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_media_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputMediaLink {
  /// Type of the media, must be link
  @JsonKey(name: 'type')
  InputMediaType get type;

  /// HTTP URL of the link
  @JsonKey(name: 'url')
  String get url;

  /// Create a copy of InputMediaLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputMediaLinkCopyWith<InputMediaLink> get copyWith =>
      _$InputMediaLinkCopyWithImpl<InputMediaLink>(
        this as InputMediaLink,
        _$identity,
      );

  /// Serializes this InputMediaLink to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InputMediaLink(type: $type, url: $url)';
  }
}

/// @nodoc
abstract mixin class $InputMediaLinkCopyWith<$Res> {
  factory $InputMediaLinkCopyWith(
    InputMediaLink value,
    $Res Function(InputMediaLink) _then,
  ) = _$InputMediaLinkCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'type') InputMediaType type,
    @JsonKey(name: 'url') String url,
  });
}

/// @nodoc
class _$InputMediaLinkCopyWithImpl<$Res>
    implements $InputMediaLinkCopyWith<$Res> {
  _$InputMediaLinkCopyWithImpl(this._self, this._then);

  final InputMediaLink _self;
  final $Res Function(InputMediaLink) _then;

  /// Create a copy of InputMediaLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null, Object? url = null}) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InputMediaType,
        url: null == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [InputMediaLink].
extension InputMediaLinkPatterns on InputMediaLink {
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
    TResult Function(_InputMediaLink value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InputMediaLink() when $default != null:
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
    TResult Function(_InputMediaLink value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputMediaLink():
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
    TResult? Function(_InputMediaLink value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputMediaLink() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _InputMediaLink extends InputMediaLink {
  const _InputMediaLink({
    @JsonKey(name: 'type') this.type = InputMediaType.link,
    @JsonKey(name: 'url') required this.url,
  }) : super._();

  /// Type of the media, must be link
  @override
  @JsonKey(name: 'type')
  final InputMediaType type;

  /// HTTP URL of the link
  @override
  @JsonKey(name: 'url')
  final String url;

  /// Create a copy of InputMediaLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InputMediaLinkCopyWith<_InputMediaLink> get copyWith =>
      __$InputMediaLinkCopyWithImpl<_InputMediaLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputMediaLinkToJson(this);
  }

  @override
  String toString() {
    return 'InputMediaLink(type: $type, url: $url)';
  }
}

/// @nodoc
abstract mixin class _$InputMediaLinkCopyWith<$Res>
    implements $InputMediaLinkCopyWith<$Res> {
  factory _$InputMediaLinkCopyWith(
    _InputMediaLink value,
    $Res Function(_InputMediaLink) _then,
  ) = __$InputMediaLinkCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') InputMediaType type,
    @JsonKey(name: 'url') String url,
  });
}

/// @nodoc
class __$InputMediaLinkCopyWithImpl<$Res>
    implements _$InputMediaLinkCopyWith<$Res> {
  __$InputMediaLinkCopyWithImpl(this._self, this._then);

  final _InputMediaLink _self;
  final $Res Function(_InputMediaLink) _then;

  /// Create a copy of InputMediaLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? url = null}) {
    return _then(
      _InputMediaLink(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InputMediaType,
        url: null == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
