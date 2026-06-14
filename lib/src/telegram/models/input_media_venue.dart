// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart' show InputFile;

part 'input_media_venue.freezed.dart';
part 'input_media_venue.g.dart';

/// Represents a venue to be sent.
@Freezed(fromJson: false, toJson: true)
abstract class InputMediaVenue
    with _$InputMediaVenue
    implements InputPollMedia, InputPollOptionMedia {
  /// Creates a new [InputMediaVenue] object.
  const factory InputMediaVenue({
    /// Type of the media, must be venue
    @JsonKey(name: 'type')
    @Default(InputMediaType.venue)
    final InputMediaType type,

    /// Latitude of the location
    @JsonKey(name: 'latitude') required final double latitude,

    /// Longitude of the location
    @JsonKey(name: 'longitude') required final double longitude,

    /// Name of the venue
    @JsonKey(name: 'title') required final String title,

    /// Address of the venue
    @JsonKey(name: 'address') required final String address,

    /// Optional. Foursquare identifier of the venue
    @JsonKey(name: 'foursquare_id') final String? foursquareId,

    /// Optional. Foursquare type of the venue, if known.
    @JsonKey(name: 'foursquare_type') final String? foursquareType,

    /// Optional. Google Places identifier of the venue
    @JsonKey(name: 'google_place_id') final String? googlePlaceId,

    /// Optional. Google Places type of the venue.
    @JsonKey(name: 'google_place_type') final String? googlePlaceType,
  }) = _InputMediaVenue;

  const InputMediaVenue._();

  @override
  Iterable<InputFile?> getInputFiles() => [];
}
