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
  /// Type of the emoji, always "emoji"
  @JsonKey(name: 'type')
  EmojiTypeType get type;

  /// Create a copy of EmojiType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmojiTypeCopyWith<EmojiType> get copyWith =>
      _$EmojiTypeCopyWithImpl<EmojiType>(this as EmojiType, _$identity);

  /// Serializes this EmojiType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'EmojiType(type: $type)';
  }
}

/// @nodoc
abstract mixin class $EmojiTypeCopyWith<$Res> {
  factory $EmojiTypeCopyWith(EmojiType value, $Res Function(EmojiType) _then) =
      _$EmojiTypeCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') EmojiTypeType type});
}

/// @nodoc
class _$EmojiTypeCopyWithImpl<$Res> implements $EmojiTypeCopyWith<$Res> {
  _$EmojiTypeCopyWithImpl(this._self, this._then);

  final EmojiType _self;
  final $Res Function(EmojiType) _then;

  /// Create a copy of EmojiType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null}) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as EmojiTypeType,
      ),
    );
  }
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
    @JsonKey(name: 'type') this.type = EmojiTypeType.emoji,
    @JsonKey(name: 'emoji') required this.emoji,
  }) : assert(type == EmojiTypeType.emoji, 'type must be EmojiTypeType.emoji');
  factory EmojiTypeEmoji.fromJson(Map<String, dynamic> json) =>
      _$EmojiTypeEmojiFromJson(json);

  /// Type of the emoji, always "emoji"
  @override
  @JsonKey(name: 'type')
  final EmojiTypeType type;

  /// The emoji
  @JsonKey(name: 'emoji')
  final String emoji;

  /// Create a copy of EmojiType
  /// with the given fields replaced by the non-null parameter values.
  @override
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
    return 'EmojiType.emoji(type: $type, emoji: $emoji)';
  }
}

/// @nodoc
abstract mixin class $EmojiTypeEmojiCopyWith<$Res>
    implements $EmojiTypeCopyWith<$Res> {
  factory $EmojiTypeEmojiCopyWith(
    EmojiTypeEmoji value,
    $Res Function(EmojiTypeEmoji) _then,
  ) = _$EmojiTypeEmojiCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') EmojiTypeType type,
    @JsonKey(name: 'emoji') String emoji,
  });
}

/// @nodoc
class _$EmojiTypeEmojiCopyWithImpl<$Res>
    implements $EmojiTypeEmojiCopyWith<$Res> {
  _$EmojiTypeEmojiCopyWithImpl(this._self, this._then);

  final EmojiTypeEmoji _self;
  final $Res Function(EmojiTypeEmoji) _then;

  /// Create a copy of EmojiType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? emoji = null}) {
    return _then(
      EmojiTypeEmoji(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as EmojiTypeType,
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
    @JsonKey(name: 'type') this.type = EmojiTypeType.customEmoji,
    @JsonKey(name: 'custom_emoji_id') required this.customEmojiId,
  }) : assert(
         type == EmojiTypeType.customEmoji,
         'type must be EmojiTypeType.customEmoji',
       );
  factory EmojiTypeCustomEmoji.fromJson(Map<String, dynamic> json) =>
      _$EmojiTypeCustomEmojiFromJson(json);

  /// Type of the emoji, always "custom_emoji"
  @override
  @JsonKey(name: 'type')
  final EmojiTypeType type;

  /// Identifier of the custom emoji. Use getCustomEmojiStickers to get full
  /// information about the sticker.
  @JsonKey(name: 'custom_emoji_id')
  final String customEmojiId;

  /// Create a copy of EmojiType
  /// with the given fields replaced by the non-null parameter values.
  @override
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
    return 'EmojiType.customEmoji(type: $type, customEmojiId: $customEmojiId)';
  }
}

/// @nodoc
abstract mixin class $EmojiTypeCustomEmojiCopyWith<$Res>
    implements $EmojiTypeCopyWith<$Res> {
  factory $EmojiTypeCustomEmojiCopyWith(
    EmojiTypeCustomEmoji value,
    $Res Function(EmojiTypeCustomEmoji) _then,
  ) = _$EmojiTypeCustomEmojiCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') EmojiTypeType type,
    @JsonKey(name: 'custom_emoji_id') String customEmojiId,
  });
}

/// @nodoc
class _$EmojiTypeCustomEmojiCopyWithImpl<$Res>
    implements $EmojiTypeCustomEmojiCopyWith<$Res> {
  _$EmojiTypeCustomEmojiCopyWithImpl(this._self, this._then);

  final EmojiTypeCustomEmoji _self;
  final $Res Function(EmojiTypeCustomEmoji) _then;

  /// Create a copy of EmojiType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? customEmojiId = null}) {
    return _then(
      EmojiTypeCustomEmoji(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as EmojiTypeType,
        customEmojiId: null == customEmojiId
            ? _self.customEmojiId
            : customEmojiId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
