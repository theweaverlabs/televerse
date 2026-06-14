// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart' show InputFile;

part 'input_media_location.freezed.dart';
part 'input_media_location.g.dart';

/// Represents a location to be sent.
@Freezed(fromJson: false, toJson: true)
abstract class InputMediaLocation
    with _$InputMediaLocation
    implements InputPollMedia, InputPollOptionMedia {
  /// Creates a new [InputMediaLocation] object.
  const factory InputMediaLocation({
    /// Type of the media, must be location
    @JsonKey(name: 'type')
    @Default(InputMediaType.location)
    final InputMediaType type,

    /// Latitude of the location
    @JsonKey(name: 'latitude') required final double latitude,

    /// Longitude of the location
    @JsonKey(name: 'longitude') required final double longitude,

    /// Optional. The radius of uncertainty for the location, measured in meters; 0-1500
    @JsonKey(name: 'horizontal_accuracy') final double? horizontalAccuracy,
  }) = _InputMediaLocation;

  const InputMediaLocation._();

  @override
  Iterable<InputFile?> getInputFiles() => [];
}
