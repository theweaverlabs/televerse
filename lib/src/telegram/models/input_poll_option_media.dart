import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/file_provider/file_provider.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart'
    show TeleverseException, TeleverseExceptionType;

/// This object represents the content of a poll option to be sent.
abstract interface class InputPollOptionMedia implements InputFileProvider {}

/// Custom converter for [InputPollOptionMedia] serialization.
class InputPollOptionMediaConverter
    implements JsonConverter<InputPollOptionMedia, Map<String, dynamic>> {
  /// Creates a new instance of the converter.
  const InputPollOptionMediaConverter();

  @override
  InputPollOptionMedia fromJson(Map<String, dynamic> json) {
    throw TeleverseException(
      'fromJson is not supported for InputPollOptionMedia',
      description: 'InputPollOptionMedia is an input-only type.',
      type: TeleverseExceptionType.invalidParameter,
    );
  }

  @override
  Map<String, dynamic> toJson(InputPollOptionMedia data) {
    // Each subclass uses its own Freezed/json_serializable toJson implementation.
    if (data is InputMedia) {
      return data.toJson();
    } else if (data is InputMediaLink) {
      return data.toJson();
    } else if (data is InputMediaLivePhoto) {
      return data.toJson();
    } else if (data is InputMediaLocation) {
      return data.toJson();
    } else if (data is InputMediaSticker) {
      return data.toJson();
    } else if (data is InputMediaVenue) {
      return data.toJson();
    }
    throw TeleverseException(
      'Unknown InputPollOptionMedia implementation',
      description: 'Could not serialize the object to JSON.',
      type: TeleverseExceptionType.invalidParameter,
    );
  }
}
