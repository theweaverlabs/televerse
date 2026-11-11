// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ton_wallet_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TonWalletTransfer {
  /// Transaction identifier. May be empty if the transaction has not been sent.
  @JsonKey(name: 'transaction_id')
  String get transactionId;

  /// Address of the other wallet in the transfer.
  @JsonKey(name: 'peer_address')
  String get peerAddress;

  /// Amount in the smallest currency units, as a decimal string.
  /// Negative for outgoing transfers.
  @JsonKey(name: 'amount')
  String get amount;

  /// Optional. Plaintext comment. Omitted if encrypted.
  @JsonKey(name: 'comment')
  String? get comment;

  /// Create a copy of TonWalletTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TonWalletTransferCopyWith<TonWalletTransfer> get copyWith =>
      _$TonWalletTransferCopyWithImpl<TonWalletTransfer>(
        this as TonWalletTransfer,
        _$identity,
      );

  /// Serializes this TonWalletTransfer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'TonWalletTransfer(transactionId: $transactionId, peerAddress: $peerAddress, amount: $amount, comment: $comment)';
  }
}

/// @nodoc
abstract mixin class $TonWalletTransferCopyWith<$Res> {
  factory $TonWalletTransferCopyWith(
    TonWalletTransfer value,
    $Res Function(TonWalletTransfer) _then,
  ) = _$TonWalletTransferCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'transaction_id') String transactionId,
    @JsonKey(name: 'peer_address') String peerAddress,
    @JsonKey(name: 'amount') String amount,
    @JsonKey(name: 'comment') String? comment,
  });
}

/// @nodoc
class _$TonWalletTransferCopyWithImpl<$Res>
    implements $TonWalletTransferCopyWith<$Res> {
  _$TonWalletTransferCopyWithImpl(this._self, this._then);

  final TonWalletTransfer _self;
  final $Res Function(TonWalletTransfer) _then;

  /// Create a copy of TonWalletTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? peerAddress = null,
    Object? amount = null,
    Object? comment = freezed,
  }) {
    return _then(
      _self.copyWith(
        transactionId: null == transactionId
            ? _self.transactionId
            : transactionId // ignore: cast_nullable_to_non_nullable
                  as String,
        peerAddress: null == peerAddress
            ? _self.peerAddress
            : peerAddress // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _self.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as String,
        comment: freezed == comment
            ? _self.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [TonWalletTransfer].
extension TonWalletTransferPatterns on TonWalletTransfer {
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
    TResult Function(_TonWalletTransfer value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TonWalletTransfer() when $default != null:
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
    TResult Function(_TonWalletTransfer value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TonWalletTransfer():
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
    TResult? Function(_TonWalletTransfer value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TonWalletTransfer() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TonWalletTransfer implements TonWalletTransfer {
  const _TonWalletTransfer({
    @JsonKey(name: 'transaction_id') required this.transactionId,
    @JsonKey(name: 'peer_address') required this.peerAddress,
    @JsonKey(name: 'amount') required this.amount,
    @JsonKey(name: 'comment') this.comment,
  });
  factory _TonWalletTransfer.fromJson(Map<String, dynamic> json) =>
      _$TonWalletTransferFromJson(json);

  /// Transaction identifier. May be empty if the transaction has not been sent.
  @override
  @JsonKey(name: 'transaction_id')
  final String transactionId;

  /// Address of the other wallet in the transfer.
  @override
  @JsonKey(name: 'peer_address')
  final String peerAddress;

  /// Amount in the smallest currency units, as a decimal string.
  /// Negative for outgoing transfers.
  @override
  @JsonKey(name: 'amount')
  final String amount;

  /// Optional. Plaintext comment. Omitted if encrypted.
  @override
  @JsonKey(name: 'comment')
  final String? comment;

  /// Create a copy of TonWalletTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TonWalletTransferCopyWith<_TonWalletTransfer> get copyWith =>
      __$TonWalletTransferCopyWithImpl<_TonWalletTransfer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TonWalletTransferToJson(this);
  }

  @override
  String toString() {
    return 'TonWalletTransfer(transactionId: $transactionId, peerAddress: $peerAddress, amount: $amount, comment: $comment)';
  }
}

/// @nodoc
abstract mixin class _$TonWalletTransferCopyWith<$Res>
    implements $TonWalletTransferCopyWith<$Res> {
  factory _$TonWalletTransferCopyWith(
    _TonWalletTransfer value,
    $Res Function(_TonWalletTransfer) _then,
  ) = __$TonWalletTransferCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'transaction_id') String transactionId,
    @JsonKey(name: 'peer_address') String peerAddress,
    @JsonKey(name: 'amount') String amount,
    @JsonKey(name: 'comment') String? comment,
  });
}

/// @nodoc
class __$TonWalletTransferCopyWithImpl<$Res>
    implements _$TonWalletTransferCopyWith<$Res> {
  __$TonWalletTransferCopyWithImpl(this._self, this._then);

  final _TonWalletTransfer _self;
  final $Res Function(_TonWalletTransfer) _then;

  /// Create a copy of TonWalletTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? transactionId = null,
    Object? peerAddress = null,
    Object? amount = null,
    Object? comment = freezed,
  }) {
    return _then(
      _TonWalletTransfer(
        transactionId: null == transactionId
            ? _self.transactionId
            : transactionId // ignore: cast_nullable_to_non_nullable
                  as String,
        peerAddress: null == peerAddress
            ? _self.peerAddress
            : peerAddress // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _self.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as String,
        comment: freezed == comment
            ? _self.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
