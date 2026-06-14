// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link.freezed.dart';
part 'link.g.dart';

/// Represents an HTTP link.
@freezed
abstract class Link with _$Link {
  /// Creates a new [Link] object.
  const factory Link({
    /// URL of the link
    @JsonKey(name: 'url') required String url,
  }) = _Link;

  /// Creates a new [Link] object from a JSON [Map].
  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
