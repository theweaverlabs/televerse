// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ton_nft.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TonNft {
  /// Address of the NFT.
  @JsonKey(name: 'address')
  String get address;

  /// Index within its collection, as a decimal string.
  @JsonKey(name: 'index')
  String get index;

  /// Name of the NFT.
  @JsonKey(name: 'name')
  String get name;

  /// Description of the NFT.
  @JsonKey(name: 'description')
  String get description;

  /// Address of the collection, if known.
  @JsonKey(name: 'collection_address')
  String? get collectionAddress;

  /// Attributes of the NFT, if provided.
  @JsonKey(name: 'attributes')
  List<TonNftAttribute>? get attributes;

  /// Unique gift corresponding to the NFT, if any.
  @JsonKey(name: 'gift')
  UniqueGift? get gift;

  /// Create a copy of TonNft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TonNftCopyWith<TonNft> get copyWith =>
      _$TonNftCopyWithImpl<TonNft>(this as TonNft, _$identity);

  /// Serializes this TonNft to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'TonNft(address: $address, index: $index, name: $name, description: $description, collectionAddress: $collectionAddress, attributes: $attributes, gift: $gift)';
  }
}

/// @nodoc
abstract mixin class $TonNftCopyWith<$Res> {
  factory $TonNftCopyWith(TonNft value, $Res Function(TonNft) _then) =
      _$TonNftCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'index') String index,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'description') String description,
    @JsonKey(name: 'collection_address') String? collectionAddress,
    @JsonKey(name: 'attributes') List<TonNftAttribute>? attributes,
    @JsonKey(name: 'gift') UniqueGift? gift,
  });

  $UniqueGiftCopyWith<$Res>? get gift;
}

/// @nodoc
class _$TonNftCopyWithImpl<$Res> implements $TonNftCopyWith<$Res> {
  _$TonNftCopyWithImpl(this._self, this._then);

  final TonNft _self;
  final $Res Function(TonNft) _then;

  /// Create a copy of TonNft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? index = null,
    Object? name = null,
    Object? description = null,
    Object? collectionAddress = freezed,
    Object? attributes = freezed,
    Object? gift = freezed,
  }) {
    return _then(
      _self.copyWith(
        address: null == address
            ? _self.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        index: null == index
            ? _self.index
            : index // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        collectionAddress: freezed == collectionAddress
            ? _self.collectionAddress
            : collectionAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        attributes: freezed == attributes
            ? _self.attributes
            : attributes // ignore: cast_nullable_to_non_nullable
                  as List<TonNftAttribute>?,
        gift: freezed == gift
            ? _self.gift
            : gift // ignore: cast_nullable_to_non_nullable
                  as UniqueGift?,
      ),
    );
  }

  /// Create a copy of TonNft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftCopyWith<$Res>? get gift {
    if (_self.gift == null) {
      return null;
    }

    return $UniqueGiftCopyWith<$Res>(_self.gift!, (value) {
      return _then(_self.copyWith(gift: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TonNft].
extension TonNftPatterns on TonNft {
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
    TResult Function(_TonNft value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TonNft() when $default != null:
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
    TResult Function(_TonNft value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TonNft():
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
    TResult? Function(_TonNft value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TonNft() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TonNft implements TonNft {
  const _TonNft({
    @JsonKey(name: 'address') required this.address,
    @JsonKey(name: 'index') required this.index,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'description') required this.description,
    @JsonKey(name: 'collection_address') this.collectionAddress,
    @JsonKey(name: 'attributes') final List<TonNftAttribute>? attributes,
    @JsonKey(name: 'gift') this.gift,
  }) : _attributes = attributes;
  factory _TonNft.fromJson(Map<String, dynamic> json) => _$TonNftFromJson(json);

  /// Address of the NFT.
  @override
  @JsonKey(name: 'address')
  final String address;

  /// Index within its collection, as a decimal string.
  @override
  @JsonKey(name: 'index')
  final String index;

  /// Name of the NFT.
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Description of the NFT.
  @override
  @JsonKey(name: 'description')
  final String description;

  /// Address of the collection, if known.
  @override
  @JsonKey(name: 'collection_address')
  final String? collectionAddress;

  /// Attributes of the NFT, if provided.
  final List<TonNftAttribute>? _attributes;

  /// Attributes of the NFT, if provided.
  @override
  @JsonKey(name: 'attributes')
  List<TonNftAttribute>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Unique gift corresponding to the NFT, if any.
  @override
  @JsonKey(name: 'gift')
  final UniqueGift? gift;

  /// Create a copy of TonNft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TonNftCopyWith<_TonNft> get copyWith =>
      __$TonNftCopyWithImpl<_TonNft>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TonNftToJson(this);
  }

  @override
  String toString() {
    return 'TonNft(address: $address, index: $index, name: $name, description: $description, collectionAddress: $collectionAddress, attributes: $attributes, gift: $gift)';
  }
}

/// @nodoc
abstract mixin class _$TonNftCopyWith<$Res> implements $TonNftCopyWith<$Res> {
  factory _$TonNftCopyWith(_TonNft value, $Res Function(_TonNft) _then) =
      __$TonNftCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'index') String index,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'description') String description,
    @JsonKey(name: 'collection_address') String? collectionAddress,
    @JsonKey(name: 'attributes') List<TonNftAttribute>? attributes,
    @JsonKey(name: 'gift') UniqueGift? gift,
  });

  @override
  $UniqueGiftCopyWith<$Res>? get gift;
}

/// @nodoc
class __$TonNftCopyWithImpl<$Res> implements _$TonNftCopyWith<$Res> {
  __$TonNftCopyWithImpl(this._self, this._then);

  final _TonNft _self;
  final $Res Function(_TonNft) _then;

  /// Create a copy of TonNft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? index = null,
    Object? name = null,
    Object? description = null,
    Object? collectionAddress = freezed,
    Object? attributes = freezed,
    Object? gift = freezed,
  }) {
    return _then(
      _TonNft(
        address: null == address
            ? _self.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        index: null == index
            ? _self.index
            : index // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        collectionAddress: freezed == collectionAddress
            ? _self.collectionAddress
            : collectionAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        attributes: freezed == attributes
            ? _self._attributes
            : attributes // ignore: cast_nullable_to_non_nullable
                  as List<TonNftAttribute>?,
        gift: freezed == gift
            ? _self.gift
            : gift // ignore: cast_nullable_to_non_nullable
                  as UniqueGift?,
      ),
    );
  }

  /// Create a copy of TonNft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftCopyWith<$Res>? get gift {
    if (_self.gift == null) {
      return null;
    }

    return $UniqueGiftCopyWith<$Res>(_self.gift!, (value) {
      return _then(_self.copyWith(gift: value));
    });
  }
}
