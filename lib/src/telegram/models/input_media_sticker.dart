// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart' show InputFile, InputFileConverter;

part 'input_media_sticker.freezed.dart';
part 'input_media_sticker.g.dart';

/// Represents a sticker file to be sent.
@Freezed(fromJson: false, toJson: true)
abstract class InputMediaSticker
    with _$InputMediaSticker
    implements InputPollOptionMedia {
  /// Creates a new [InputMediaSticker] object.
  const factory InputMediaSticker({
    /// Type of the media, must be sticker
    @JsonKey(name: 'type')
    @Default(InputMediaType.sticker)
    final InputMediaType type,

    /// File to send. Pass a file_id to send a file that exists on the Telegram
    /// servers (recommended), pass an HTTP URL for Telegram to get a .WEBP
    /// sticker from the Internet, or pass “attach://`<file_attach_name>`” to
    /// upload a new .WEBP, .TGS, or .WEBM sticker using multipart/form-data
    /// under `<file_attach_name>` name.
    @JsonKey(name: 'media')
    @InputFileConverter()
    required final InputFile media,

    /// Optional. Emoji associated with the sticker; only for just uploaded
    /// stickers.
    @JsonKey(name: 'emoji') final String? emoji,
  }) = _InputMediaSticker;

  const InputMediaSticker._();

  @override
  Iterable<InputFile?> getInputFiles() => [media];
}
