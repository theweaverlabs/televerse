// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_media_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputMediaLocation {
  /// Type of the media, must be location
  @JsonKey(name: 'type')
  InputMediaType get type;

  /// Latitude of the location
  @JsonKey(name: 'latitude')
  double get latitude;

  /// Longitude of the location
  @JsonKey(name: 'longitude')
  double get longitude;

  /// Optional. The radius of uncertainty for the location, measured in meters; 0-1500
  @JsonKey(name: 'horizontal_accuracy')
  double? get horizontalAccuracy;

  /// Create a copy of InputMediaLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputMediaLocationCopyWith<InputMediaLocation> get copyWith =>
      _$InputMediaLocationCopyWithImpl<InputMediaLocation>(
        this as InputMediaLocation,
        _$identity,
      );

  /// Serializes this InputMediaLocation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InputMediaLocation(type: $type, latitude: $latitude, longitude: $longitude, horizontalAccuracy: $horizontalAccuracy)';
  }
}

/// @nodoc
abstract mixin class $InputMediaLocationCopyWith<$Res> {
  factory $InputMediaLocationCopyWith(
    InputMediaLocation value,
    $Res Function(InputMediaLocation) _then,
  ) = _$InputMediaLocationCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'type') InputMediaType type,
    @JsonKey(name: 'latitude') double latitude,
    @JsonKey(name: 'longitude') double longitude,
    @JsonKey(name: 'horizontal_accuracy') double? horizontalAccuracy,
  });
}

/// @nodoc
class _$InputMediaLocationCopyWithImpl<$Res>
    implements $InputMediaLocationCopyWith<$Res> {
  _$InputMediaLocationCopyWithImpl(this._self, this._then);

  final InputMediaLocation _self;
  final $Res Function(InputMediaLocation) _then;

  /// Create a copy of InputMediaLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? horizontalAccuracy = freezed,
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
        horizontalAccuracy: freezed == horizontalAccuracy
            ? _self.horizontalAccuracy
            : horizontalAccuracy // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [InputMediaLocation].
extension InputMediaLocationPatterns on InputMediaLocation {
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
    TResult Function(_InputMediaLocation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InputMediaLocation() when $default != null:
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
    TResult Function(_InputMediaLocation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputMediaLocation():
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
    TResult? Function(_InputMediaLocation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputMediaLocation() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _InputMediaLocation extends InputMediaLocation {
  const _InputMediaLocation({
    @JsonKey(name: 'type') this.type = InputMediaType.location,
    @JsonKey(name: 'latitude') required this.latitude,
    @JsonKey(name: 'longitude') required this.longitude,
    @JsonKey(name: 'horizontal_accuracy') this.horizontalAccuracy,
  }) : super._();

  /// Type of the media, must be location
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

  /// Optional. The radius of uncertainty for the location, measured in meters; 0-1500
  @override
  @JsonKey(name: 'horizontal_accuracy')
  final double? horizontalAccuracy;

  /// Create a copy of InputMediaLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InputMediaLocationCopyWith<_InputMediaLocation> get copyWith =>
      __$InputMediaLocationCopyWithImpl<_InputMediaLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputMediaLocationToJson(this);
  }

  @override
  String toString() {
    return 'InputMediaLocation(type: $type, latitude: $latitude, longitude: $longitude, horizontalAccuracy: $horizontalAccuracy)';
  }
}

/// @nodoc
abstract mixin class _$InputMediaLocationCopyWith<$Res>
    implements $InputMediaLocationCopyWith<$Res> {
  factory _$InputMediaLocationCopyWith(
    _InputMediaLocation value,
    $Res Function(_InputMediaLocation) _then,
  ) = __$InputMediaLocationCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') InputMediaType type,
    @JsonKey(name: 'latitude') double latitude,
    @JsonKey(name: 'longitude') double longitude,
    @JsonKey(name: 'horizontal_accuracy') double? horizontalAccuracy,
  });
}

/// @nodoc
class __$InputMediaLocationCopyWithImpl<$Res>
    implements _$InputMediaLocationCopyWith<$Res> {
  __$InputMediaLocationCopyWithImpl(this._self, this._then);

  final _InputMediaLocation _self;
  final $Res Function(_InputMediaLocation) _then;

  /// Create a copy of InputMediaLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? horizontalAccuracy = freezed,
  }) {
    return _then(
      _InputMediaLocation(
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
        horizontalAccuracy: freezed == horizontalAccuracy
            ? _self.horizontalAccuracy
            : horizontalAccuracy // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}
