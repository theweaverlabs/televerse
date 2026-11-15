import 'package:freezed_annotation/freezed_annotation.dart';

/// The type of a `WidgetQueryType`.
@JsonEnum(fieldRename: FieldRename.snake)
enum WidgetQueryTypeType {
  /// The query contains data for the bot.
  @JsonValue('data')
  data,

  /// The query contains data signed by a TON wallet of the user.
  @JsonValue('sign_data')
  signData,

  /// The query notifies about a transaction sent from a TON wallet of the user.
  @JsonValue('sent_transaction')
  sentTransaction,
}
