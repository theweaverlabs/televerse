// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_media_venue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputMediaVenue {
  /// Type of the media, must be venue
  @JsonKey(name: 'type')
  InputMediaType get type;

  /// Latitude of the location
  @JsonKey(name: 'latitude')
  double get latitude;

  /// Longitude of the location
  @JsonKey(name: 'longitude')
  double get longitude;

  /// Name of the venue
  @JsonKey(name: 'title')
  String get title;

  /// Address of the venue
  @JsonKey(name: 'address')
  String get address;

  /// Optional. Foursquare identifier of the venue
  @JsonKey(name: 'foursquare_id')
  String? get foursquareId;

  /// Optional. Foursquare type of the venue, if known.
  @JsonKey(name: 'foursquare_type')
  String? get foursquareType;

  /// Optional. Google Places identifier of the venue
  @JsonKey(name: 'google_place_id')
  String? get googlePlaceId;

  /// Optional. Google Places type of the venue.
  @JsonKey(name: 'google_place_type')
  String? get googlePlaceType;

  /// Create a copy of InputMediaVenue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputMediaVenueCopyWith<InputMediaVenue> get copyWith =>
      _$InputMediaVenueCopyWithImpl<InputMediaVenue>(
        this as InputMediaVenue,
        _$identity,
      );

  /// Serializes this InputMediaVenue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InputMediaVenue(type: $type, latitude: $latitude, longitude: $longitude, title: $title, address: $address, foursquareId: $foursquareId, foursquareType: $foursquareType, googlePlaceId: $googlePlaceId, googlePlaceType: $googlePlaceType)';
  }
}

/// @nodoc
abstract mixin class $InputMediaVenueCopyWith<$Res> {
  factory $InputMediaVenueCopyWith(
    InputMediaVenue value,
    $Res Function(InputMediaVenue) _then,
  ) = _$InputMediaVenueCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'type') InputMediaType type,
    @JsonKey(name: 'latitude') double latitude,
    @JsonKey(name: 'longitude') double longitude,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'foursquare_id') String? foursquareId,
    @JsonKey(name: 'foursquare_type') String? foursquareType,
    @JsonKey(name: 'google_place_id') String? googlePlaceId,
    @JsonKey(name: 'google_place_type') String? googlePlaceType,
  });
}

/// @nodoc
class _$InputMediaVenueCopyWithImpl<$Res>
    implements $InputMediaVenueCopyWith<$Res> {
  _$InputMediaVenueCopyWithImpl(this._self, this._then);

  final InputMediaVenue _self;
  final $Res Function(InputMediaVenue) _then;

  /// Create a copy of InputMediaVenue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? title = null,
    Object? address = null,
    Object? foursquareId = freezed,
    Object? foursquareType = freezed,
    Object? googlePlaceId = freezed,
    Object? googlePlaceType = freezed,
  }) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InputMediaType,
        latitude: null == latitude
            ? _self.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double,
        longitude: null == longitude
            ? _self.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double,
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        address: null == address
            ? _self.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        foursquareId: freezed == foursquareId
            ? _self.foursquareId
            : foursquareId // ignore: cast_nullable_to_non_nullable
                  as String?,
        foursquareType: freezed == foursquareType
            ? _self.foursquareType
            : foursquareType // ignore: cast_nullable_to_non_nullable
                  as String?,
        googlePlaceId: freezed == googlePlaceId
            ? _self.googlePlaceId
            : googlePlaceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        googlePlaceType: freezed == googlePlaceType
            ? _self.googlePlaceType
            : googlePlaceType // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [InputMediaVenue].
