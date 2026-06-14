// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';

part 'live_photo.freezed.dart';
part 'live_photo.g.dart';

/// This object represents a live photo.
@freezed
abstract class LivePhoto with _$LivePhoto {
  /// Creates a new [LivePhoto] object.
  const factory LivePhoto({
    /// Optional. Available sizes of the corresponding static photo
    @JsonKey(name: 'photo') List<PhotoSize>? photo,

    /// Identifier for the video file which can be used to download or reuse the
    /// file
    @JsonKey(name: 'file_id') required String fileId,

    /// Unique identifier for the video file which is supposed to be the same
    /// over time and for different bots. Can't be used to download or reuse the
    /// file.
    @JsonKey(name: 'file_unique_id') required String fileUniqueId,

    /// Video width as defined by the sender
    @JsonKey(name: 'width') required int width,

    /// Video height as defined by the sender
    @JsonKey(name: 'height') required int height,

    /// Duration of the video in seconds as defined by the sender
    @JsonKey(name: 'duration') required int duration,

    /// Optional. MIME type of the file as defined by the sender
    @JsonKey(name: 'mime_type') String? mimeType,

    /// Optional. File size in bytes. It can be bigger than 2^31 and some
    /// programming languages may have difficulty/silent defects in
    /// interpreting it. But it has at most 52 significant bits, so a signed
    /// 64-bit integer or double-precision float type are safe for storing this
    /// value.
    @JsonKey(name: 'file_size') int? fileSize,
  }) = _LivePhoto;

  /// Creates a new [LivePhoto] object from a JSON [Map].
  factory LivePhoto.fromJson(Map<String, dynamic> json) =>
      _$LivePhotoFromJson(json);
}

/// Extension for LivePhoto to add durationTime getter
extension LivePhotoExt on LivePhoto {
  /// Duration of the video as [Duration] object.
  Duration get durationTime => Duration(seconds: duration);
}
