// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LivePhoto {
  /// Optional. Available sizes of the corresponding static photo
  @JsonKey(name: 'photo')
  List<PhotoSize>? get photo;

  /// Identifier for the video file which can be used to download or reuse the
  /// file
  @JsonKey(name: 'file_id')
  String get fileId;

  /// Unique identifier for the video file which is supposed to be the same
  /// over time and for different bots. Can't be used to download or reuse the
  /// file.
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId;

  /// Video width as defined by the sender
  @JsonKey(name: 'width')
  int get width;

  /// Video height as defined by the sender
  @JsonKey(name: 'height')
  int get height;

  /// Duration of the video in seconds as defined by the sender
  @JsonKey(name: 'duration')
  int get duration;

  /// Optional. MIME type of the file as defined by the sender
  @JsonKey(name: 'mime_type')
  String? get mimeType;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some
  /// programming languages may have difficulty/silent defects in
  /// interpreting it. But it has at most 52 significant bits, so a signed
  /// 64-bit integer or double-precision float type are safe for storing this
  /// value.
  @JsonKey(name: 'file_size')
  int? get fileSize;

  /// Create a copy of LivePhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LivePhotoCopyWith<LivePhoto> get copyWith =>
      _$LivePhotoCopyWithImpl<LivePhoto>(this as LivePhoto, _$identity);

  /// Serializes this LivePhoto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'LivePhoto(photo: $photo, fileId: $fileId, fileUniqueId: $fileUniqueId, width: $width, height: $height, duration: $duration, mimeType: $mimeType, fileSize: $fileSize)';
  }
}

/// @nodoc
abstract mixin class $LivePhotoCopyWith<$Res> {
  factory $LivePhotoCopyWith(LivePhoto value, $Res Function(LivePhoto) _then) =
      _$LivePhotoCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'photo') List<PhotoSize>? photo,
    @JsonKey(name: 'file_id') String fileId,
    @JsonKey(name: 'file_unique_id') String fileUniqueId,
    @JsonKey(name: 'width') int width,
    @JsonKey(name: 'height') int height,
    @JsonKey(name: 'duration') int duration,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'file_size') int? fileSize,
  });
}

/// @nodoc
class _$LivePhotoCopyWithImpl<$Res> implements $LivePhotoCopyWith<$Res> {
  _$LivePhotoCopyWithImpl(this._self, this._then);

  final LivePhoto _self;
  final $Res Function(LivePhoto) _then;

