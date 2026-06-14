// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart' show InputFile, InputFileConverter;

part 'input_media_live_photo.freezed.dart';
part 'input_media_live_photo.g.dart';

/// Represents a live photo to be sent.
@Freezed(fromJson: false, toJson: true)
abstract class InputMediaLivePhoto
    with _$InputMediaLivePhoto
    implements InputPollMedia, InputPollOptionMedia {
  /// Creates a new [InputMediaLivePhoto] object.
  const factory InputMediaLivePhoto({
    /// Type of the media, must be live_photo
    @JsonKey(name: 'type')
    @Default(InputMediaType.livePhoto)
    final InputMediaType type,

    /// Video of the live photo to send. Pass a file_id to send a file that
    /// exists on the Telegram servers (recommended) or pass
    /// “attach://`<file_attach_name>`” to upload a new one using
    /// multipart/form-data under `<file_attach_name>` name. Sending live
    /// photos by a URL is currently unsupported.
    @JsonKey(name: 'media')
    @InputFileConverter()
    required final InputFile media,

    /// The static photo to send. Pass a file_id to send a file that exists on
    /// the Telegram servers (recommended) or pass
    /// “attach://`<file_attach_name>`” to upload a new one using
    /// multipart/form-data under `<file_attach_name>` name. Sending live
    /// photos by a URL is currently unsupported.
    @JsonKey(name: 'photo')
    @InputFileConverter()
    required final InputFile photo,

    /// Optional. Caption of the live photo to be sent, 0-1024 characters after
    /// entities parsing
    @JsonKey(name: 'caption') final String? caption,

    /// Optional. Mode for parsing entities in the live photo caption. See
    /// formatting options for more details.
    @JsonKey(name: 'parse_mode') final ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can
    /// be specified instead of parse_mode
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,

    /// Optional. Pass True, if the caption must be shown above the message
    /// media
    @JsonKey(name: 'show_caption_above_media')
    final bool? showCaptionAboveMedia,

    /// Optional. Pass True if the live photo needs to be covered with a spoiler
    /// animation
    @JsonKey(name: 'has_spoiler') final bool? hasSpoiler,
  }) = _InputMediaLivePhoto;

  const InputMediaLivePhoto._();

  @override
  Iterable<InputFile?> getInputFiles() => [media, photo];
}
