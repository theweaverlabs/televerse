// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import '../types/widget_query_type_type.dart';
import 'ton_wallet_card.dart';
import 'widget_query_wallet.dart';

part 'widget_query_type.freezed.dart';
part 'widget_query_type.g.dart';

/// Interface to expose the `type` property on [WidgetQueryType].
abstract interface class _WidgetQueryTypeImpl {
  /// Type of the widget query.
  WidgetQueryTypeType get type;
}

/// This object describes the type of a query sent from a widget. Currently, it
/// can be one of:
/// - [WidgetQueryTypeData]
/// - [WidgetQueryTypeSignData]
/// - [WidgetQueryTypeSentTransaction]
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class WidgetQueryType
    with _$WidgetQueryType
    implements _WidgetQueryTypeImpl {
  /// The query contains data for the bot.
  @Assert(
    'type == WidgetQueryTypeType.data',
    'type must be WidgetQueryTypeType.data',
  )
  const factory WidgetQueryType.data({
    /// Type of the query, always "data"
    @JsonKey(name: 'type')
    @Default(WidgetQueryTypeType.data)
    WidgetQueryTypeType type,

    /// Optional. TON wallet card of the user that sent the query, if it was
    /// sent together with the query
    @JsonKey(name: 'wallet_card') TonWalletCard? walletCard,
  }) = WidgetQueryTypeData;

  /// The query contains data signed by a TON wallet of the user. The data is
  /// signed for the domain `bot<bot_id>`.
  @Assert(
    'type == WidgetQueryTypeType.signData',
    'type must be WidgetQueryTypeType.signData',
  )
  const factory WidgetQueryType.signData({
    /// Type of the query, always "sign_data"
    @JsonKey(name: 'type')
    @Default(WidgetQueryTypeType.signData)
    WidgetQueryTypeType type,

    /// The wallet that signed the data
    @JsonKey(name: 'wallet') required WidgetQueryWallet wallet,

    /// JSON-serialized signed data
    @JsonKey(name: 'sign_data') required String signData,
  }) = WidgetQueryTypeSignData;

  /// The query notifies about a transaction sent from a TON wallet of the
  /// user.
  @Assert(
    'type == WidgetQueryTypeType.sentTransaction',
    'type must be WidgetQueryTypeType.sentTransaction',
  )
  const factory WidgetQueryType.sentTransaction({
    /// Type of the query, always "sent_transaction"
    @JsonKey(name: 'type')
    @Default(WidgetQueryTypeType.sentTransaction)
    WidgetQueryTypeType type,

    /// The wallet from which the transaction was sent
    @JsonKey(name: 'wallet') required WidgetQueryWallet wallet,

    /// The msg_hash value of the sent transaction
    @JsonKey(name: 'msg_hash') required String msgHash,
  }) = WidgetQueryTypeSentTransaction;

  /// Creates a [WidgetQueryType] from JSON.
  factory WidgetQueryType.fromJson(Map<String, dynamic> json) =>
      _$WidgetQueryTypeFromJson(json);
}
