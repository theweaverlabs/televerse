// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ton_wallet_card_sticker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TonWalletCardSticker {
  /// Position of the sticker on the card.
  @JsonKey(name: 'position')
  AreaPosition get position;

  /// NFT displayed as the sticker.
  @JsonKey(name: 'nft')
  TonNft get nft;

  /// Create a copy of TonWalletCardSticker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TonWalletCardStickerCopyWith<TonWalletCardSticker> get copyWith =>
      _$TonWalletCardStickerCopyWithImpl<TonWalletCardSticker>(
        this as TonWalletCardSticker,
        _$identity,
      );

  /// Serializes this TonWalletCardSticker to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'TonWalletCardSticker(position: $position, nft: $nft)';
  }
}

/// @nodoc
abstract mixin class $TonWalletCardStickerCopyWith<$Res> {
  factory $TonWalletCardStickerCopyWith(
    TonWalletCardSticker value,
    $Res Function(TonWalletCardSticker) _then,
  ) = _$TonWalletCardStickerCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'position') AreaPosition position,
    @JsonKey(name: 'nft') TonNft nft,
  });

  $StoryAreaPositionCopyWith<$Res> get position;
  $TonNftCopyWith<$Res> get nft;
}

/// @nodoc
class _$TonWalletCardStickerCopyWithImpl<$Res>
    implements $TonWalletCardStickerCopyWith<$Res> {
  _$TonWalletCardStickerCopyWithImpl(this._self, this._then);

  final TonWalletCardSticker _self;
  final $Res Function(TonWalletCardSticker) _then;

  /// Create a copy of TonWalletCardSticker
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? position = null, Object? nft = null}) {
    return _then(
      _self.copyWith(
        position: null == position
            ? _self.position
            : position // ignore: cast_nullable_to_non_nullable
                  as AreaPosition,
        nft: null == nft
            ? _self.nft
            : nft // ignore: cast_nullable_to_non_nullable
                  as TonNft,
      ),
    );
  }

  /// Create a copy of TonWalletCardSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoryAreaPositionCopyWith<$Res> get position {
    return $StoryAreaPositionCopyWith<$Res>(_self.position, (value) {
      return _then(_self.copyWith(position: value));
    });
  }

  /// Create a copy of TonWalletCardSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TonNftCopyWith<$Res> get nft {
    return $TonNftCopyWith<$Res>(_self.nft, (value) {
      return _then(_self.copyWith(nft: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TonWalletCardSticker].
extension TonWalletCardStickerPatterns on TonWalletCardSticker {
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
    TResult Function(_TonWalletCardSticker value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TonWalletCardSticker() when $default != null:
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
    TResult Function(_TonWalletCardSticker value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TonWalletCardSticker():
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
    TResult? Function(_TonWalletCardSticker value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TonWalletCardSticker() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TonWalletCardSticker implements TonWalletCardSticker {
  const _TonWalletCardSticker({
    @JsonKey(name: 'position') required this.position,
    @JsonKey(name: 'nft') required this.nft,
  });
  factory _TonWalletCardSticker.fromJson(Map<String, dynamic> json) =>
      _$TonWalletCardStickerFromJson(json);

  /// Position of the sticker on the card.
  @override
  @JsonKey(name: 'position')
  final AreaPosition position;

  /// NFT displayed as the sticker.
  @override
  @JsonKey(name: 'nft')
  final TonNft nft;

  /// Create a copy of TonWalletCardSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TonWalletCardStickerCopyWith<_TonWalletCardSticker> get copyWith =>
      __$TonWalletCardStickerCopyWithImpl<_TonWalletCardSticker>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$TonWalletCardStickerToJson(this);
  }

  @override
  String toString() {
    return 'TonWalletCardSticker(position: $position, nft: $nft)';
  }
}

/// @nodoc
abstract mixin class _$TonWalletCardStickerCopyWith<$Res>
    implements $TonWalletCardStickerCopyWith<$Res> {
  factory _$TonWalletCardStickerCopyWith(
    _TonWalletCardSticker value,
    $Res Function(_TonWalletCardSticker) _then,
  ) = __$TonWalletCardStickerCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'position') AreaPosition position,
    @JsonKey(name: 'nft') TonNft nft,
  });

  @override
  $StoryAreaPositionCopyWith<$Res> get position;
  @override
  $TonNftCopyWith<$Res> get nft;
}

/// @nodoc
class __$TonWalletCardStickerCopyWithImpl<$Res>
    implements _$TonWalletCardStickerCopyWith<$Res> {
  __$TonWalletCardStickerCopyWithImpl(this._self, this._then);

  final _TonWalletCardSticker _self;
  final $Res Function(_TonWalletCardSticker) _then;

  /// Create a copy of TonWalletCardSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? position = null, Object? nft = null}) {
    return _then(
      _TonWalletCardSticker(
        position: null == position
            ? _self.position
            : position // ignore: cast_nullable_to_non_nullable
                  as AreaPosition,
        nft: null == nft
            ? _self.nft
            : nft // ignore: cast_nullable_to_non_nullable
                  as TonNft,
      ),
    );
  }

  /// Create a copy of TonWalletCardSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoryAreaPositionCopyWith<$Res> get position {
    return $StoryAreaPositionCopyWith<$Res>(_self.position, (value) {
      return _then(_self.copyWith(position: value));
    });
  }

  /// Create a copy of TonWalletCardSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TonNftCopyWith<$Res> get nft {
    return $TonNftCopyWith<$Res>(_self.nft, (value) {
      return _then(_self.copyWith(nft: value));
    });
  }
}
