// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ton_wallet_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TonWalletCard {
  /// Wallet address.
  @JsonKey(name: 'address')
  String get address;

  /// Wallet balance in the smallest currency units, as a decimal string.
  @JsonKey(name: 'amount')
  String get amount;

  /// Stickers displayed on the card.
  @JsonKey(name: 'stickers')
  List<TonWalletCardSticker> get stickers;

  /// Address of the sticker NFT whose colors are used for the background.
  @JsonKey(name: 'background_nft_address')
  String? get backgroundNftAddress;

  /// Create a copy of TonWalletCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TonWalletCardCopyWith<TonWalletCard> get copyWith =>
      _$TonWalletCardCopyWithImpl<TonWalletCard>(
        this as TonWalletCard,
        _$identity,
      );

  /// Serializes this TonWalletCard to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'TonWalletCard(address: $address, amount: $amount, stickers: $stickers, backgroundNftAddress: $backgroundNftAddress)';
  }
}

/// @nodoc
abstract mixin class $TonWalletCardCopyWith<$Res> {
  factory $TonWalletCardCopyWith(
    TonWalletCard value,
    $Res Function(TonWalletCard) _then,
  ) = _$TonWalletCardCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'amount') String amount,
    @JsonKey(name: 'stickers') List<TonWalletCardSticker> stickers,
    @JsonKey(name: 'background_nft_address') String? backgroundNftAddress,
  });
}

/// @nodoc
class _$TonWalletCardCopyWithImpl<$Res>
    implements $TonWalletCardCopyWith<$Res> {
  _$TonWalletCardCopyWithImpl(this._self, this._then);

  final TonWalletCard _self;
  final $Res Function(TonWalletCard) _then;

  /// Create a copy of TonWalletCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? amount = null,
    Object? stickers = null,
    Object? backgroundNftAddress = freezed,
  }) {
    return _then(
      _self.copyWith(
        address: null == address
            ? _self.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _self.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as String,
        stickers: null == stickers
            ? _self.stickers
            : stickers // ignore: cast_nullable_to_non_nullable
                  as List<TonWalletCardSticker>,
        backgroundNftAddress: freezed == backgroundNftAddress
            ? _self.backgroundNftAddress
            : backgroundNftAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [TonWalletCard].
extension TonWalletCardPatterns on TonWalletCard {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TonWalletCard value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TonWalletCard() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TonWalletCard value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TonWalletCard():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TonWalletCard value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TonWalletCard() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TonWalletCard implements TonWalletCard {
  const _TonWalletCard({
    @JsonKey(name: 'address') required this.address,
    @JsonKey(name: 'amount') required this.amount,
    @JsonKey(name: 'stickers')
    required final List<TonWalletCardSticker> stickers,
    @JsonKey(name: 'background_nft_address') this.backgroundNftAddress,
  }) : _stickers = stickers;
  factory _TonWalletCard.fromJson(Map<String, dynamic> json) =>
      _$TonWalletCardFromJson(json);

  /// Wallet address.
  @override
  @JsonKey(name: 'address')
  final String address;

  /// Wallet balance in the smallest currency units, as a decimal string.
  @override
  @JsonKey(name: 'amount')
  final String amount;

  /// Stickers displayed on the card.
  final List<TonWalletCardSticker> _stickers;

  /// Stickers displayed on the card.
  @override
  @JsonKey(name: 'stickers')
  List<TonWalletCardSticker> get stickers {
    if (_stickers is EqualUnmodifiableListView) return _stickers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stickers);
  }

  /// Address of the sticker NFT whose colors are used for the background.
  @override
  @JsonKey(name: 'background_nft_address')
  final String? backgroundNftAddress;

  /// Create a copy of TonWalletCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TonWalletCardCopyWith<_TonWalletCard> get copyWith =>
      __$TonWalletCardCopyWithImpl<_TonWalletCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TonWalletCardToJson(this);
  }

  @override
  String toString() {
    return 'TonWalletCard(address: $address, amount: $amount, stickers: $stickers, backgroundNftAddress: $backgroundNftAddress)';
  }
}

/// @nodoc
abstract mixin class _$TonWalletCardCopyWith<$Res>
    implements $TonWalletCardCopyWith<$Res> {
  factory _$TonWalletCardCopyWith(
    _TonWalletCard value,
    $Res Function(_TonWalletCard) _then,
  ) = __$TonWalletCardCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'amount') String amount,
    @JsonKey(name: 'stickers') List<TonWalletCardSticker> stickers,
    @JsonKey(name: 'background_nft_address') String? backgroundNftAddress,
  });
}

/// @nodoc
class __$TonWalletCardCopyWithImpl<$Res>
    implements _$TonWalletCardCopyWith<$Res> {
  __$TonWalletCardCopyWithImpl(this._self, this._then);

  final _TonWalletCard _self;
  final $Res Function(_TonWalletCard) _then;

  /// Create a copy of TonWalletCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? amount = null,
    Object? stickers = null,
    Object? backgroundNftAddress = freezed,
  }) {
    return _then(
      _TonWalletCard(
        address: null == address
            ? _self.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _self.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as String,
        stickers: null == stickers
            ? _self._stickers
            : stickers // ignore: cast_nullable_to_non_nullable
                  as List<TonWalletCardSticker>,
        backgroundNftAddress: freezed == backgroundNftAddress
            ? _self.backgroundNftAddress
            : backgroundNftAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
