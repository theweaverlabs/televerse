// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import '../types/chat_type.dart';
import 'abstractions.dart';
import 'chat.dart';
import 'user.dart';
import 'widget_query_type.dart';

part 'widget_query.freezed.dart';
part 'widget_query.g.dart';

/// A query from a widget in a message sent by the bot or via the bot.
@freezed
abstract class WidgetQuery with _$WidgetQuery implements WithUser {
  /// Creates a [WidgetQuery].
  const factory WidgetQuery({
    /// Unique identifier of the query.
    @JsonKey(name: 'id') required String id,

    /// User who sent the query.
    @JsonKey(name: 'from') required User from,

    /// Global identifier for the chat where the message was sent.
    @JsonKey(name: 'chat_instance') required String chatInstance,

    /// Type of the query and its associated wallet data, if any.
    @JsonKey(name: 'type') required WidgetQueryType type,

    /// Data sent by the widget, 1-64 bytes.
    @JsonKey(name: 'data') required String data,

    /// Chat containing the widget message, if the message is not inline.
    @JsonKey(name: 'chat') Chat? chat,

    /// Identifier of the widget message, if the message is not inline.
    @JsonKey(name: 'message_id') int? messageId,

    /// Identifier of the inline message containing the widget.
    @JsonKey(name: 'inline_message_id') String? inlineMessageId,

    /// Type of the chat, for widgets in inline messages.
    @JsonKey(name: 'chat_type') ChatType? chatType,

    /// Identifier of the widget, if it is shared.
    @JsonKey(name: 'widget_id') String? widgetId,
  }) = _WidgetQuery;

  /// Creates a [WidgetQuery] from JSON.
  factory WidgetQuery.fromJson(Map<String, dynamic> json) =>
      _$WidgetQueryFromJson(json);
}
