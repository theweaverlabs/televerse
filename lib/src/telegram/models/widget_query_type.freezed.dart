// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_query_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WidgetQueryType _$WidgetQueryTypeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'data':
      return WidgetQueryTypeData.fromJson(json);
    case 'sign_data':
      return WidgetQueryTypeSignData.fromJson(json);
    case 'sent_transaction':
      return WidgetQueryTypeSentTransaction.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'type',
        'WidgetQueryType',
        'Invalid union type "${json['type']}"!',
      );
  }
}

/// @nodoc
mixin _$WidgetQueryType {
  /// Serializes this WidgetQueryType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'WidgetQueryType()';
  }
}

/// @nodoc
class $WidgetQueryTypeCopyWith<$Res> {
  $WidgetQueryTypeCopyWith(
    WidgetQueryType _,
    $Res Function(WidgetQueryType) __,
  );
}

/// Adds pattern-matching-related methods to [WidgetQueryType].
extension WidgetQueryTypePatterns on WidgetQueryType {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WidgetQueryTypeData value)? data,
    TResult Function(WidgetQueryTypeSignData value)? signData,
    TResult Function(WidgetQueryTypeSentTransaction value)? sentTransaction,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case WidgetQueryTypeData() when data != null:
        return data(_that);
      case WidgetQueryTypeSignData() when signData != null:
        return signData(_that);
      case WidgetQueryTypeSentTransaction() when sentTransaction != null:
        return sentTransaction(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(WidgetQueryTypeData value) data,
    required TResult Function(WidgetQueryTypeSignData value) signData,
    required TResult Function(WidgetQueryTypeSentTransaction value)
    sentTransaction,
  }) {
    final _that = this;
    switch (_that) {
      case WidgetQueryTypeData():
        return data(_that);
      case WidgetQueryTypeSignData():
        return signData(_that);
      case WidgetQueryTypeSentTransaction():
        return sentTransaction(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WidgetQueryTypeData value)? data,
    TResult? Function(WidgetQueryTypeSignData value)? signData,
    TResult? Function(WidgetQueryTypeSentTransaction value)? sentTransaction,
  }) {
    final _that = this;
    switch (_that) {
      case WidgetQueryTypeData() when data != null:
        return data(_that);
      case WidgetQueryTypeSignData() when signData != null:
        return signData(_that);
      case WidgetQueryTypeSentTransaction() when sentTransaction != null:
        return sentTransaction(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class WidgetQueryTypeData implements WidgetQueryType {
  const WidgetQueryTypeData({
    @JsonKey(name: 'wallet_card') this.walletCard,
    final String? $type,
  }) : $type = $type ?? 'data';
  factory WidgetQueryTypeData.fromJson(Map<String, dynamic> json) =>
      _$WidgetQueryTypeDataFromJson(json);

  /// The sender's TON wallet card, if they shared it with the query.
  @JsonKey(name: 'wallet_card')
  final TonWalletCard? walletCard;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of WidgetQueryType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WidgetQueryTypeDataCopyWith<WidgetQueryTypeData> get copyWith =>
      _$WidgetQueryTypeDataCopyWithImpl<WidgetQueryTypeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WidgetQueryTypeDataToJson(this);
  }

  @override
  String toString() {
    return 'WidgetQueryType.data(walletCard: $walletCard)';
  }
}

/// @nodoc
abstract mixin class $WidgetQueryTypeDataCopyWith<$Res>
    implements $WidgetQueryTypeCopyWith<$Res> {
  factory $WidgetQueryTypeDataCopyWith(
    WidgetQueryTypeData value,
    $Res Function(WidgetQueryTypeData) _then,
  ) = _$WidgetQueryTypeDataCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'wallet_card') TonWalletCard? walletCard});

  $TonWalletCardCopyWith<$Res>? get walletCard;
}

/// @nodoc
class _$WidgetQueryTypeDataCopyWithImpl<$Res>
    implements $WidgetQueryTypeDataCopyWith<$Res> {
  _$WidgetQueryTypeDataCopyWithImpl(this._self, this._then);

  final WidgetQueryTypeData _self;
  final $Res Function(WidgetQueryTypeData) _then;

  /// Create a copy of WidgetQueryType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? walletCard = freezed}) {
    return _then(
      WidgetQueryTypeData(
        walletCard: freezed == walletCard
            ? _self.walletCard
            : walletCard // ignore: cast_nullable_to_non_nullable
                  as TonWalletCard?,
      ),
    );
  }

  /// Create a copy of WidgetQueryType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TonWalletCardCopyWith<$Res>? get walletCard {
    if (_self.walletCard == null) {
      return null;
    }

    return $TonWalletCardCopyWith<$Res>(_self.walletCard!, (value) {
      return _then(_self.copyWith(walletCard: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class WidgetQueryTypeSignData implements WidgetQueryType {
  const WidgetQueryTypeSignData({
    @JsonKey(name: 'wallet') required this.wallet,
    @JsonKey(name: 'sign_data') required this.signData,
    final String? $type,
  }) : $type = $type ?? 'sign_data';
  factory WidgetQueryTypeSignData.fromJson(Map<String, dynamic> json) =>
      _$WidgetQueryTypeSignDataFromJson(json);

  /// The wallet that signed the data.
  @JsonKey(name: 'wallet')
  final WidgetQueryWallet wallet;

  /// The signed data as a JSON string.
  @JsonKey(name: 'sign_data')
  final String signData;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of WidgetQueryType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WidgetQueryTypeSignDataCopyWith<WidgetQueryTypeSignData> get copyWith =>
      _$WidgetQueryTypeSignDataCopyWithImpl<WidgetQueryTypeSignData>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$WidgetQueryTypeSignDataToJson(this);
  }

  @override
  String toString() {
    return 'WidgetQueryType.signData(wallet: $wallet, signData: $signData)';
  }
}

/// @nodoc
abstract mixin class $WidgetQueryTypeSignDataCopyWith<$Res>
    implements $WidgetQueryTypeCopyWith<$Res> {
  factory $WidgetQueryTypeSignDataCopyWith(
    WidgetQueryTypeSignData value,
    $Res Function(WidgetQueryTypeSignData) _then,
  ) = _$WidgetQueryTypeSignDataCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'wallet') WidgetQueryWallet wallet,
    @JsonKey(name: 'sign_data') String signData,
  });

  $WidgetQueryWalletCopyWith<$Res> get wallet;
}

