// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_area_position.freezed.dart';
part 'story_area_position.g.dart';

/// Describes a rectangular area on a story or TON wallet card.
///
/// Bot API 10.4 names this object [AreaPosition].
@freezed
abstract class StoryAreaPosition with _$StoryAreaPosition {
  /// Creates a new [StoryAreaPosition] object.
  const factory StoryAreaPosition({
    /// The abscissa of the area's center, as a percentage of the media width
    @JsonKey(name: 'x_percentage') required double xPercentage,

    /// The ordinate of the area's center, as a percentage of the media height
    @JsonKey(name: 'y_percentage') required double yPercentage,

    /// The width of the area's rectangle, as a percentage of the media width
    @JsonKey(name: 'width_percentage') required double widthPercentage,

    /// The height of the area's rectangle, as a percentage of the media height
    @JsonKey(name: 'height_percentage') required double heightPercentage,

    /// The clockwise rotation angle of the rectangle, in degrees; 0-360
    @JsonKey(name: 'rotation_angle') required double rotationAngle,

    /// The radius of the rectangle corner rounding, as a percentage of the media width
    @JsonKey(name: 'corner_radius_percentage')
    required double cornerRadiusPercentage,
  }) = _StoryAreaPosition;

  /// Creates a new [StoryAreaPosition] object from a JSON [Map].
  factory StoryAreaPosition.fromJson(Map<String, dynamic> json) =>
      _$StoryAreaPositionFromJson(json);
}

/// The position of a rectangular area on a story or TON wallet card.
typedef AreaPosition = StoryAreaPosition;