extension InputMediaVenuePatterns on InputMediaVenue {
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
    TResult Function(_InputMediaVenue value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InputMediaVenue() when $default != null:
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
    TResult Function(_InputMediaVenue value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputMediaVenue():
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
    TResult? Function(_InputMediaVenue value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputMediaVenue() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _InputMediaVenue extends InputMediaVenue {
  const _InputMediaVenue({
    @JsonKey(name: 'type') this.type = InputMediaType.venue,
    @JsonKey(name: 'latitude') required this.latitude,
    @JsonKey(name: 'longitude') required this.longitude,
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'address') required this.address,
    @JsonKey(name: 'foursquare_id') this.foursquareId,
    @JsonKey(name: 'foursquare_type') this.foursquareType,
    @JsonKey(name: 'google_place_id') this.googlePlaceId,
    @JsonKey(name: 'google_place_type') this.googlePlaceType,
  }) : super._();

  /// Type of the media, must be venue
  @override
  @JsonKey(name: 'type')
  final InputMediaType type;

  /// Latitude of the location
  @override
  @JsonKey(name: 'latitude')
  final double latitude;

  /// Longitude of the location
  @override
  @JsonKey(name: 'longitude')
  final double longitude;

  /// Name of the venue
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Address of the venue
  @override
  @JsonKey(name: 'address')
  final String address;

  /// Optional. Foursquare identifier of the venue
  @override
  @JsonKey(name: 'foursquare_id')
  final String? foursquareId;

  /// Optional. Foursquare type of the venue, if known.
  @override
  @JsonKey(name: 'foursquare_type')
  final String? foursquareType;

  /// Optional. Google Places identifier of the venue
  @override
  @JsonKey(name: 'google_place_id')
  final String? googlePlaceId;

  /// Optional. Google Places type of the venue.
  @override
  @JsonKey(name: 'google_place_type')
  final String? googlePlaceType;

  /// Create a copy of InputMediaVenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InputMediaVenueCopyWith<_InputMediaVenue> get copyWith =>
      __$InputMediaVenueCopyWithImpl<_InputMediaVenue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputMediaVenueToJson(this);
  }

  @override
  String toString() {
    return 'InputMediaVenue(type: $type, latitude: $latitude, longitude: $longitude, title: $title, address: $address, foursquareId: $foursquareId, foursquareType: $foursquareType, googlePlaceId: $googlePlaceId, googlePlaceType: $googlePlaceType)';
  }
}

/// @nodoc
abstract mixin class _$InputMediaVenueCopyWith<$Res>
    implements $InputMediaVenueCopyWith<$Res> {
  factory _$InputMediaVenueCopyWith(
    _InputMediaVenue value,
    $Res Function(_InputMediaVenue) _then,
  ) = __$InputMediaVenueCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') InputMediaType type,
    @JsonKey(name: 'latitude') double latitude,
    @JsonKey(name: 'longitude') double longitude,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'foursquare_id') String? foursquareId,
    @JsonKey(name: 'foursquare_type') String? foursquareType,
    @JsonKey(name: 'google_place_id') String? googlePlaceId,
    @JsonKey(name: 'google_place_type') String? googlePlaceType,
  });
}

/// @nodoc
class __$InputMediaVenueCopyWithImpl<$Res>
    implements _$InputMediaVenueCopyWith<$Res> {
  __$InputMediaVenueCopyWithImpl(this._self, this._then);

  final _InputMediaVenue _self;
  final $Res Function(_InputMediaVenue) _then;

  /// Create a copy of InputMediaVenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? title = null,
    Object? address = null,
    Object? foursquareId = freezed,
    Object? foursquareType = freezed,
    Object? googlePlaceId = freezed,
    Object? googlePlaceType = freezed,
  }) {
    return _then(
      _InputMediaVenue(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InputMediaType,
        latitude: null == latitude
            ? _self.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double,
        longitude: null == longitude
            ? _self.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double,
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        address: null == address
            ? _self.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        foursquareId: freezed == foursquareId
            ? _self.foursquareId
            : foursquareId // ignore: cast_nullable_to_non_nullable
                  as String?,
        foursquareType: freezed == foursquareType
            ? _self.foursquareType
            : foursquareType // ignore: cast_nullable_to_non_nullable
                  as String?,
        googlePlaceId: freezed == googlePlaceId
            ? _self.googlePlaceId
            : googlePlaceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        googlePlaceType: freezed == googlePlaceType
            ? _self.googlePlaceType
            : googlePlaceType // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
