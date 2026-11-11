// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'ton_nft_attribute.dart';
import 'unique_gift.dart';

part 'ton_nft.freezed.dart';
part 'ton_nft.g.dart';

/// An NFT on the TON blockchain.
@freezed
abstract class TonNft with _$TonNft {
  /// Creates a [TonNft].
  const factory TonNft({
    /// Address of the NFT.
    @JsonKey(name: 'address') required String address,

    /// Index within its collection, as a decimal string.
    @JsonKey(name: 'index') required String index,

    /// Name of the NFT.
    @JsonKey(name: 'name') required String name,

    /// Description of the NFT.
    @JsonKey(name: 'description') required String description,

    /// Address of the collection, if known.
    @JsonKey(name: 'collection_address') String? collectionAddress,

    /// Attributes of the NFT, if provided.
    @JsonKey(name: 'attributes') List<TonNftAttribute>? attributes,

    /// Unique gift corresponding to the NFT, if any.
    @JsonKey(name: 'gift') UniqueGift? gift,
  }) = _TonNft;

  /// Creates a [TonNft] from JSON.
  factory TonNft.fromJson(Map<String, dynamic> json) => _$TonNftFromJson(json);
}
