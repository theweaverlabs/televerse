// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'area_position.freezed.dart';
part 'area_position.g.dart';

/// Describes the position of a rectangle on a story media or a TON wallet
/// card.
///
/// Before Bot API 10.4, this object was called `StoryAreaPosition`.
@freezed
abstract class AreaPosition with _$AreaPosition {
  /// Creates a new [AreaPosition] object.
  const factory AreaPosition({
    /// The abscissa of the rectangle's center, as a percentage of the media
    /// or card width
    @JsonKey(name: 'x_percentage') required double xPercentage,

    /// The ordinate of the rectangle's center, as a percentage of the media
    /// or card height
    @JsonKey(name: 'y_percentage') required double yPercentage,

    /// The width of the rectangle, as a percentage of the media or card width
    @JsonKey(name: 'width_percentage') required double widthPercentage,

    /// The height of the rectangle, as a percentage of the media or card
    /// height
    @JsonKey(name: 'height_percentage') required double heightPercentage,

    /// The clockwise rotation angle of the rectangle, in degrees; 0-360
    @JsonKey(name: 'rotation_angle') required double rotationAngle,

    /// The radius of the rectangle corner rounding, as a percentage of the
    /// media or card width
    @JsonKey(name: 'corner_radius_percentage')
    required double cornerRadiusPercentage,
  }) = _AreaPosition;

  /// Creates a new [AreaPosition] object from a JSON [Map].
  factory AreaPosition.fromJson(Map<String, dynamic> json) =>
      _$AreaPositionFromJson(json);
}
