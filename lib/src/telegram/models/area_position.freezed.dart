// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AreaPosition {
  /// The abscissa of the rectangle's center, as a percentage of the media
  /// or card width
  @JsonKey(name: 'x_percentage')
  double get xPercentage;

  /// The ordinate of the rectangle's center, as a percentage of the media
  /// or card height
  @JsonKey(name: 'y_percentage')
  double get yPercentage;

  /// The width of the rectangle, as a percentage of the media or card width
  @JsonKey(name: 'width_percentage')
  double get widthPercentage;

  /// The height of the rectangle, as a percentage of the media or card
  /// height
  @JsonKey(name: 'height_percentage')
  double get heightPercentage;

  /// The clockwise rotation angle of the rectangle, in degrees; 0-360
  @JsonKey(name: 'rotation_angle')
  double get rotationAngle;

  /// The radius of the rectangle corner rounding, as a percentage of the
  /// media or card width
  @JsonKey(name: 'corner_radius_percentage')
  double get cornerRadiusPercentage;

  /// Create a copy of AreaPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AreaPositionCopyWith<AreaPosition> get copyWith =>
      _$AreaPositionCopyWithImpl<AreaPosition>(
        this as AreaPosition,
        _$identity,
      );

  /// Serializes this AreaPosition to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'AreaPosition(xPercentage: $xPercentage, yPercentage: $yPercentage, widthPercentage: $widthPercentage, heightPercentage: $heightPercentage, rotationAngle: $rotationAngle, cornerRadiusPercentage: $cornerRadiusPercentage)';
  }
}

/// @nodoc
abstract mixin class $AreaPositionCopyWith<$Res> {
  factory $AreaPositionCopyWith(
    AreaPosition value,
    $Res Function(AreaPosition) _then,
  ) = _$AreaPositionCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'x_percentage') double xPercentage,
    @JsonKey(name: 'y_percentage') double yPercentage,
    @JsonKey(name: 'width_percentage') double widthPercentage,
    @JsonKey(name: 'height_percentage') double heightPercentage,
    @JsonKey(name: 'rotation_angle') double rotationAngle,
    @JsonKey(name: 'corner_radius_percentage') double cornerRadiusPercentage,
  });
}

/// @nodoc
class _$AreaPositionCopyWithImpl<$Res> implements $AreaPositionCopyWith<$Res> {
  _$AreaPositionCopyWithImpl(this._self, this._then);

  final AreaPosition _self;
  final $Res Function(AreaPosition) _then;

