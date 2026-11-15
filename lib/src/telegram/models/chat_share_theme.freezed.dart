// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_share_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ChatShareTheme _$ChatShareThemeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'emoji':
      return ChatShareThemeEmoji.fromJson(json);
    case 'unique_gift':
      return ChatShareThemeUniqueGift.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'type',
        'ChatShareTheme',
        'Invalid union type "${json['type']}"!',
      );
  }
}

/// @nodoc
mixin _$ChatShareTheme {
  /// Serializes this ChatShareTheme to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatShareTheme()';
  }
}

/// @nodoc
class $ChatShareThemeCopyWith<$Res> {
  $ChatShareThemeCopyWith(ChatShareTheme _, $Res Function(ChatShareTheme) __);
}

/// Adds pattern-matching-related methods to [ChatShareTheme].
extension ChatShareThemePatterns on ChatShareTheme {
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
    TResult Function(ChatShareThemeEmoji value)? emoji,
    TResult Function(ChatShareThemeUniqueGift value)? uniqueGift,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ChatShareThemeEmoji() when emoji != null:
        return emoji(_that);
      case ChatShareThemeUniqueGift() when uniqueGift != null:
        return uniqueGift(_that);
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
    required TResult Function(ChatShareThemeEmoji value) emoji,
    required TResult Function(ChatShareThemeUniqueGift value) uniqueGift,
  }) {
    final _that = this;
    switch (_that) {
      case ChatShareThemeEmoji():
        return emoji(_that);
      case ChatShareThemeUniqueGift():
        return uniqueGift(_that);
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
    TResult? Function(ChatShareThemeEmoji value)? emoji,
    TResult? Function(ChatShareThemeUniqueGift value)? uniqueGift,
  }) {
    final _that = this;
    switch (_that) {
      case ChatShareThemeEmoji() when emoji != null:
        return emoji(_that);
      case ChatShareThemeUniqueGift() when uniqueGift != null:
        return uniqueGift(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class ChatShareThemeEmoji implements ChatShareTheme {
  const ChatShareThemeEmoji({
    @JsonKey(name: 'emojis') required final List<EmojiType> emojis,
    @JsonKey(name: 'background_backdrop_id') this.backgroundBackdropId,
    final String? $type,
  }) : _emojis = emojis,
       $type = $type ?? 'emoji';
  factory ChatShareThemeEmoji.fromJson(Map<String, dynamic> json) =>
      _$ChatShareThemeEmojiFromJson(json);

  /// The emoji shown on the background, up to six.
  final List<EmojiType> _emojis;

  /// The emoji shown on the background, up to six.
  @JsonKey(name: 'emojis')
  List<EmojiType> get emojis {
    if (_emojis is EqualUnmodifiableListView) return _emojis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emojis);
  }

  /// Identifier of the backdrop, if the theme uses a custom background.
  @JsonKey(name: 'background_backdrop_id')
  final int? backgroundBackdropId;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of ChatShareTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatShareThemeEmojiCopyWith<ChatShareThemeEmoji> get copyWith =>
      _$ChatShareThemeEmojiCopyWithImpl<ChatShareThemeEmoji>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatShareThemeEmojiToJson(this);
  }

  @override
  String toString() {
    return 'ChatShareTheme.emoji(emojis: $emojis, backgroundBackdropId: $backgroundBackdropId)';
  }
}

/// @nodoc
abstract mixin class $ChatShareThemeEmojiCopyWith<$Res>
    implements $ChatShareThemeCopyWith<$Res> {
  factory $ChatShareThemeEmojiCopyWith(
    ChatShareThemeEmoji value,
    $Res Function(ChatShareThemeEmoji) _then,
  ) = _$ChatShareThemeEmojiCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'emojis') List<EmojiType> emojis,
    @JsonKey(name: 'background_backdrop_id') int? backgroundBackdropId,
  });
}

/// @nodoc
class _$ChatShareThemeEmojiCopyWithImpl<$Res>
    implements $ChatShareThemeEmojiCopyWith<$Res> {
  _$ChatShareThemeEmojiCopyWithImpl(this._self, this._then);

  final ChatShareThemeEmoji _self;
  final $Res Function(ChatShareThemeEmoji) _then;

  /// Create a copy of ChatShareTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? emojis = null, Object? backgroundBackdropId = freezed}) {
    return _then(
      ChatShareThemeEmoji(
        emojis: null == emojis
            ? _self._emojis
            : emojis // ignore: cast_nullable_to_non_nullable
                  as List<EmojiType>,
        backgroundBackdropId: freezed == backgroundBackdropId
            ? _self.backgroundBackdropId
            : backgroundBackdropId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class ChatShareThemeUniqueGift implements ChatShareTheme {
  const ChatShareThemeUniqueGift({
    @JsonKey(name: 'gift') required this.gift,
    final String? $type,
  }) : $type = $type ?? 'unique_gift';
  factory ChatShareThemeUniqueGift.fromJson(Map<String, dynamic> json) =>
      _$ChatShareThemeUniqueGiftFromJson(json);

  /// The gift used for the theme.
  @JsonKey(name: 'gift')
  final UniqueGift gift;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of ChatShareTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatShareThemeUniqueGiftCopyWith<ChatShareThemeUniqueGift> get copyWith =>
      _$ChatShareThemeUniqueGiftCopyWithImpl<ChatShareThemeUniqueGift>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$ChatShareThemeUniqueGiftToJson(this);
  }

  @override
  String toString() {
    return 'ChatShareTheme.uniqueGift(gift: $gift)';
  }
}

/// @nodoc
abstract mixin class $ChatShareThemeUniqueGiftCopyWith<$Res>
    implements $ChatShareThemeCopyWith<$Res> {
  factory $ChatShareThemeUniqueGiftCopyWith(
    ChatShareThemeUniqueGift value,
    $Res Function(ChatShareThemeUniqueGift) _then,
  ) = _$ChatShareThemeUniqueGiftCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'gift') UniqueGift gift});

  $UniqueGiftCopyWith<$Res> get gift;
}

/// @nodoc
class _$ChatShareThemeUniqueGiftCopyWithImpl<$Res>
    implements $ChatShareThemeUniqueGiftCopyWith<$Res> {
  _$ChatShareThemeUniqueGiftCopyWithImpl(this._self, this._then);

  final ChatShareThemeUniqueGift _self;
  final $Res Function(ChatShareThemeUniqueGift) _then;

  /// Create a copy of ChatShareTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? gift = null}) {
    return _then(
      ChatShareThemeUniqueGift(
        gift: null == gift
            ? _self.gift
            : gift // ignore: cast_nullable_to_non_nullable
                  as UniqueGift,
      ),
    );
  }

  /// Create a copy of ChatShareTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftCopyWith<$Res> get gift {
    return $UniqueGiftCopyWith<$Res>(_self.gift, (value) {
      return _then(_self.copyWith(gift: value));
    });
  }
}
