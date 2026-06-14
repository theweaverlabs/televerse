// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart' show InputFile;

part 'input_media_link.freezed.dart';
part 'input_media_link.g.dart';

/// Represents an HTTP link to be sent.
@Freezed(fromJson: false, toJson: true)
abstract class InputMediaLink
    with _$InputMediaLink
    implements InputPollOptionMedia {
  /// Creates a new [InputMediaLink] object.
  const factory InputMediaLink({
    /// Type of the media, must be link
    @JsonKey(name: 'type')
    @Default(InputMediaType.link)
    final InputMediaType type,

    /// HTTP URL of the link
    @JsonKey(name: 'url') required final String url,
  }) = _InputMediaLink;

  const InputMediaLink._();

  @override
  Iterable<InputFile?> getInputFiles() => [];
}
