// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emoji_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EmojiType _$EmojiTypeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'emoji':
      return EmojiTypeEmoji.fromJson(json);
    case 'custom_emoji':
      return EmojiTypeCustomEmoji.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'type',
        'EmojiType',
        'Invalid union type "${json['type']}"!',
      );
  }
}

/// @nodoc
mixin _$EmojiType {
  /// Serializes this EmojiType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'EmojiType()';
  }
}

/// @nodoc
class $EmojiTypeCopyWith<$Res> {
  $EmojiTypeCopyWith(EmojiType _, $Res Function(EmojiType) __);
}

/// Adds pattern-matching-related methods to [EmojiType].
extension EmojiTypePatterns on EmojiType {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmojiTypeEmoji value)? emoji,
    TResult Function(EmojiTypeCustomEmoji value)? customEmoji,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case EmojiTypeEmoji() when emoji != null:
        return emoji(_that);
      case EmojiTypeCustomEmoji() when customEmoji != null:
        return customEmoji(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(EmojiTypeEmoji value) emoji,
    required TResult Function(EmojiTypeCustomEmoji value) customEmoji,
  }) {
    final _that = this;
    switch (_that) {
      case EmojiTypeEmoji():
        return emoji(_that);
      case EmojiTypeCustomEmoji():
        return customEmoji(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmojiTypeEmoji value)? emoji,
    TResult? Function(EmojiTypeCustomEmoji value)? customEmoji,
  }) {
    final _that = this;
    switch (_that) {
      case EmojiTypeEmoji() when emoji != null:
        return emoji(_that);
      case EmojiTypeCustomEmoji() when customEmoji != null:
        return customEmoji(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class EmojiTypeEmoji implements EmojiType {
  const EmojiTypeEmoji({
    @JsonKey(name: 'emoji') required this.emoji,
    final String? $type,
  }) : $type = $type ?? 'emoji';
  factory EmojiTypeEmoji.fromJson(Map<String, dynamic> json) =>
      _$EmojiTypeEmojiFromJson(json);

  /// The emoji.
  @JsonKey(name: 'emoji')
  final String emoji;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of EmojiType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmojiTypeEmojiCopyWith<EmojiTypeEmoji> get copyWith =>
      _$EmojiTypeEmojiCopyWithImpl<EmojiTypeEmoji>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EmojiTypeEmojiToJson(this);
  }

  @override
  String toString() {
    return 'EmojiType.emoji(emoji: $emoji)';
  }
}

/// @nodoc
abstract mixin class $EmojiTypeEmojiCopyWith<$Res>
    implements $EmojiTypeCopyWith<$Res> {
  factory $EmojiTypeEmojiCopyWith(
    EmojiTypeEmoji value,
    $Res Function(EmojiTypeEmoji) _then,
  ) = _$EmojiTypeEmojiCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'emoji') String emoji});
}

/// @nodoc
class _$EmojiTypeEmojiCopyWithImpl<$Res>
    implements $EmojiTypeEmojiCopyWith<$Res> {
  _$EmojiTypeEmojiCopyWithImpl(this._self, this._then);

  final EmojiTypeEmoji _self;
  final $Res Function(EmojiTypeEmoji) _then;

  /// Create a copy of EmojiType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? emoji = null}) {
    return _then(
      EmojiTypeEmoji(
        emoji: null == emoji
            ? _self.emoji
            : emoji // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class EmojiTypeCustomEmoji implements EmojiType {
  const EmojiTypeCustomEmoji({
    @JsonKey(name: 'custom_emoji_id') required this.customEmojiId,
    final String? $type,
  }) : $type = $type ?? 'custom_emoji';
  factory EmojiTypeCustomEmoji.fromJson(Map<String, dynamic> json) =>
      _$EmojiTypeCustomEmojiFromJson(json);

  /// Identifier of the custom emoji.
  @JsonKey(name: 'custom_emoji_id')
  final String customEmojiId;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of EmojiType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmojiTypeCustomEmojiCopyWith<EmojiTypeCustomEmoji> get copyWith =>
      _$EmojiTypeCustomEmojiCopyWithImpl<EmojiTypeCustomEmoji>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$EmojiTypeCustomEmojiToJson(this);
  }

  @override
  String toString() {
    return 'EmojiType.customEmoji(customEmojiId: $customEmojiId)';
  }
}

/// @nodoc
abstract mixin class $EmojiTypeCustomEmojiCopyWith<$Res>
    implements $EmojiTypeCopyWith<$Res> {
  factory $EmojiTypeCustomEmojiCopyWith(
    EmojiTypeCustomEmoji value,
    $Res Function(EmojiTypeCustomEmoji) _then,
  ) = _$EmojiTypeCustomEmojiCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'custom_emoji_id') String customEmojiId});
}

/// @nodoc
class _$EmojiTypeCustomEmojiCopyWithImpl<$Res>
    implements $EmojiTypeCustomEmojiCopyWith<$Res> {
  _$EmojiTypeCustomEmojiCopyWithImpl(this._self, this._then);

  final EmojiTypeCustomEmoji _self;
  final $Res Function(EmojiTypeCustomEmoji) _then;

  /// Create a copy of EmojiType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? customEmojiId = null}) {
    return _then(
      EmojiTypeCustomEmoji(
        customEmojiId: null == customEmojiId
            ? _self.customEmojiId
            : customEmojiId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
