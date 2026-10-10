import 'package:freezed_annotation/freezed_annotation.dart';

/// This enum represents the type of a clickable area on a story.
@JsonEnum(fieldRename: FieldRename.snake)
enum StyleType {
  /// Danger red color
  @JsonValue('danger')
  danger,

  /// Success green color
  @JsonValue('success')
  success,

  /// Primary blue color
  @JsonValue('primary')
  primary,

  /// The button is shown as a regular link without borders. Allowed only for
  /// callback buttons in a RichMessageButton.
  ///
  /// Since: Bot API 10.3
  @JsonValue('link')
  link,
}
