// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'ton_wallet_card_sticker.dart';

part 'ton_wallet_card.freezed.dart';
part 'ton_wallet_card.g.dart';

/// The TON wallet card shown on a user's profile.
@freezed
abstract class TonWalletCard with _$TonWalletCard {
  /// Creates a [TonWalletCard].
  const factory TonWalletCard({
    /// Wallet address.
    @JsonKey(name: 'address') required String address,

    /// Wallet balance in the smallest currency units, as a decimal string.
    @JsonKey(name: 'amount') required String amount,

    /// Stickers displayed on the card.
    @JsonKey(name: 'stickers') required List<TonWalletCardSticker> stickers,

    /// Address of the sticker NFT whose colors are used for the background.
    @JsonKey(name: 'background_nft_address') String? backgroundNftAddress,
  }) = _TonWalletCard;

  /// Creates a [TonWalletCard] from JSON.
  factory TonWalletCard.fromJson(Map<String, dynamic> json) =>
      _$TonWalletCardFromJson(json);
}
