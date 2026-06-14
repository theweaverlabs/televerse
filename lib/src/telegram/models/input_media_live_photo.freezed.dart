// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_media_live_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputMediaLivePhoto {
  /// Type of the media, must be live_photo
  @JsonKey(name: 'type')
  InputMediaType get type;

  /// Video of the live photo to send. Pass a file_id to send a file that
  /// exists on the Telegram servers (recommended) or pass
  /// “attach://`<file_attach_name>`” to upload a new one using
  /// multipart/form-data under `<file_attach_name>` name. Sending live
  /// photos by a URL is currently unsupported.
  @JsonKey(name: 'media')
  @InputFileConverter()
  InputFile get media;

  /// The static photo to send. Pass a file_id to send a file that exists on
  /// the Telegram servers (recommended) or pass
  /// “attach://`<file_attach_name>`” to upload a new one using
  /// multipart/form-data under `<file_attach_name>` name. Sending live
  /// photos by a URL is currently unsupported.
  @JsonKey(name: 'photo')
  @InputFileConverter()
  InputFile get photo;

  /// Optional. Caption of the live photo to be sent, 0-1024 characters after
  /// entities parsing
  @JsonKey(name: 'caption')
  String? get caption;

  /// Optional. Mode for parsing entities in the live photo caption. See
  /// formatting options for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Pass True, if the caption must be shown above the message
  /// media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Optional. Pass True if the live photo needs to be covered with a spoiler
  /// animation
  @JsonKey(name: 'has_spoiler')
  bool? get hasSpoiler;

  /// Create a copy of InputMediaLivePhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputMediaLivePhotoCopyWith<InputMediaLivePhoto> get copyWith =>
      _$InputMediaLivePhotoCopyWithImpl<InputMediaLivePhoto>(
        this as InputMediaLivePhoto,
        _$identity,
      );

  /// Serializes this InputMediaLivePhoto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InputMediaLivePhoto(type: $type, media: $media, photo: $photo, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, showCaptionAboveMedia: $showCaptionAboveMedia, hasSpoiler: $hasSpoiler)';
  }
}

/// @nodoc
abstract mixin class $InputMediaLivePhotoCopyWith<$Res> {
  factory $InputMediaLivePhotoCopyWith(
    InputMediaLivePhoto value,
    $Res Function(InputMediaLivePhoto) _then,
  ) = _$InputMediaLivePhotoCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'type') InputMediaType type,
    @JsonKey(name: 'media') @InputFileConverter() InputFile media,
    @JsonKey(name: 'photo') @InputFileConverter() InputFile photo,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
    @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,
    @JsonKey(name: 'has_spoiler') bool? hasSpoiler,
  });
}