  /// Create a copy of AreaPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xPercentage = null,
    Object? yPercentage = null,
    Object? widthPercentage = null,
    Object? heightPercentage = null,
    Object? rotationAngle = null,
    Object? cornerRadiusPercentage = null,
  }) {
    return _then(
      _self.copyWith(
        xPercentage: null == xPercentage
            ? _self.xPercentage
            : xPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        yPercentage: null == yPercentage
            ? _self.yPercentage
            : yPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        widthPercentage: null == widthPercentage
            ? _self.widthPercentage
            : widthPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        heightPercentage: null == heightPercentage
            ? _self.heightPercentage
            : heightPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        rotationAngle: null == rotationAngle
            ? _self.rotationAngle
            : rotationAngle // ignore: cast_nullable_to_non_nullable
                  as double,
        cornerRadiusPercentage: null == cornerRadiusPercentage
            ? _self.cornerRadiusPercentage
            : cornerRadiusPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [AreaPosition].
extension AreaPositionPatterns on AreaPosition {
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
    TResult Function(_AreaPosition value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AreaPosition() when $default != null:
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
    TResult Function(_AreaPosition value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AreaPosition():
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
    TResult? Function(_AreaPosition value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AreaPosition() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AreaPosition implements AreaPosition {
  const _AreaPosition({
    @JsonKey(name: 'x_percentage') required this.xPercentage,
    @JsonKey(name: 'y_percentage') required this.yPercentage,
    @JsonKey(name: 'width_percentage') required this.widthPercentage,
    @JsonKey(name: 'height_percentage') required this.heightPercentage,
    @JsonKey(name: 'rotation_angle') required this.rotationAngle,
    @JsonKey(name: 'corner_radius_percentage')
    required this.cornerRadiusPercentage,
  });
  factory _AreaPosition.fromJson(Map<String, dynamic> json) =>
      _$AreaPositionFromJson(json);

  /// The abscissa of the rectangle's center, as a percentage of the media
  /// or card width
  @override
  @JsonKey(name: 'x_percentage')
  final double xPercentage;

  /// The ordinate of the rectangle's center, as a percentage of the media
  /// or card height
  @override
  @JsonKey(name: 'y_percentage')
  final double yPercentage;

  /// The width of the rectangle, as a percentage of the media or card width
  @override
  @JsonKey(name: 'width_percentage')
  final double widthPercentage;

  /// The height of the rectangle, as a percentage of the media or card
  /// height
  @override
  @JsonKey(name: 'height_percentage')
  final double heightPercentage;

  /// The clockwise rotation angle of the rectangle, in degrees; 0-360
  @override
  @JsonKey(name: 'rotation_angle')
  final double rotationAngle;

  /// The radius of the rectangle corner rounding, as a percentage of the
  /// media or card width
  @override
  @JsonKey(name: 'corner_radius_percentage')
  final double cornerRadiusPercentage;

  /// Create a copy of AreaPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AreaPositionCopyWith<_AreaPosition> get copyWith =>
      __$AreaPositionCopyWithImpl<_AreaPosition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AreaPositionToJson(this);
  }

  @override
  String toString() {
    return 'AreaPosition(xPercentage: $xPercentage, yPercentage: $yPercentage, widthPercentage: $widthPercentage, heightPercentage: $heightPercentage, rotationAngle: $rotationAngle, cornerRadiusPercentage: $cornerRadiusPercentage)';
  }
}

/// @nodoc
abstract mixin class _$AreaPositionCopyWith<$Res>
    implements $AreaPositionCopyWith<$Res> {
  factory _$AreaPositionCopyWith(
    _AreaPosition value,
    $Res Function(_AreaPosition) _then,
  ) = __$AreaPositionCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'x_percentage') double xPercentage,
    @JsonKey(name: 'y_percentage') double yPercentage,
    @JsonKey(name: 'width_percentage') double widthPercentage,
    @JsonKey(name: 'height_percentage') double heightPercentage,
    @JsonKey(name: 'rotation_angle') double rotationAngle,
    @JsonKey(name: 'corner_radius_percentage') double cornerRadiusPercentage,
  });
}

/// @nodoc
class __$AreaPositionCopyWithImpl<$Res>
    implements _$AreaPositionCopyWith<$Res> {
  __$AreaPositionCopyWithImpl(this._self, this._then);

  final _AreaPosition _self;
  final $Res Function(_AreaPosition) _then;

  /// Create a copy of AreaPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? xPercentage = null,
    Object? yPercentage = null,
    Object? widthPercentage = null,
    Object? heightPercentage = null,
    Object? rotationAngle = null,
    Object? cornerRadiusPercentage = null,
  }) {
    return _then(
      _AreaPosition(
        xPercentage: null == xPercentage
            ? _self.xPercentage
            : xPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        yPercentage: null == yPercentage
            ? _self.yPercentage
            : yPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        widthPercentage: null == widthPercentage
            ? _self.widthPercentage
            : widthPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        heightPercentage: null == heightPercentage
            ? _self.heightPercentage
            : heightPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        rotationAngle: null == rotationAngle
            ? _self.rotationAngle
            : rotationAngle // ignore: cast_nullable_to_non_nullable
                  as double,
        cornerRadiusPercentage: null == cornerRadiusPercentage
            ? _self.cornerRadiusPercentage
            : cornerRadiusPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}
