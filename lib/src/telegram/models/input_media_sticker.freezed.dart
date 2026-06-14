// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_media_sticker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputMediaSticker {
  /// Type of the media, must be sticker
  @JsonKey(name: 'type')
  InputMediaType get type;

  /// File to send. Pass a file_id to send a file that exists on the Telegram
  /// servers (recommended), pass an HTTP URL for Telegram to get a .WEBP
  /// sticker from the Internet, or pass “attach://`<file_attach_name>`” to
  /// upload a new .WEBP, .TGS, or .WEBM sticker using multipart/form-data
  /// under `<file_attach_name>` name.
  @JsonKey(name: 'media')
  @InputFileConverter()
  InputFile get media;

  /// Optional. Emoji associated with the sticker; only for just uploaded
  /// stickers.
  @JsonKey(name: 'emoji')
  String? get emoji;

  /// Create a copy of InputMediaSticker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputMediaStickerCopyWith<InputMediaSticker> get copyWith =>
      _$InputMediaStickerCopyWithImpl<InputMediaSticker>(
        this as InputMediaSticker,
        _$identity,
      );

  /// Serializes this InputMediaSticker to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InputMediaSticker(type: $type, media: $media, emoji: $emoji)';
  }
}

/// @nodoc
abstract mixin class $InputMediaStickerCopyWith<$Res> {
  factory $InputMediaStickerCopyWith(
    InputMediaSticker value,
    $Res Function(InputMediaSticker) _then,
  ) = _$InputMediaStickerCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'type') InputMediaType type,
    @JsonKey(name: 'media') @InputFileConverter() InputFile media,
    @JsonKey(name: 'emoji') String? emoji,
  });
}

/// @nodoc
class _$InputMediaStickerCopyWithImpl<$Res>
    implements $InputMediaStickerCopyWith<$Res> {
  _$InputMediaStickerCopyWithImpl(this._self, this._then);

  final InputMediaSticker _self;
  final $Res Function(InputMediaSticker) _then;

  /// Create a copy of InputMediaSticker
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? media = null,
    Object? emoji = freezed,
  }) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InputMediaType,
        media: null == media
            ? _self.media
            : media // ignore: cast_nullable_to_non_nullable
                  as InputFile,
        emoji: freezed == emoji
            ? _self.emoji
            : emoji // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [InputMediaSticker].
extension InputMediaStickerPatterns on InputMediaSticker {
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
    TResult Function(_InputMediaSticker value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InputMediaSticker() when $default != null:
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
    TResult Function(_InputMediaSticker value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputMediaSticker():
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
    TResult? Function(_InputMediaSticker value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputMediaSticker() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _InputMediaSticker extends InputMediaSticker {
  const _InputMediaSticker({
    @JsonKey(name: 'type') this.type = InputMediaType.sticker,
    @JsonKey(name: 'media') @InputFileConverter() required this.media,
    @JsonKey(name: 'emoji') this.emoji,
  }) : super._();

  /// Type of the media, must be sticker
  @override
  @JsonKey(name: 'type')
  final InputMediaType type;

  /// File to send. Pass a file_id to send a file that exists on the Telegram
  /// servers (recommended), pass an HTTP URL for Telegram to get a .WEBP
  /// sticker from the Internet, or pass “attach://`<file_attach_name>`” to
  /// upload a new .WEBP, .TGS, or .WEBM sticker using multipart/form-data
  /// under `<file_attach_name>` name.
  @override
  @JsonKey(name: 'media')
  @InputFileConverter()
  final InputFile media;

  /// Optional. Emoji associated with the sticker; only for just uploaded
  /// stickers.
  @override
  @JsonKey(name: 'emoji')
  final String? emoji;

  /// Create a copy of InputMediaSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InputMediaStickerCopyWith<_InputMediaSticker> get copyWith =>
      __$InputMediaStickerCopyWithImpl<_InputMediaSticker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputMediaStickerToJson(this);
  }

  @override
  String toString() {
    return 'InputMediaSticker(type: $type, media: $media, emoji: $emoji)';
  }
}

/// @nodoc
abstract mixin class _$InputMediaStickerCopyWith<$Res>
    implements $InputMediaStickerCopyWith<$Res> {
  factory _$InputMediaStickerCopyWith(
    _InputMediaSticker value,
    $Res Function(_InputMediaSticker) _then,
  ) = __$InputMediaStickerCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') InputMediaType type,
    @JsonKey(name: 'media') @InputFileConverter() InputFile media,
    @JsonKey(name: 'emoji') String? emoji,
  });
}

/// @nodoc
class __$InputMediaStickerCopyWithImpl<$Res>
    implements _$InputMediaStickerCopyWith<$Res> {
  __$InputMediaStickerCopyWithImpl(this._self, this._then);

  final _InputMediaSticker _self;
  final $Res Function(_InputMediaSticker) _then;

  /// Create a copy of InputMediaSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? media = null,
    Object? emoji = freezed,
  }) {
    return _then(
      _InputMediaSticker(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InputMediaType,
        media: null == media
            ? _self.media
            : media // ignore: cast_nullable_to_non_nullable
                  as InputFile,
        emoji: freezed == emoji
            ? _self.emoji
            : emoji // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