  /// Create a copy of LivePhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = freezed,
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? width = null,
    Object? height = null,
    Object? duration = null,
    Object? mimeType = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(
      _self.copyWith(
        photo: freezed == photo
            ? _self.photo
            : photo // ignore: cast_nullable_to_non_nullable
                  as List<PhotoSize>?,
        fileId: null == fileId
            ? _self.fileId
            : fileId // ignore: cast_nullable_to_non_nullable
                  as String,
        fileUniqueId: null == fileUniqueId
            ? _self.fileUniqueId
            : fileUniqueId // ignore: cast_nullable_to_non_nullable
                  as String,
        width: null == width
            ? _self.width
            : width // ignore: cast_nullable_to_non_nullable
                  as int,
        height: null == height
            ? _self.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int,
        duration: null == duration
            ? _self.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int,
        mimeType: freezed == mimeType
            ? _self.mimeType
            : mimeType // ignore: cast_nullable_to_non_nullable
                  as String?,
        fileSize: freezed == fileSize
            ? _self.fileSize
            : fileSize // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [LivePhoto].
extension LivePhotoPatterns on LivePhoto {
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
    TResult Function(_LivePhoto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LivePhoto() when $default != null:
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
    TResult Function(_LivePhoto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LivePhoto():
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
    TResult? Function(_LivePhoto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LivePhoto() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LivePhoto implements LivePhoto {
  const _LivePhoto({
    @JsonKey(name: 'photo') final List<PhotoSize>? photo,
    @JsonKey(name: 'file_id') required this.fileId,
    @JsonKey(name: 'file_unique_id') required this.fileUniqueId,
    @JsonKey(name: 'width') required this.width,
    @JsonKey(name: 'height') required this.height,
    @JsonKey(name: 'duration') required this.duration,
    @JsonKey(name: 'mime_type') this.mimeType,
    @JsonKey(name: 'file_size') this.fileSize,
  }) : _photo = photo;
  factory _LivePhoto.fromJson(Map<String, dynamic> json) =>
      _$LivePhotoFromJson(json);

  /// Optional. Available sizes of the corresponding static photo
  final List<PhotoSize>? _photo;

  /// Optional. Available sizes of the corresponding static photo
  @override
  @JsonKey(name: 'photo')
  List<PhotoSize>? get photo {
    final value = _photo;
    if (value == null) return null;
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Identifier for the video file which can be used to download or reuse the
  /// file
  @override
  @JsonKey(name: 'file_id')
  final String fileId;

  /// Unique identifier for the video file which is supposed to be the same
  /// over time and for different bots. Can't be used to download or reuse the
  /// file.
  @override
  @JsonKey(name: 'file_unique_id')
  final String fileUniqueId;

  /// Video width as defined by the sender
  @override
  @JsonKey(name: 'width')
  final int width;

  /// Video height as defined by the sender
  @override
  @JsonKey(name: 'height')
  final int height;

  /// Duration of the video in seconds as defined by the sender
  @override
  @JsonKey(name: 'duration')
  final int duration;

  /// Optional. MIME type of the file as defined by the sender
  @override
  @JsonKey(name: 'mime_type')
  final String? mimeType;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some
  /// programming languages may have difficulty/silent defects in
  /// interpreting it. But it has at most 52 significant bits, so a signed
  /// 64-bit integer or double-precision float type are safe for storing this
  /// value.
  @override
  @JsonKey(name: 'file_size')
  final int? fileSize;

  /// Create a copy of LivePhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LivePhotoCopyWith<_LivePhoto> get copyWith =>
      __$LivePhotoCopyWithImpl<_LivePhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LivePhotoToJson(this);
  }

  @override
  String toString() {
    return 'LivePhoto(photo: $photo, fileId: $fileId, fileUniqueId: $fileUniqueId, width: $width, height: $height, duration: $duration, mimeType: $mimeType, fileSize: $fileSize)';
  }
}

/// @nodoc
abstract mixin class _$LivePhotoCopyWith<$Res>
    implements $LivePhotoCopyWith<$Res> {
  factory _$LivePhotoCopyWith(
    _LivePhoto value,
    $Res Function(_LivePhoto) _then,
  ) = __$LivePhotoCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'photo') List<PhotoSize>? photo,
    @JsonKey(name: 'file_id') String fileId,
    @JsonKey(name: 'file_unique_id') String fileUniqueId,
    @JsonKey(name: 'width') int width,
    @JsonKey(name: 'height') int height,
    @JsonKey(name: 'duration') int duration,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'file_size') int? fileSize,
  });
}

/// @nodoc
class __$LivePhotoCopyWithImpl<$Res> implements _$LivePhotoCopyWith<$Res> {
  __$LivePhotoCopyWithImpl(this._self, this._then);

  final _LivePhoto _self;
  final $Res Function(_LivePhoto) _then;

  /// Create a copy of LivePhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? photo = freezed,
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? width = null,
    Object? height = null,
    Object? duration = null,
    Object? mimeType = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(
      _LivePhoto(
        photo: freezed == photo
            ? _self._photo
            : photo // ignore: cast_nullable_to_non_nullable
                  as List<PhotoSize>?,
        fileId: null == fileId
            ? _self.fileId
            : fileId // ignore: cast_nullable_to_non_nullable
                  as String,
        fileUniqueId: null == fileUniqueId
            ? _self.fileUniqueId
            : fileUniqueId // ignore: cast_nullable_to_non_nullable
                  as String,
        width: null == width
            ? _self.width
            : width // ignore: cast_nullable_to_non_nullable
                  as int,
        height: null == height
            ? _self.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int,
        duration: null == duration
            ? _self.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int,
        mimeType: freezed == mimeType
            ? _self.mimeType
            : mimeType // ignore: cast_nullable_to_non_nullable
                  as String?,
        fileSize: freezed == fileSize
            ? _self.fileSize
            : fileSize // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}
