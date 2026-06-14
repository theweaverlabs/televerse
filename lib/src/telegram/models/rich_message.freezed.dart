// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rich_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RichMessage {
  /// Content of the message
  @JsonKey(name: 'blocks')
  List<RichBlock> get blocks;

  /// Optional. True, if the rich message must be shown right-to-left
  @JsonKey(name: 'is_rtl')
  bool? get isRtl;

  /// Create a copy of RichMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichMessageCopyWith<RichMessage> get copyWith =>
      _$RichMessageCopyWithImpl<RichMessage>(this as RichMessage, _$identity);

  /// Serializes this RichMessage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'RichMessage(blocks: $blocks, isRtl: $isRtl)';
  }
}

/// @nodoc
abstract mixin class $RichMessageCopyWith<$Res> {
  factory $RichMessageCopyWith(
    RichMessage value,
    $Res Function(RichMessage) _then,
  ) = _$RichMessageCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'blocks') List<RichBlock> blocks,
    @JsonKey(name: 'is_rtl') bool? isRtl,
  });
}

/// @nodoc
class _$RichMessageCopyWithImpl<$Res> implements $RichMessageCopyWith<$Res> {
  _$RichMessageCopyWithImpl(this._self, this._then);

  final RichMessage _self;
  final $Res Function(RichMessage) _then;

  /// Create a copy of RichMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? blocks = null, Object? isRtl = freezed}) {
    return _then(
      _self.copyWith(
        blocks: null == blocks
            ? _self.blocks
            : blocks // ignore: cast_nullable_to_non_nullable
                  as List<RichBlock>,
        isRtl: freezed == isRtl
            ? _self.isRtl
            : isRtl // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [RichMessage].
extension RichMessagePatterns on RichMessage {
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
    TResult Function(_RichMessage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RichMessage() when $default != null:
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
    TResult Function(_RichMessage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RichMessage():
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
    TResult? Function(_RichMessage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RichMessage() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RichMessage implements RichMessage {
  const _RichMessage({
    @JsonKey(name: 'blocks') required final List<RichBlock> blocks,
    @JsonKey(name: 'is_rtl') this.isRtl,
  }) : _blocks = blocks;
  factory _RichMessage.fromJson(Map<String, dynamic> json) =>
      _$RichMessageFromJson(json);

  /// Content of the message
  final List<RichBlock> _blocks;

  /// Content of the message
  @override
  @JsonKey(name: 'blocks')
  List<RichBlock> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  /// Optional. True, if the rich message must be shown right-to-left
  @override
  @JsonKey(name: 'is_rtl')
  final bool? isRtl;

  /// Create a copy of RichMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RichMessageCopyWith<_RichMessage> get copyWith =>
      __$RichMessageCopyWithImpl<_RichMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichMessageToJson(this);
  }

  @override
  String toString() {
    return 'RichMessage(blocks: $blocks, isRtl: $isRtl)';
  }
}

/// @nodoc
abstract mixin class _$RichMessageCopyWith<$Res>
    implements $RichMessageCopyWith<$Res> {
  factory _$RichMessageCopyWith(
    _RichMessage value,
    $Res Function(_RichMessage) _then,
  ) = __$RichMessageCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'blocks') List<RichBlock> blocks,
    @JsonKey(name: 'is_rtl') bool? isRtl,
  });
}

/// @nodoc
class __$RichMessageCopyWithImpl<$Res> implements _$RichMessageCopyWith<$Res> {
  __$RichMessageCopyWithImpl(this._self, this._then);

  final _RichMessage _self;
  final $Res Function(_RichMessage) _then;

  /// Create a copy of RichMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? blocks = null, Object? isRtl = freezed}) {
    return _then(
      _RichMessage(
        blocks: null == blocks
            ? _self._blocks
            : blocks // ignore: cast_nullable_to_non_nullable
                  as List<RichBlock>,
        isRtl: freezed == isRtl
            ? _self.isRtl
            : isRtl // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}
