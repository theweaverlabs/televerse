// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'widget_query_wallet.freezed.dart';
part 'widget_query_wallet.g.dart';

/// A user's TON wallet as reported in a widget query.
@freezed
abstract class WidgetQueryWallet with _$WidgetQueryWallet {
  /// Creates a [WidgetQueryWallet].
  const factory WidgetQueryWallet({
    /// Wallet address.
    @JsonKey(name: 'address') required String address,

    /// Wallet balance in the smallest currency units, as a decimal string.
    @JsonKey(name: 'amount') required String amount,

    /// Hex-encoded public key, if known.
    @JsonKey(name: 'public_key') String? publicKey,

    /// Base64-encoded StateInit of the wallet contract, if the key is known.
    @JsonKey(name: 'state_init') String? stateInit,
  }) = _WidgetQueryWallet;

  /// Creates a [WidgetQueryWallet] from JSON.
  factory WidgetQueryWallet.fromJson(Map<String, dynamic> json) =>
      _$WidgetQueryWalletFromJson(json);
}
