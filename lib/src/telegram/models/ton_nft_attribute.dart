// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ton_nft_attribute.freezed.dart';
part 'ton_nft_attribute.g.dart';

/// An attribute of an NFT on the TON blockchain.
@freezed
abstract class TonNftAttribute with _$TonNftAttribute {
  /// Creates a [TonNftAttribute].
  const factory TonNftAttribute({
    /// Name of the trait.
    @JsonKey(name: 'trait_type') required String traitType,

    /// Value of the trait.
    @JsonKey(name: 'value') required String value,
  }) = _TonNftAttribute;

  /// Creates a [TonNftAttribute] from JSON.
  factory TonNftAttribute.fromJson(Map<String, dynamic> json) =>
      _$TonNftAttributeFromJson(json);
}
