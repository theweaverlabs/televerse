// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_query_wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WidgetQueryWallet {
  /// Wallet address.
  @JsonKey(name: 'address')
  String get address;

  /// Wallet balance in the smallest currency units, as a decimal string.
  @JsonKey(name: 'amount')
  String get amount;

  /// Hex-encoded public key, if known.
  @JsonKey(name: 'public_key')
  String? get publicKey;

  /// Base64-encoded StateInit of the wallet contract, if the key is known.
  @JsonKey(name: 'state_init')
  String? get stateInit;

  /// Create a copy of WidgetQueryWallet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WidgetQueryWalletCopyWith<WidgetQueryWallet> get copyWith =>
      _$WidgetQueryWalletCopyWithImpl<WidgetQueryWallet>(
        this as WidgetQueryWallet,
        _$identity,
      );

  /// Serializes this WidgetQueryWallet to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'WidgetQueryWallet(address: $address, amount: $amount, publicKey: $publicKey, stateInit: $stateInit)';
  }
}

/// @nodoc
abstract mixin class $WidgetQueryWalletCopyWith<$Res> {
  factory $WidgetQueryWalletCopyWith(
    WidgetQueryWallet value,
    $Res Function(WidgetQueryWallet) _then,
  ) = _$WidgetQueryWalletCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'amount') String amount,
    @JsonKey(name: 'public_key') String? publicKey,
    @JsonKey(name: 'state_init') String? stateInit,
  });
}

/// @nodoc
class _$WidgetQueryWalletCopyWithImpl<$Res>
    implements $WidgetQueryWalletCopyWith<$Res> {
  _$WidgetQueryWalletCopyWithImpl(this._self, this._then);

  final WidgetQueryWallet _self;
  final $Res Function(WidgetQueryWallet) _then;

  /// Create a copy of WidgetQueryWallet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? amount = null,
    Object? publicKey = freezed,
    Object? stateInit = freezed,
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
        publicKey: freezed == publicKey
            ? _self.publicKey
            : publicKey // ignore: cast_nullable_to_non_nullable
                  as String?,
        stateInit: freezed == stateInit
            ? _self.stateInit
            : stateInit // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [WidgetQueryWallet].
extension WidgetQueryWalletPatterns on WidgetQueryWallet {
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
    TResult Function(_WidgetQueryWallet value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WidgetQueryWallet() when $default != null:
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
    TResult Function(_WidgetQueryWallet value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WidgetQueryWallet():
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
    TResult? Function(_WidgetQueryWallet value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WidgetQueryWallet() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WidgetQueryWallet implements WidgetQueryWallet {
  const _WidgetQueryWallet({
    @JsonKey(name: 'address') required this.address,
    @JsonKey(name: 'amount') required this.amount,
    @JsonKey(name: 'public_key') this.publicKey,
    @JsonKey(name: 'state_init') this.stateInit,
  });
  factory _WidgetQueryWallet.fromJson(Map<String, dynamic> json) =>
      _$WidgetQueryWalletFromJson(json);

  /// Wallet address.
  @override
  @JsonKey(name: 'address')
  final String address;

  /// Wallet balance in the smallest currency units, as a decimal string.
  @override
  @JsonKey(name: 'amount')
  final String amount;

  /// Hex-encoded public key, if known.
  @override
  @JsonKey(name: 'public_key')
  final String? publicKey;

  /// Base64-encoded StateInit of the wallet contract, if the key is known.
  @override
  @JsonKey(name: 'state_init')
  final String? stateInit;

  /// Create a copy of WidgetQueryWallet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WidgetQueryWalletCopyWith<_WidgetQueryWallet> get copyWith =>
      __$WidgetQueryWalletCopyWithImpl<_WidgetQueryWallet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WidgetQueryWalletToJson(this);
  }

  @override
  String toString() {
    return 'WidgetQueryWallet(address: $address, amount: $amount, publicKey: $publicKey, stateInit: $stateInit)';
  }
}

/// @nodoc
abstract mixin class _$WidgetQueryWalletCopyWith<$Res>
    implements $WidgetQueryWalletCopyWith<$Res> {
  factory _$WidgetQueryWalletCopyWith(
    _WidgetQueryWallet value,
    $Res Function(_WidgetQueryWallet) _then,
  ) = __$WidgetQueryWalletCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'amount') String amount,
    @JsonKey(name: 'public_key') String? publicKey,
    @JsonKey(name: 'state_init') String? stateInit,
  });
}

/// @nodoc
class __$WidgetQueryWalletCopyWithImpl<$Res>
    implements _$WidgetQueryWalletCopyWith<$Res> {
  __$WidgetQueryWalletCopyWithImpl(this._self, this._then);

  final _WidgetQueryWallet _self;
  final $Res Function(_WidgetQueryWallet) _then;

  /// Create a copy of WidgetQueryWallet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? amount = null,
    Object? publicKey = freezed,
    Object? stateInit = freezed,
  }) {
    return _then(
      _WidgetQueryWallet(
        address: null == address
            ? _self.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _self.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as String,
        publicKey: freezed == publicKey
            ? _self.publicKey
            : publicKey // ignore: cast_nullable_to_non_nullable
                  as String?,
        stateInit: freezed == stateInit
            ? _self.stateInit
            : stateInit // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
