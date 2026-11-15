// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'ton_wallet_card.dart';
import 'widget_query_wallet.dart';

part 'widget_query_type.freezed.dart';
part 'widget_query_type.g.dart';

/// The type of a query sent by a widget.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class WidgetQueryType with _$WidgetQueryType {
  /// The widget sent data to the bot.
  const factory WidgetQueryType.data({
    /// The sender's TON wallet card, if they shared it with the query.
    @JsonKey(name: 'wallet_card') TonWalletCard? walletCard,
  }) = WidgetQueryTypeData;

  /// The user signed data with a TON wallet.
  const factory WidgetQueryType.signData({
    /// The wallet that signed the data.
    @JsonKey(name: 'wallet') required WidgetQueryWallet wallet,

    /// The signed data as a JSON string.
    @JsonKey(name: 'sign_data') required String signData,
  }) = WidgetQueryTypeSignData;

  /// The user sent a transaction from a TON wallet.
  const factory WidgetQueryType.sentTransaction({
    /// The wallet that sent the transaction.
    @JsonKey(name: 'wallet') required WidgetQueryWallet wallet,

    /// The transaction's message hash.
    @JsonKey(name: 'msg_hash') required String msgHash,
  }) = WidgetQueryTypeSentTransaction;

  /// Creates a [WidgetQueryType] from JSON.
  factory WidgetQueryType.fromJson(Map<String, dynamic> json) =>
      _$WidgetQueryTypeFromJson(json);
}
