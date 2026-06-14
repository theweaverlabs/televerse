// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PollMedia {
  /// Optional. Media is an animation, information about the animation
  @JsonKey(name: 'animation')
  Animation? get animation;

  /// Optional. Media is an audio file, information about the file; currently,
  /// can't be received in a poll option
  @JsonKey(name: 'audio')
  Audio? get audio;

  /// Optional. Media is a general file, information about the file;
  /// currently, can't be received in a poll option
  @JsonKey(name: 'document')
  Document? get document;

  /// Optional. The HTTP link attached to the poll option
  @JsonKey(name: 'link')
  Link? get link;

  /// Optional. Media is a live photo, information about the live photo
  @JsonKey(name: 'live_photo')
  LivePhoto? get livePhoto;

  /// Optional. Media is a shared location, information about the location
  @JsonKey(name: 'location')
  Location? get location;

  /// Optional. Media is a photo, available sizes of the photo
  @JsonKey(name: 'photo')
  List<PhotoSize>? get photo;

  /// Optional. Media is a sticker, information about the sticker;
  /// currently, for poll options only
  @JsonKey(name: 'sticker')
  Sticker? get sticker;

  /// Optional. Media is a venue, information about the venue
  @JsonKey(name: 'venue')
  Venue? get venue;

  /// Optional. Media is a video, information about the video
  @JsonKey(name: 'video')
  Video? get video;

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PollMediaCopyWith<PollMedia> get copyWith =>
      _$PollMediaCopyWithImpl<PollMedia>(this as PollMedia, _$identity);

  /// Serializes this PollMedia to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'PollMedia(animation: $animation, audio: $audio, document: $document, link: $link, livePhoto: $livePhoto, location: $location, photo: $photo, sticker: $sticker, venue: $venue, video: $video)';
  }
}

/// @nodoc
abstract mixin class $PollMediaCopyWith<$Res> {
  factory $PollMediaCopyWith(PollMedia value, $Res Function(PollMedia) _then) =
      _$PollMediaCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'animation') Animation? animation,
    @JsonKey(name: 'audio') Audio? audio,
    @JsonKey(name: 'document') Document? document,
    @JsonKey(name: 'link') Link? link,
    @JsonKey(name: 'live_photo') LivePhoto? livePhoto,
    @JsonKey(name: 'location') Location? location,
    @JsonKey(name: 'photo') List<PhotoSize>? photo,
    @JsonKey(name: 'sticker') Sticker? sticker,
    @JsonKey(name: 'venue') Venue? venue,
    @JsonKey(name: 'video') Video? video,
  });

  $AnimationCopyWith<$Res>? get animation;
  $AudioCopyWith<$Res>? get audio;
  $DocumentCopyWith<$Res>? get document;
  $LinkCopyWith<$Res>? get link;
  $LivePhotoCopyWith<$Res>? get livePhoto;
  $LocationCopyWith<$Res>? get location;
  $StickerCopyWith<$Res>? get sticker;
  $VenueCopyWith<$Res>? get venue;
  $VideoCopyWith<$Res>? get video;
}

/// @nodoc
class _$PollMediaCopyWithImpl<$Res> implements $PollMediaCopyWith<$Res> {
  _$PollMediaCopyWithImpl(this._self, this._then);

