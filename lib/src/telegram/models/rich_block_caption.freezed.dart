// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rich_block_caption.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RichBlockCaption {
  /// Block caption
  @JsonKey(name: 'text')
  @RichTextConverter()
  RichText get text;

  /// Optional. Block credit which corresponds to the HTML tag <cite>
  @JsonKey(name: 'credit')
  @RichTextConverter()
  RichText? get credit;

  /// Create a copy of RichBlockCaption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockCaptionCopyWith<RichBlockCaption> get copyWith =>
      _$RichBlockCaptionCopyWithImpl<RichBlockCaption>(
        this as RichBlockCaption,
        _$identity,
      );

  /// Serializes this RichBlockCaption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'RichBlockCaption(text: $text, credit: $credit)';
  }
}

/// @nodoc
abstract mixin class $RichBlockCaptionCopyWith<$Res> {
  factory $RichBlockCaptionCopyWith(
    RichBlockCaption value,
    $Res Function(RichBlockCaption) _then,
  ) = _$RichBlockCaptionCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'credit') @RichTextConverter() RichText? credit,
  });

  $RichTextCopyWith<$Res> get text;
  $RichTextCopyWith<$Res>? get credit;
}

/// @nodoc
class _$RichBlockCaptionCopyWithImpl<$Res>
    implements $RichBlockCaptionCopyWith<$Res> {
  _$RichBlockCaptionCopyWithImpl(this._self, this._then);

  final RichBlockCaption _self;
  final $Res Function(RichBlockCaption) _then;

  /// Create a copy of RichBlockCaption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null, Object? credit = freezed}) {
    return _then(
      _self.copyWith(
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        credit: freezed == credit
            ? _self.credit
            : credit // ignore: cast_nullable_to_non_nullable
                  as RichText?,
      ),
    );
  }

  /// Create a copy of RichBlockCaption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res> get text {
    return $RichTextCopyWith<$Res>(_self.text, (value) {
      return _then(_self.copyWith(text: value));
    });
  }

  /// Create a copy of RichBlockCaption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res>? get credit {
    if (_self.credit == null) {
      return null;
    }

    return $RichTextCopyWith<$Res>(_self.credit!, (value) {
      return _then(_self.copyWith(credit: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RichBlockCaption].
extension RichBlockCaptionPatterns on RichBlockCaption {
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
    TResult Function(_RichBlockCaption value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RichBlockCaption() when $default != null:
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
    TResult Function(_RichBlockCaption value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RichBlockCaption():
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
    TResult? Function(_RichBlockCaption value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RichBlockCaption() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RichBlockCaption implements RichBlockCaption {
  const _RichBlockCaption({
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'credit') @RichTextConverter() this.credit,
  });
  factory _RichBlockCaption.fromJson(Map<String, dynamic> json) =>
      _$RichBlockCaptionFromJson(json);

  /// Block caption
  @override
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Optional. Block credit which corresponds to the HTML tag <cite>
  @override
  @JsonKey(name: 'credit')
  @RichTextConverter()
  final RichText? credit;

  /// Create a copy of RichBlockCaption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RichBlockCaptionCopyWith<_RichBlockCaption> get copyWith =>
      __$RichBlockCaptionCopyWithImpl<_RichBlockCaption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockCaptionToJson(this);
  }

  @override
  String toString() {
    return 'RichBlockCaption(text: $text, credit: $credit)';
  }
}

/// @nodoc
abstract mixin class _$RichBlockCaptionCopyWith<$Res>
    implements $RichBlockCaptionCopyWith<$Res> {
  factory _$RichBlockCaptionCopyWith(
    _RichBlockCaption value,
    $Res Function(_RichBlockCaption) _then,
  ) = __$RichBlockCaptionCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'credit') @RichTextConverter() RichText? credit,
  });

  @override
  $RichTextCopyWith<$Res> get text;
  @override
  $RichTextCopyWith<$Res>? get credit;
}

/// @nodoc
class __$RichBlockCaptionCopyWithImpl<$Res>
    implements _$RichBlockCaptionCopyWith<$Res> {
  __$RichBlockCaptionCopyWithImpl(this._self, this._then);

  final _RichBlockCaption _self;
  final $Res Function(_RichBlockCaption) _then;

  /// Create a copy of RichBlockCaption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? text = null, Object? credit = freezed}) {
    return _then(
      _RichBlockCaption(
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        credit: freezed == credit
            ? _self.credit
            : credit // ignore: cast_nullable_to_non_nullable
                  as RichText?,
      ),
    );
  }

  /// Create a copy of RichBlockCaption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res> get text {
    return $RichTextCopyWith<$Res>(_self.text, (value) {
      return _then(_self.copyWith(text: value));
    });
  }

  /// Create a copy of RichBlockCaption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res>? get credit {
    if (_self.credit == null) {
      return null;
    }

    return $RichTextCopyWith<$Res>(_self.credit!, (value) {
      return _then(_self.copyWith(credit: value));
    });
  }
}