/// @nodoc
class _$InputMediaLivePhotoCopyWithImpl<$Res>
    implements $InputMediaLivePhotoCopyWith<$Res> {
  _$InputMediaLivePhotoCopyWithImpl(this._self, this._then);

  final InputMediaLivePhoto _self;
  final $Res Function(InputMediaLivePhoto) _then;

  /// Create a copy of InputMediaLivePhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? media = null,
    Object? photo = null,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? showCaptionAboveMedia = freezed,
    Object? hasSpoiler = freezed,
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
        photo: null == photo
            ? _self.photo
            : photo // ignore: cast_nullable_to_non_nullable
                  as InputFile,
        caption: freezed == caption
            ? _self.caption
            : caption // ignore: cast_nullable_to_non_nullable
                  as String?,
        parseMode: freezed == parseMode
            ? _self.parseMode
            : parseMode // ignore: cast_nullable_to_non_nullable
                  as ParseMode?,
        captionEntities: freezed == captionEntities
            ? _self.captionEntities
            : captionEntities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
        showCaptionAboveMedia: freezed == showCaptionAboveMedia
            ? _self.showCaptionAboveMedia
            : showCaptionAboveMedia // ignore: cast_nullable_to_non_nullable
                  as bool?,
        hasSpoiler: freezed == hasSpoiler
            ? _self.hasSpoiler
            : hasSpoiler // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [InputMediaLivePhoto].
extension InputMediaLivePhotoPatterns on InputMediaLivePhoto {
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
    TResult Function(_InputMediaLivePhoto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InputMediaLivePhoto() when $default != null:
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
    TResult Function(_InputMediaLivePhoto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputMediaLivePhoto():
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
    TResult? Function(_InputMediaLivePhoto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputMediaLivePhoto() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _InputMediaLivePhoto extends InputMediaLivePhoto {
  const _InputMediaLivePhoto({
    @JsonKey(name: 'type') this.type = InputMediaType.livePhoto,
    @JsonKey(name: 'media') @InputFileConverter() required this.media,
    @JsonKey(name: 'photo') @InputFileConverter() required this.photo,
    @JsonKey(name: 'caption') this.caption,
    @JsonKey(name: 'parse_mode') this.parseMode,
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,
    @JsonKey(name: 'show_caption_above_media') this.showCaptionAboveMedia,
    @JsonKey(name: 'has_spoiler') this.hasSpoiler,
  }) : _captionEntities = captionEntities,
       super._();

  /// Type of the media, must be live_photo
  @override
  @JsonKey(name: 'type')
  final InputMediaType type;

  /// Video of the live photo to send. Pass a file_id to send a file that
  /// exists on the Telegram servers (recommended) or pass
  /// “attach://`<file_attach_name>`” to upload a new one using
  /// multipart/form-data under `<file_attach_name>` name. Sending live
  /// photos by a URL is currently unsupported.
  @override
  @JsonKey(name: 'media')
  @InputFileConverter()
  final InputFile media;

  /// The static photo to send. Pass a file_id to send a file that exists on
  /// the Telegram servers (recommended) or pass
  /// “attach://`<file_attach_name>`” to upload a new one using
  /// multipart/form-data under `<file_attach_name>` name. Sending live
  /// photos by a URL is currently unsupported.
  @override
  @JsonKey(name: 'photo')
  @InputFileConverter()
  final InputFile photo;

  /// Optional. Caption of the live photo to be sent, 0-1024 characters after
  /// entities parsing
  @override
  @JsonKey(name: 'caption')
  final String? caption;

  /// Optional. Mode for parsing entities in the live photo caption. See
  /// formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  final List<MessageEntity>? _captionEntities;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities {
    final value = _captionEntities;
    if (value == null) return null;
    if (_captionEntities is EqualUnmodifiableListView) return _captionEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Pass True, if the caption must be shown above the message
  /// media
  @override
  @JsonKey(name: 'show_caption_above_media')
  final bool? showCaptionAboveMedia;

  /// Optional. Pass True if the live photo needs to be covered with a spoiler
  /// animation
  @override
  @JsonKey(name: 'has_spoiler')
  final bool? hasSpoiler;

  /// Create a copy of InputMediaLivePhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InputMediaLivePhotoCopyWith<_InputMediaLivePhoto> get copyWith =>
      __$InputMediaLivePhotoCopyWithImpl<_InputMediaLivePhoto>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$InputMediaLivePhotoToJson(this);
  }

  @override
  String toString() {
    return 'InputMediaLivePhoto(type: $type, media: $media, photo: $photo, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, showCaptionAboveMedia: $showCaptionAboveMedia, hasSpoiler: $hasSpoiler)';
  }
}

/// @nodoc
abstract mixin class _$InputMediaLivePhotoCopyWith<$Res>
    implements $InputMediaLivePhotoCopyWith<$Res> {
  factory _$InputMediaLivePhotoCopyWith(
    _InputMediaLivePhoto value,
    $Res Function(_InputMediaLivePhoto) _then,
  ) = __$InputMediaLivePhotoCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') InputMediaType type,
    @JsonKey(name: 'media') @InputFileConverter() InputFile media,
    @JsonKey(name: 'photo') @InputFileConverter() InputFile photo,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
    @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,
    @JsonKey(name: 'has_spoiler') bool? hasSpoiler,
  });
}

/// @nodoc
class __$InputMediaLivePhotoCopyWithImpl<$Res>
    implements _$InputMediaLivePhotoCopyWith<$Res> {
  __$InputMediaLivePhotoCopyWithImpl(this._self, this._then);

  final _InputMediaLivePhoto _self;
  final $Res Function(_InputMediaLivePhoto) _then;

  /// Create a copy of InputMediaLivePhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? media = null,
    Object? photo = null,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? showCaptionAboveMedia = freezed,
    Object? hasSpoiler = freezed,
  }) {
    return _then(
      _InputMediaLivePhoto(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InputMediaType,
        media: null == media
            ? _self.media
            : media // ignore: cast_nullable_to_non_nullable
                  as InputFile,
        photo: null == photo
            ? _self.photo
            : photo // ignore: cast_nullable_to_non_nullable
                  as InputFile,
        caption: freezed == caption
            ? _self.caption
            : caption // ignore: cast_nullable_to_non_nullable
                  as String?,
        parseMode: freezed == parseMode
            ? _self.parseMode
            : parseMode // ignore: cast_nullable_to_non_nullable
                  as ParseMode?,
        captionEntities: freezed == captionEntities
            ? _self._captionEntities
            : captionEntities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
        showCaptionAboveMedia: freezed == showCaptionAboveMedia
            ? _self.showCaptionAboveMedia
            : showCaptionAboveMedia // ignore: cast_nullable_to_non_nullable
                  as bool?,
        hasSpoiler: freezed == hasSpoiler
            ? _self.hasSpoiler
            : hasSpoiler // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}
