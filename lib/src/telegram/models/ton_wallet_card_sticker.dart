// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'story_area_position.dart';
import 'ton_nft.dart';

part 'ton_wallet_card_sticker.freezed.dart';
part 'ton_wallet_card_sticker.g.dart';

/// A sticker displayed on a TON wallet card.
@freezed
abstract class TonWalletCardSticker with _$TonWalletCardSticker {
  /// Creates a [TonWalletCardSticker].
  const factory TonWalletCardSticker({
    /// Position of the sticker on the card.
    @JsonKey(name: 'position') required AreaPosition position,

    /// NFT displayed as the sticker.
    @JsonKey(name: 'nft') required TonNft nft,
  }) = _TonWalletCardSticker;

  /// Creates a [TonWalletCardSticker] from JSON.
  factory TonWalletCardSticker.fromJson(Map<String, dynamic> json) =>
      _$TonWalletCardStickerFromJson(json);
}
