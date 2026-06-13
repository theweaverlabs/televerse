// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';

part 'poll_media.freezed.dart';
part 'poll_media.g.dart';

/// This object represents media attached to a poll.
@freezed
abstract class PollMedia with _$PollMedia {
  /// Creates a new [PollMedia] object.
  const factory PollMedia({
    /// Optional. Media is an animation, information about the animation
    @JsonKey(name: 'animation') final Animation? animation,

    /// Optional. Media is an audio file, information about the file; currently,
    /// can't be received in a poll option
    @JsonKey(name: 'audio') final Audio? audio,

    /// Optional. Media is a general file, information about the file;
    /// currently, can't be received in a poll option
    @JsonKey(name: 'document') final Document? document,

    /// Optional. The HTTP link attached to the poll option
    @JsonKey(name: 'link') final Link? link,

    /// Optional. Media is a live photo, information about the live photo
    @JsonKey(name: 'live_photo') final LivePhoto? livePhoto,

    /// Optional. Media is a shared location, information about the location
    @JsonKey(name: 'location') final Location? location,

    /// Optional. Media is a photo, available sizes of the photo
    @JsonKey(name: 'photo') final List<PhotoSize>? photo,

    /// Optional. Media is a sticker, information about the sticker;
    /// currently, for poll options only
    @JsonKey(name: 'sticker') final Sticker? sticker,

    /// Optional. Media is a venue, information about the venue
    @JsonKey(name: 'venue') final Venue? venue,

    /// Optional. Media is a video, information about the video
    @JsonKey(name: 'video') final Video? video,
  }) = _PollMedia;

  /// Creates a new [PollMedia] object from a JSON [Map].
  factory PollMedia.fromJson(Map<String, dynamic> json) =>
      _$PollMediaFromJson(json);
}
