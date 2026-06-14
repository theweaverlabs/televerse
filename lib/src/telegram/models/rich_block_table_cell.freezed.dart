// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rich_block_table_cell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RichBlockTableCell {
  /// Optional. Text in the cell. If omitted, then the cell is invisible.
  @JsonKey(name: 'text')
  @RichTextConverter()
  RichText? get text;

  /// Optional. True, if the cell is a header cell
  @JsonKey(name: 'is_header')
  bool? get isHeader;

  /// Optional. The number of columns the cell spans if it is bigger than 1
  @JsonKey(name: 'colspan')
  int? get colspan;

  /// Optional. The number of rows the cell spans if it is bigger than 1
  @JsonKey(name: 'rowspan')
  int? get rowspan;

  /// Horizontal cell content alignment. Currently, must be one of “left”, “center”, or “right”.
  @JsonKey(name: 'align')
  String get align;

  /// Vertical cell content alignment. Currently, must be one of “top”, “middle”, or “bottom”.
  @JsonKey(name: 'valign')
  String get valign;

  /// Create a copy of RichBlockTableCell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockTableCellCopyWith<RichBlockTableCell> get copyWith =>
      _$RichBlockTableCellCopyWithImpl<RichBlockTableCell>(
        this as RichBlockTableCell,
        _$identity,
      );

  /// Serializes this RichBlockTableCell to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'RichBlockTableCell(text: $text, isHeader: $isHeader, colspan: $colspan, rowspan: $rowspan, align: $align, valign: $valign)';
  }
}

/// @nodoc
abstract mixin class $RichBlockTableCellCopyWith<$Res> {
  factory $RichBlockTableCellCopyWith(
    RichBlockTableCell value,
    $Res Function(RichBlockTableCell) _then,
  ) = _$RichBlockTableCellCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'text') @RichTextConverter() RichText? text,
    @JsonKey(name: 'is_header') bool? isHeader,
    @JsonKey(name: 'colspan') int? colspan,
    @JsonKey(name: 'rowspan') int? rowspan,
    @JsonKey(name: 'align') String align,
    @JsonKey(name: 'valign') String valign,
  });

  $RichTextCopyWith<$Res>? get text;
}

