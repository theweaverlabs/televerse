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
  /// Type of the query, always "data"
  @JsonKey(name: 'type')
  WidgetQueryTypeType get type;

  /// Create a copy of WidgetQueryType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WidgetQueryTypeCopyWith<WidgetQueryType> get copyWith =>
      _$WidgetQueryTypeCopyWithImpl<WidgetQueryType>(
        this as WidgetQueryType,
        _$identity,
      );

  /// Serializes this WidgetQueryType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'WidgetQueryType(type: $type)';
  }
}

/// @nodoc
abstract mixin class $WidgetQueryTypeCopyWith<$Res> {
  factory $WidgetQueryTypeCopyWith(
    WidgetQueryType value,
    $Res Function(WidgetQueryType) _then,
  ) = _$WidgetQueryTypeCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') WidgetQueryTypeType type});
}

/// @nodoc
class _$WidgetQueryTypeCopyWithImpl<$Res>
    implements $WidgetQueryTypeCopyWith<$Res> {
  _$WidgetQueryTypeCopyWithImpl(this._self, this._then);

  final WidgetQueryType _self;
  final $Res Function(WidgetQueryType) _then;

  /// Create a copy of WidgetQueryType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null}) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as WidgetQueryTypeType,
      ),
    );
  }
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
    @JsonKey(name: 'type') this.type = WidgetQueryTypeType.data,
    @JsonKey(name: 'wallet_card') this.walletCard,
  }) : assert(
         type == WidgetQueryTypeType.data,
         'type must be WidgetQueryTypeType.data',
       );
  factory WidgetQueryTypeData.fromJson(Map<String, dynamic> json) =>
      _$WidgetQueryTypeDataFromJson(json);

  /// Type of the query, always "data"
  @override
  @JsonKey(name: 'type')
  final WidgetQueryTypeType type;

  /// Optional. TON wallet card of the user that sent the query, if it was
  /// sent together with the query
  @JsonKey(name: 'wallet_card')
  final TonWalletCard? walletCard;

  /// Create a copy of WidgetQueryType
  /// with the given fields replaced by the non-null parameter values.
  @override
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
    return 'WidgetQueryType.data(type: $type, walletCard: $walletCard)';
  }
}

/// @nodoc
abstract mixin class $WidgetQueryTypeDataCopyWith<$Res>
    implements $WidgetQueryTypeCopyWith<$Res> {
  factory $WidgetQueryTypeDataCopyWith(
    WidgetQueryTypeData value,
    $Res Function(WidgetQueryTypeData) _then,
  ) = _$WidgetQueryTypeDataCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') WidgetQueryTypeType type,
    @JsonKey(name: 'wallet_card') TonWalletCard? walletCard,
  });

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
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? walletCard = freezed}) {
    return _then(
      WidgetQueryTypeData(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as WidgetQueryTypeType,
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
    @JsonKey(name: 'type') this.type = WidgetQueryTypeType.signData,
    @JsonKey(name: 'wallet') required this.wallet,
    @JsonKey(name: 'sign_data') required this.signData,
  }) : assert(
         type == WidgetQueryTypeType.signData,
         'type must be WidgetQueryTypeType.signData',
       );
  factory WidgetQueryTypeSignData.fromJson(Map<String, dynamic> json) =>
      _$WidgetQueryTypeSignDataFromJson(json);

  /// Type of the query, always "sign_data"
  @override
  @JsonKey(name: 'type')
  final WidgetQueryTypeType type;

  /// The wallet that signed the data
  @JsonKey(name: 'wallet')
  final WidgetQueryWallet wallet;

  /// JSON-serialized signed data
  @JsonKey(name: 'sign_data')
  final String signData;

  /// Create a copy of WidgetQueryType
  /// with the given fields replaced by the non-null parameter values.
  @override
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
    return 'WidgetQueryType.signData(type: $type, wallet: $wallet, signData: $signData)';
  }
}

/// @nodoc
abstract mixin class $WidgetQueryTypeSignDataCopyWith<$Res>
    implements $WidgetQueryTypeCopyWith<$Res> {
  factory $WidgetQueryTypeSignDataCopyWith(
    WidgetQueryTypeSignData value,
    $Res Function(WidgetQueryTypeSignData) _then,
  ) = _$WidgetQueryTypeSignDataCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') WidgetQueryTypeType type,
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
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? wallet = null,
    Object? signData = null,
  }) {
    return _then(
      WidgetQueryTypeSignData(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as WidgetQueryTypeType,
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
    @JsonKey(name: 'type') this.type = WidgetQueryTypeType.sentTransaction,
    @JsonKey(name: 'wallet') required this.wallet,
    @JsonKey(name: 'msg_hash') required this.msgHash,
  }) : assert(
         type == WidgetQueryTypeType.sentTransaction,
         'type must be WidgetQueryTypeType.sentTransaction',
       );
  factory WidgetQueryTypeSentTransaction.fromJson(Map<String, dynamic> json) =>
      _$WidgetQueryTypeSentTransactionFromJson(json);

  /// Type of the query, always "sent_transaction"
  @override
  @JsonKey(name: 'type')
  final WidgetQueryTypeType type;

  /// The wallet from which the transaction was sent
  @JsonKey(name: 'wallet')
  final WidgetQueryWallet wallet;

  /// The msg_hash value of the sent transaction
  @JsonKey(name: 'msg_hash')
  final String msgHash;

  /// Create a copy of WidgetQueryType
  /// with the given fields replaced by the non-null parameter values.
  @override
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
    return 'WidgetQueryType.sentTransaction(type: $type, wallet: $wallet, msgHash: $msgHash)';
  }
}

/// @nodoc
abstract mixin class $WidgetQueryTypeSentTransactionCopyWith<$Res>
    implements $WidgetQueryTypeCopyWith<$Res> {
  factory $WidgetQueryTypeSentTransactionCopyWith(
    WidgetQueryTypeSentTransaction value,
    $Res Function(WidgetQueryTypeSentTransaction) _then,
  ) = _$WidgetQueryTypeSentTransactionCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') WidgetQueryTypeType type,
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
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? wallet = null,
    Object? msgHash = null,
  }) {
    return _then(
      WidgetQueryTypeSentTransaction(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as WidgetQueryTypeType,
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
