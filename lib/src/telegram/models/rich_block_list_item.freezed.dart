// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rich_block_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RichBlockListItem {
  /// Label of the item
  @JsonKey(name: 'label')
  String get label;

  /// The content of the item
  @JsonKey(name: 'blocks')
  List<RichBlock> get blocks;

  /// Optional. True, if the item has a checkbox
  @JsonKey(name: 'has_checkbox')
  bool? get hasCheckbox;

  /// Optional. True, if the item has a checked checkbox
  @JsonKey(name: 'is_checked')
  bool? get isChecked;

  /// Optional. For ordered lists, the numeric value of the item label
  @JsonKey(name: 'value')
  int? get value;

  /// Optional. For ordered lists, the type of the item label
  @JsonKey(name: 'type')
  String? get type;

  /// Create a copy of RichBlockListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockListItemCopyWith<RichBlockListItem> get copyWith =>
      _$RichBlockListItemCopyWithImpl<RichBlockListItem>(
        this as RichBlockListItem,
        _$identity,
      );

  /// Serializes this RichBlockListItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'RichBlockListItem(label: $label, blocks: $blocks, hasCheckbox: $hasCheckbox, isChecked: $isChecked, value: $value, type: $type)';
  }
}

/// @nodoc
abstract mixin class $RichBlockListItemCopyWith<$Res> {
  factory $RichBlockListItemCopyWith(
    RichBlockListItem value,
    $Res Function(RichBlockListItem) _then,
  ) = _$RichBlockListItemCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'label') String label,
    @JsonKey(name: 'blocks') List<RichBlock> blocks,
    @JsonKey(name: 'has_checkbox') bool? hasCheckbox,
    @JsonKey(name: 'is_checked') bool? isChecked,
    @JsonKey(name: 'value') int? value,
    @JsonKey(name: 'type') String? type,
  });
}

/// @nodoc
class _$RichBlockListItemCopyWithImpl<$Res>
    implements $RichBlockListItemCopyWith<$Res> {
  _$RichBlockListItemCopyWithImpl(this._self, this._then);

  final RichBlockListItem _self;
  final $Res Function(RichBlockListItem) _then;

  /// Create a copy of RichBlockListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? blocks = null,
    Object? hasCheckbox = freezed,
    Object? isChecked = freezed,
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(
      _self.copyWith(
        label: null == label
            ? _self.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        blocks: null == blocks
            ? _self.blocks
            : blocks // ignore: cast_nullable_to_non_nullable
                  as List<RichBlock>,
        hasCheckbox: freezed == hasCheckbox
            ? _self.hasCheckbox
            : hasCheckbox // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isChecked: freezed == isChecked
            ? _self.isChecked
            : isChecked // ignore: cast_nullable_to_non_nullable
                  as bool?,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as int?,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [RichBlockListItem].
extension RichBlockListItemPatterns on RichBlockListItem {
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
    TResult Function(_RichBlockListItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RichBlockListItem() when $default != null:
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
    TResult Function(_RichBlockListItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RichBlockListItem():
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
    TResult? Function(_RichBlockListItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RichBlockListItem() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RichBlockListItem implements RichBlockListItem {
  const _RichBlockListItem({
    @JsonKey(name: 'label') required this.label,
    @JsonKey(name: 'blocks') required final List<RichBlock> blocks,
    @JsonKey(name: 'has_checkbox') this.hasCheckbox,
    @JsonKey(name: 'is_checked') this.isChecked,
    @JsonKey(name: 'value') this.value,
    @JsonKey(name: 'type') this.type,
  }) : _blocks = blocks;
  factory _RichBlockListItem.fromJson(Map<String, dynamic> json) =>
      _$RichBlockListItemFromJson(json);

  /// Label of the item
  @override
  @JsonKey(name: 'label')
  final String label;

  /// The content of the item
  final List<RichBlock> _blocks;

  /// The content of the item
  @override
  @JsonKey(name: 'blocks')
  List<RichBlock> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  /// Optional. True, if the item has a checkbox
  @override
  @JsonKey(name: 'has_checkbox')
  final bool? hasCheckbox;

  /// Optional. True, if the item has a checked checkbox
  @override
  @JsonKey(name: 'is_checked')
  final bool? isChecked;

  /// Optional. For ordered lists, the numeric value of the item label
  @override
  @JsonKey(name: 'value')
  final int? value;

  /// Optional. For ordered lists, the type of the item label
  @override
  @JsonKey(name: 'type')
  final String? type;

  /// Create a copy of RichBlockListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RichBlockListItemCopyWith<_RichBlockListItem> get copyWith =>
      __$RichBlockListItemCopyWithImpl<_RichBlockListItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockListItemToJson(this);
  }

  @override
  String toString() {
    return 'RichBlockListItem(label: $label, blocks: $blocks, hasCheckbox: $hasCheckbox, isChecked: $isChecked, value: $value, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$RichBlockListItemCopyWith<$Res>
    implements $RichBlockListItemCopyWith<$Res> {
  factory _$RichBlockListItemCopyWith(
    _RichBlockListItem value,
    $Res Function(_RichBlockListItem) _then,
  ) = __$RichBlockListItemCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'label') String label,
    @JsonKey(name: 'blocks') List<RichBlock> blocks,
    @JsonKey(name: 'has_checkbox') bool? hasCheckbox,
    @JsonKey(name: 'is_checked') bool? isChecked,
    @JsonKey(name: 'value') int? value,
    @JsonKey(name: 'type') String? type,
  });
}

/// @nodoc
class __$RichBlockListItemCopyWithImpl<$Res>
    implements _$RichBlockListItemCopyWith<$Res> {
  __$RichBlockListItemCopyWithImpl(this._self, this._then);

  final _RichBlockListItem _self;
  final $Res Function(_RichBlockListItem) _then;

  /// Create a copy of RichBlockListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? label = null,
    Object? blocks = null,
    Object? hasCheckbox = freezed,
    Object? isChecked = freezed,
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(
      _RichBlockListItem(
        label: null == label
            ? _self.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        blocks: null == blocks
            ? _self._blocks
            : blocks // ignore: cast_nullable_to_non_nullable
                  as List<RichBlock>,
        hasCheckbox: freezed == hasCheckbox
            ? _self.hasCheckbox
            : hasCheckbox // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isChecked: freezed == isChecked
            ? _self.isChecked
            : isChecked // ignore: cast_nullable_to_non_nullable
                  as bool?,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as int?,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