/// @nodoc
class _$WidgetQueryTypeSignDataCopyWithImpl<$Res>
    implements $WidgetQueryTypeSignDataCopyWith<$Res> {
  _$WidgetQueryTypeSignDataCopyWithImpl(this._self, this._then);

  final WidgetQueryTypeSignData _self;
  final $Res Function(WidgetQueryTypeSignData) _then;

  /// Create a copy of WidgetQueryType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? wallet = null, Object? signData = null}) {
    return _then(
      WidgetQueryTypeSignData(
        wallet: null == wallet
            ? _self.wallet
            : wallet // ignore: cast_nullable_to_non_nullable
                  as WidgetQueryWallet,
        signData: null == signData
            ? _self.signData
            : signData // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of WidgetQueryType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WidgetQueryWalletCopyWith<$Res> get wallet {
    return $WidgetQueryWalletCopyWith<$Res>(_self.wallet, (value) {
      return _then(_self.copyWith(wallet: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class WidgetQueryTypeSentTransaction implements WidgetQueryType {
  const WidgetQueryTypeSentTransaction({
    @JsonKey(name: 'wallet') required this.wallet,
    @JsonKey(name: 'msg_hash') required this.msgHash,
    final String? $type,
  }) : $type = $type ?? 'sent_transaction';
  factory WidgetQueryTypeSentTransaction.fromJson(Map<String, dynamic> json) =>
      _$WidgetQueryTypeSentTransactionFromJson(json);

  /// The wallet that sent the transaction.
  @JsonKey(name: 'wallet')
  final WidgetQueryWallet wallet;

  /// The transaction's message hash.
  @JsonKey(name: 'msg_hash')
  final String msgHash;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of WidgetQueryType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WidgetQueryTypeSentTransactionCopyWith<WidgetQueryTypeSentTransaction>
  get copyWith =>
      _$WidgetQueryTypeSentTransactionCopyWithImpl<
        WidgetQueryTypeSentTransaction
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WidgetQueryTypeSentTransactionToJson(this);
  }

  @override
  String toString() {
    return 'WidgetQueryType.sentTransaction(wallet: $wallet, msgHash: $msgHash)';
  }
}

/// @nodoc
abstract mixin class $WidgetQueryTypeSentTransactionCopyWith<$Res>
    implements $WidgetQueryTypeCopyWith<$Res> {
  factory $WidgetQueryTypeSentTransactionCopyWith(
    WidgetQueryTypeSentTransaction value,
    $Res Function(WidgetQueryTypeSentTransaction) _then,
  ) = _$WidgetQueryTypeSentTransactionCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'wallet') WidgetQueryWallet wallet,
    @JsonKey(name: 'msg_hash') String msgHash,
  });

  $WidgetQueryWalletCopyWith<$Res> get wallet;
}

/// @nodoc
class _$WidgetQueryTypeSentTransactionCopyWithImpl<$Res>
    implements $WidgetQueryTypeSentTransactionCopyWith<$Res> {
  _$WidgetQueryTypeSentTransactionCopyWithImpl(this._self, this._then);

  final WidgetQueryTypeSentTransaction _self;
  final $Res Function(WidgetQueryTypeSentTransaction) _then;

  /// Create a copy of WidgetQueryType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? wallet = null, Object? msgHash = null}) {
    return _then(
      WidgetQueryTypeSentTransaction(
        wallet: null == wallet
            ? _self.wallet
            : wallet // ignore: cast_nullable_to_non_nullable
                  as WidgetQueryWallet,
        msgHash: null == msgHash
            ? _self.msgHash
            : msgHash // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of WidgetQueryType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WidgetQueryWalletCopyWith<$Res> get wallet {
    return $WidgetQueryWalletCopyWith<$Res>(_self.wallet, (value) {
      return _then(_self.copyWith(wallet: value));
    });
  }
}