  final PollMedia _self;
  final $Res Function(PollMedia) _then;

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animation = freezed,
    Object? audio = freezed,
    Object? document = freezed,
    Object? link = freezed,
    Object? livePhoto = freezed,
    Object? location = freezed,
    Object? photo = freezed,
    Object? sticker = freezed,
    Object? venue = freezed,
    Object? video = freezed,
  }) {
    return _then(
      _self.copyWith(
        animation: freezed == animation
            ? _self.animation
            : animation // ignore: cast_nullable_to_non_nullable
                  as Animation?,
        audio: freezed == audio
            ? _self.audio
            : audio // ignore: cast_nullable_to_non_nullable
                  as Audio?,
        document: freezed == document
            ? _self.document
            : document // ignore: cast_nullable_to_non_nullable
                  as Document?,
        link: freezed == link
            ? _self.link
            : link // ignore: cast_nullable_to_non_nullable
                  as Link?,
        livePhoto: freezed == livePhoto
            ? _self.livePhoto
            : livePhoto // ignore: cast_nullable_to_non_nullable
                  as LivePhoto?,
        location: freezed == location
            ? _self.location
            : location // ignore: cast_nullable_to_non_nullable
                  as Location?,
        photo: freezed == photo
            ? _self.photo
            : photo // ignore: cast_nullable_to_non_nullable
                  as List<PhotoSize>?,
        sticker: freezed == sticker
            ? _self.sticker
            : sticker // ignore: cast_nullable_to_non_nullable
                  as Sticker?,
        venue: freezed == venue
            ? _self.venue
            : venue // ignore: cast_nullable_to_non_nullable
                  as Venue?,
        video: freezed == video
            ? _self.video
            : video // ignore: cast_nullable_to_non_nullable
                  as Video?,
      ),
    );
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimationCopyWith<$Res>? get animation {
    if (_self.animation == null) {
      return null;
    }

    return $AnimationCopyWith<$Res>(_self.animation!, (value) {
      return _then(_self.copyWith(animation: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudioCopyWith<$Res>? get audio {
    if (_self.audio == null) {
      return null;
    }

    return $AudioCopyWith<$Res>(_self.audio!, (value) {
      return _then(_self.copyWith(audio: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res>? get document {
    if (_self.document == null) {
      return null;
    }

    return $DocumentCopyWith<$Res>(_self.document!, (value) {
      return _then(_self.copyWith(document: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LinkCopyWith<$Res>? get link {
    if (_self.link == null) {
      return null;
    }

    return $LinkCopyWith<$Res>(_self.link!, (value) {
      return _then(_self.copyWith(link: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LivePhotoCopyWith<$Res>? get livePhoto {
    if (_self.livePhoto == null) {
      return null;
    }

    return $LivePhotoCopyWith<$Res>(_self.livePhoto!, (value) {
      return _then(_self.copyWith(livePhoto: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StickerCopyWith<$Res>? get sticker {
    if (_self.sticker == null) {
      return null;
    }

    return $StickerCopyWith<$Res>(_self.sticker!, (value) {
      return _then(_self.copyWith(sticker: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VenueCopyWith<$Res>? get venue {
    if (_self.venue == null) {
      return null;
    }

    return $VenueCopyWith<$Res>(_self.venue!, (value) {
      return _then(_self.copyWith(venue: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoCopyWith<$Res>? get video {
    if (_self.video == null) {
      return null;
    }

    return $VideoCopyWith<$Res>(_self.video!, (value) {
      return _then(_self.copyWith(video: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PollMedia].
extension PollMediaPatterns on PollMedia {
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
    TResult Function(_PollMedia value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PollMedia() when $default != null:
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
    TResult Function(_PollMedia value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PollMedia():
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
    TResult? Function(_PollMedia value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PollMedia() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PollMedia implements PollMedia {
  const _PollMedia({
    @JsonKey(name: 'animation') this.animation,
    @JsonKey(name: 'audio') this.audio,
    @JsonKey(name: 'document') this.document,
    @JsonKey(name: 'link') this.link,
    @JsonKey(name: 'live_photo') this.livePhoto,
    @JsonKey(name: 'location') this.location,
    @JsonKey(name: 'photo') final List<PhotoSize>? photo,
    @JsonKey(name: 'sticker') this.sticker,
    @JsonKey(name: 'venue') this.venue,
    @JsonKey(name: 'video') this.video,
  }) : _photo = photo;
  factory _PollMedia.fromJson(Map<String, dynamic> json) =>
      _$PollMediaFromJson(json);

  /// Optional. Media is an animation, information about the animation
  @override
  @JsonKey(name: 'animation')
  final Animation? animation;

  /// Optional. Media is an audio file, information about the file; currently,
  /// can't be received in a poll option
  @override
  @JsonKey(name: 'audio')
  final Audio? audio;

  /// Optional. Media is a general file, information about the file;
  /// currently, can't be received in a poll option
  @override
  @JsonKey(name: 'document')
  final Document? document;

  /// Optional. The HTTP link attached to the poll option
  @override
  @JsonKey(name: 'link')
  final Link? link;

  /// Optional. Media is a live photo, information about the live photo
  @override
  @JsonKey(name: 'live_photo')
  final LivePhoto? livePhoto;

  /// Optional. Media is a shared location, information about the location
  @override
  @JsonKey(name: 'location')
  final Location? location;

  /// Optional. Media is a photo, available sizes of the photo
  final List<PhotoSize>? _photo;

  /// Optional. Media is a photo, available sizes of the photo
  @override
  @JsonKey(name: 'photo')
  List<PhotoSize>? get photo {
    final value = _photo;
    if (value == null) return null;
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Media is a sticker, information about the sticker;
  /// currently, for poll options only
  @override
  @JsonKey(name: 'sticker')
  final Sticker? sticker;

  /// Optional. Media is a venue, information about the venue
  @override
  @JsonKey(name: 'venue')
  final Venue? venue;

  /// Optional. Media is a video, information about the video
  @override
  @JsonKey(name: 'video')
  final Video? video;

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PollMediaCopyWith<_PollMedia> get copyWith =>
      __$PollMediaCopyWithImpl<_PollMedia>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PollMediaToJson(this);
  }

  @override
  String toString() {
    return 'PollMedia(animation: $animation, audio: $audio, document: $document, link: $link, livePhoto: $livePhoto, location: $location, photo: $photo, sticker: $sticker, venue: $venue, video: $video)';
  }
}

/// @nodoc
abstract mixin class _$PollMediaCopyWith<$Res>
    implements $PollMediaCopyWith<$Res> {
  factory _$PollMediaCopyWith(
    _PollMedia value,
    $Res Function(_PollMedia) _then,
  ) = __$PollMediaCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'animation') Animation? animation,
    @JsonKey(name: 'audio') Audio? audio,
    @JsonKey(name: 'document') Document? document,
    @JsonKey(name: 'link') Link? link,
    @JsonKey(name: 'live_photo') LivePhoto? livePhoto,
    @JsonKey(name: 'location') Location? location,
    @JsonKey(name: 'photo') List<PhotoSize>? photo,
    @JsonKey(name: 'sticker') Sticker? sticker,
    @JsonKey(name: 'venue') Venue? venue,
    @JsonKey(name: 'video') Video? video,
  });

  @override
  $AnimationCopyWith<$Res>? get animation;
  @override
  $AudioCopyWith<$Res>? get audio;
  @override
  $DocumentCopyWith<$Res>? get document;
  @override
  $LinkCopyWith<$Res>? get link;
  @override
  $LivePhotoCopyWith<$Res>? get livePhoto;
  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $StickerCopyWith<$Res>? get sticker;
  @override
  $VenueCopyWith<$Res>? get venue;
  @override
  $VideoCopyWith<$Res>? get video;
}

/// @nodoc
class __$PollMediaCopyWithImpl<$Res> implements _$PollMediaCopyWith<$Res> {
  __$PollMediaCopyWithImpl(this._self, this._then);

  final _PollMedia _self;
  final $Res Function(_PollMedia) _then;

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? animation = freezed,
    Object? audio = freezed,
    Object? document = freezed,
    Object? link = freezed,
    Object? livePhoto = freezed,
    Object? location = freezed,
    Object? photo = freezed,
    Object? sticker = freezed,
    Object? venue = freezed,
    Object? video = freezed,
  }) {
    return _then(
      _PollMedia(
        animation: freezed == animation
            ? _self.animation
            : animation // ignore: cast_nullable_to_non_nullable
                  as Animation?,
        audio: freezed == audio
            ? _self.audio
            : audio // ignore: cast_nullable_to_non_nullable
                  as Audio?,
        document: freezed == document
            ? _self.document
            : document // ignore: cast_nullable_to_non_nullable
                  as Document?,
        link: freezed == link
            ? _self.link
            : link // ignore: cast_nullable_to_non_nullable
                  as Link?,
        livePhoto: freezed == livePhoto
            ? _self.livePhoto
            : livePhoto // ignore: cast_nullable_to_non_nullable
                  as LivePhoto?,
        location: freezed == location
            ? _self.location
            : location // ignore: cast_nullable_to_non_nullable
                  as Location?,
        photo: freezed == photo
            ? _self._photo
            : photo // ignore: cast_nullable_to_non_nullable
                  as List<PhotoSize>?,
        sticker: freezed == sticker
            ? _self.sticker
            : sticker // ignore: cast_nullable_to_non_nullable
                  as Sticker?,
        venue: freezed == venue
            ? _self.venue
            : venue // ignore: cast_nullable_to_non_nullable
                  as Venue?,
        video: freezed == video
            ? _self.video
            : video // ignore: cast_nullable_to_non_nullable
                  as Video?,
      ),
    );
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimationCopyWith<$Res>? get animation {
    if (_self.animation == null) {
      return null;
    }

    return $AnimationCopyWith<$Res>(_self.animation!, (value) {
      return _then(_self.copyWith(animation: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudioCopyWith<$Res>? get audio {
    if (_self.audio == null) {
      return null;
    }

    return $AudioCopyWith<$Res>(_self.audio!, (value) {
      return _then(_self.copyWith(audio: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res>? get document {
    if (_self.document == null) {
      return null;
    }

    return $DocumentCopyWith<$Res>(_self.document!, (value) {
      return _then(_self.copyWith(document: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LinkCopyWith<$Res>? get link {
    if (_self.link == null) {
      return null;
    }

    return $LinkCopyWith<$Res>(_self.link!, (value) {
      return _then(_self.copyWith(link: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LivePhotoCopyWith<$Res>? get livePhoto {
    if (_self.livePhoto == null) {
      return null;
    }

    return $LivePhotoCopyWith<$Res>(_self.livePhoto!, (value) {
      return _then(_self.copyWith(livePhoto: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StickerCopyWith<$Res>? get sticker {
    if (_self.sticker == null) {
      return null;
    }

    return $StickerCopyWith<$Res>(_self.sticker!, (value) {
      return _then(_self.copyWith(sticker: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VenueCopyWith<$Res>? get venue {
    if (_self.venue == null) {
      return null;
    }

    return $VenueCopyWith<$Res>(_self.venue!, (value) {
      return _then(_self.copyWith(venue: value));
    });
  }

  /// Create a copy of PollMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoCopyWith<$Res>? get video {
    if (_self.video == null) {
      return null;
    }

    return $VideoCopyWith<$Res>(_self.video!, (value) {
      return _then(_self.copyWith(video: value));
    });
  }
}
