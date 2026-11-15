// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ton_wallet_transfer.freezed.dart';
part 'ton_wallet_transfer.g.dart';

/// Describes a service message about a transfer with a TON wallet.
@freezed
abstract class TonWalletTransfer with _$TonWalletTransfer {
  /// Creates a [TonWalletTransfer].
  const factory TonWalletTransfer({
    /// Transaction identifier. May be empty if the transaction has not been sent.
    @JsonKey(name: 'transaction_id') required String transactionId,

    /// Address of the other wallet in the transfer.
    @JsonKey(name: 'peer_address') required String peerAddress,

    /// Amount in the smallest currency units, as a decimal string.
    /// Negative for outgoing transfers.
    @JsonKey(name: 'amount') required String amount,

    /// Optional. Plaintext comment. Omitted if encrypted.
    @JsonKey(name: 'comment') String? comment,
  }) = _TonWalletTransfer;

  /// Creates a [TonWalletTransfer] from JSON.
  factory TonWalletTransfer.fromJson(Map<String, dynamic> json) =>
      _$TonWalletTransferFromJson(json);
}
