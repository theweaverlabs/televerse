// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'abstractions.dart';
import 'user.dart';
import 'widget_query_type.dart';

part 'shared_widget_query.freezed.dart';
part 'shared_widget_query.g.dart';

/// A query from a forwarded message containing a shared widget.
@freezed
abstract class SharedWidgetQuery with _$SharedWidgetQuery implements WithUser {
  /// Creates a [SharedWidgetQuery].
  const factory SharedWidgetQuery({
    /// Unique identifier of the query.
    @JsonKey(name: 'id') required String id,

    /// User who sent the query.
    @JsonKey(name: 'from') required User from,

    /// Type of the query and its associated wallet data, if any.
    @JsonKey(name: 'type') required WidgetQueryType type,

    /// Data sent by the widget, 1-64 bytes.
    @JsonKey(name: 'data') required String data,

    /// Unique identifier of the shared widget.
    @JsonKey(name: 'widget_id') required String widgetId,
  }) = _SharedWidgetQuery;

  /// Creates a [SharedWidgetQuery] from JSON.
  factory SharedWidgetQuery.fromJson(Map<String, dynamic> json) =>
      _$SharedWidgetQueryFromJson(json);
}