/// @nodoc
class _$RichBlockTableCellCopyWithImpl<$Res>
    implements $RichBlockTableCellCopyWith<$Res> {
  _$RichBlockTableCellCopyWithImpl(this._self, this._then);

  final RichBlockTableCell _self;
  final $Res Function(RichBlockTableCell) _then;

  /// Create a copy of RichBlockTableCell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? isHeader = freezed,
    Object? colspan = freezed,
    Object? rowspan = freezed,
    Object? align = null,
    Object? valign = null,
  }) {
    return _then(
      _self.copyWith(
        text: freezed == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText?,
        isHeader: freezed == isHeader
            ? _self.isHeader
            : isHeader // ignore: cast_nullable_to_non_nullable
                  as bool?,
        colspan: freezed == colspan
            ? _self.colspan
            : colspan // ignore: cast_nullable_to_non_nullable
                  as int?,
        rowspan: freezed == rowspan
            ? _self.rowspan
            : rowspan // ignore: cast_nullable_to_non_nullable
                  as int?,
        align: null == align
            ? _self.align
            : align // ignore: cast_nullable_to_non_nullable
                  as String,
        valign: null == valign
            ? _self.valign
            : valign // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of RichBlockTableCell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res>? get text {
    if (_self.text == null) {
      return null;
    }

    return $RichTextCopyWith<$Res>(_self.text!, (value) {
      return _then(_self.copyWith(text: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RichBlockTableCell].
extension RichBlockTableCellPatterns on RichBlockTableCell {
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
    TResult Function(_RichBlockTableCell value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RichBlockTableCell() when $default != null:
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
    TResult Function(_RichBlockTableCell value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RichBlockTableCell():
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
    TResult? Function(_RichBlockTableCell value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RichBlockTableCell() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RichBlockTableCell implements RichBlockTableCell {
  const _RichBlockTableCell({
    @JsonKey(name: 'text') @RichTextConverter() this.text,
    @JsonKey(name: 'is_header') this.isHeader,
    @JsonKey(name: 'colspan') this.colspan,
    @JsonKey(name: 'rowspan') this.rowspan,
    @JsonKey(name: 'align') required this.align,
    @JsonKey(name: 'valign') required this.valign,
  });
  factory _RichBlockTableCell.fromJson(Map<String, dynamic> json) =>
      _$RichBlockTableCellFromJson(json);

  /// Optional. Text in the cell. If omitted, then the cell is invisible.
  @override
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText? text;

  /// Optional. True, if the cell is a header cell
  @override
  @JsonKey(name: 'is_header')
  final bool? isHeader;

  /// Optional. The number of columns the cell spans if it is bigger than 1
  @override
  @JsonKey(name: 'colspan')
  final int? colspan;

  /// Optional. The number of rows the cell spans if it is bigger than 1
  @override
  @JsonKey(name: 'rowspan')
  final int? rowspan;

  /// Horizontal cell content alignment. Currently, must be one of “left”, “center”, or “right”.
  @override
  @JsonKey(name: 'align')
  final String align;

  /// Vertical cell content alignment. Currently, must be one of “top”, “middle”, or “bottom”.
  @override
  @JsonKey(name: 'valign')
  final String valign;

  /// Create a copy of RichBlockTableCell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RichBlockTableCellCopyWith<_RichBlockTableCell> get copyWith =>
      __$RichBlockTableCellCopyWithImpl<_RichBlockTableCell>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockTableCellToJson(this);
  }

  @override
  String toString() {
    return 'RichBlockTableCell(text: $text, isHeader: $isHeader, colspan: $colspan, rowspan: $rowspan, align: $align, valign: $valign)';
  }
}

/// @nodoc
abstract mixin class _$RichBlockTableCellCopyWith<$Res>
    implements $RichBlockTableCellCopyWith<$Res> {
  factory _$RichBlockTableCellCopyWith(
    _RichBlockTableCell value,
    $Res Function(_RichBlockTableCell) _then,
  ) = __$RichBlockTableCellCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'text') @RichTextConverter() RichText? text,
    @JsonKey(name: 'is_header') bool? isHeader,
    @JsonKey(name: 'colspan') int? colspan,
    @JsonKey(name: 'rowspan') int? rowspan,
    @JsonKey(name: 'align') String align,
    @JsonKey(name: 'valign') String valign,
  });

  @override
  $RichTextCopyWith<$Res>? get text;
}

/// @nodoc
class __$RichBlockTableCellCopyWithImpl<$Res>
    implements _$RichBlockTableCellCopyWith<$Res> {
  __$RichBlockTableCellCopyWithImpl(this._self, this._then);

  final _RichBlockTableCell _self;
  final $Res Function(_RichBlockTableCell) _then;

  /// Create a copy of RichBlockTableCell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = freezed,
    Object? isHeader = freezed,
    Object? colspan = freezed,
    Object? rowspan = freezed,
    Object? align = null,
    Object? valign = null,
  }) {
    return _then(
      _RichBlockTableCell(
        text: freezed == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText?,
        isHeader: freezed == isHeader
            ? _self.isHeader
            : isHeader // ignore: cast_nullable_to_non_nullable
                  as bool?,
        colspan: freezed == colspan
            ? _self.colspan
            : colspan // ignore: cast_nullable_to_non_nullable
                  as int?,
        rowspan: freezed == rowspan
            ? _self.rowspan
            : rowspan // ignore: cast_nullable_to_non_nullable
                  as int?,
        align: null == align
            ? _self.align
            : align // ignore: cast_nullable_to_non_nullable
                  as String,
        valign: null == valign
            ? _self.valign
            : valign // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of RichBlockTableCell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res>? get text {
    if (_self.text == null) {
      return null;
    }

    return $RichTextCopyWith<$Res>(_self.text!, (value) {
      return _then(_self.copyWith(text: value));
    });
  }
}
