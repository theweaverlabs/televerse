// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_widget_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SharedWidgetQuery {
  /// Unique identifier of the query.
  @JsonKey(name: 'id')
  String get id;

  /// User who sent the query.
  @JsonKey(name: 'from')
  User get from;

  /// Type of the query and its associated wallet data, if any.
  @JsonKey(name: 'type')
  WidgetQueryType get type;

  /// Data sent by the widget, 1-64 bytes.
  @JsonKey(name: 'data')
  String get data;

  /// Unique identifier of the shared widget.
  @JsonKey(name: 'widget_id')
  String get widgetId;

  /// Create a copy of SharedWidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SharedWidgetQueryCopyWith<SharedWidgetQuery> get copyWith =>
      _$SharedWidgetQueryCopyWithImpl<SharedWidgetQuery>(
        this as SharedWidgetQuery,
        _$identity,
      );

  /// Serializes this SharedWidgetQuery to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SharedWidgetQuery(id: $id, from: $from, type: $type, data: $data, widgetId: $widgetId)';
  }
}

/// @nodoc
abstract mixin class $SharedWidgetQueryCopyWith<$Res> {
  factory $SharedWidgetQueryCopyWith(
    SharedWidgetQuery value,
    $Res Function(SharedWidgetQuery) _then,
  ) = _$SharedWidgetQueryCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'from') User from,
    @JsonKey(name: 'type') WidgetQueryType type,
    @JsonKey(name: 'data') String data,
    @JsonKey(name: 'widget_id') String widgetId,
  });

  $UserCopyWith<$Res> get from;
  $WidgetQueryTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$SharedWidgetQueryCopyWithImpl<$Res>
    implements $SharedWidgetQueryCopyWith<$Res> {
  _$SharedWidgetQueryCopyWithImpl(this._self, this._then);

  final SharedWidgetQuery _self;
  final $Res Function(SharedWidgetQuery) _then;

  /// Create a copy of SharedWidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? type = null,
    Object? data = null,
    Object? widgetId = null,
  }) {
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        from: null == from
            ? _self.from
            : from // ignore: cast_nullable_to_non_nullable
                  as User,
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as WidgetQueryType,
        data: null == data
            ? _self.data
            : data // ignore: cast_nullable_to_non_nullable
                  as String,
        widgetId: null == widgetId
            ? _self.widgetId
            : widgetId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of SharedWidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of SharedWidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WidgetQueryTypeCopyWith<$Res> get type {
    return $WidgetQueryTypeCopyWith<$Res>(_self.type, (value) {
      return _then(_self.copyWith(type: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SharedWidgetQuery].
extension SharedWidgetQueryPatterns on SharedWidgetQuery {
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
    TResult Function(_SharedWidgetQuery value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SharedWidgetQuery() when $default != null:
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
    TResult Function(_SharedWidgetQuery value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SharedWidgetQuery():
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
    TResult? Function(_SharedWidgetQuery value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SharedWidgetQuery() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SharedWidgetQuery implements SharedWidgetQuery {
  const _SharedWidgetQuery({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'from') required this.from,
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'data') required this.data,
    @JsonKey(name: 'widget_id') required this.widgetId,
  });
  factory _SharedWidgetQuery.fromJson(Map<String, dynamic> json) =>
      _$SharedWidgetQueryFromJson(json);

  /// Unique identifier of the query.
  @override
  @JsonKey(name: 'id')
  final String id;

  /// User who sent the query.
  @override
  @JsonKey(name: 'from')
  final User from;

  /// Type of the query and its associated wallet data, if any.
  @override
  @JsonKey(name: 'type')
  final WidgetQueryType type;

  /// Data sent by the widget, 1-64 bytes.
  @override
  @JsonKey(name: 'data')
  final String data;

  /// Unique identifier of the shared widget.
  @override
  @JsonKey(name: 'widget_id')
  final String widgetId;

  /// Create a copy of SharedWidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SharedWidgetQueryCopyWith<_SharedWidgetQuery> get copyWith =>
      __$SharedWidgetQueryCopyWithImpl<_SharedWidgetQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SharedWidgetQueryToJson(this);
  }

  @override
  String toString() {
    return 'SharedWidgetQuery(id: $id, from: $from, type: $type, data: $data, widgetId: $widgetId)';
  }
}

/// @nodoc
abstract mixin class _$SharedWidgetQueryCopyWith<$Res>
    implements $SharedWidgetQueryCopyWith<$Res> {
  factory _$SharedWidgetQueryCopyWith(
    _SharedWidgetQuery value,
    $Res Function(_SharedWidgetQuery) _then,
  ) = __$SharedWidgetQueryCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'from') User from,
    @JsonKey(name: 'type') WidgetQueryType type,
    @JsonKey(name: 'data') String data,
    @JsonKey(name: 'widget_id') String widgetId,
  });

  @override
  $UserCopyWith<$Res> get from;
  @override
  $WidgetQueryTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$SharedWidgetQueryCopyWithImpl<$Res>
    implements _$SharedWidgetQueryCopyWith<$Res> {
  __$SharedWidgetQueryCopyWithImpl(this._self, this._then);

  final _SharedWidgetQuery _self;
  final $Res Function(_SharedWidgetQuery) _then;

  /// Create a copy of SharedWidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? type = null,
    Object? data = null,
    Object? widgetId = null,
  }) {
    return _then(
      _SharedWidgetQuery(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        from: null == from
            ? _self.from
            : from // ignore: cast_nullable_to_non_nullable
                  as User,
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as WidgetQueryType,
        data: null == data
            ? _self.data
            : data // ignore: cast_nullable_to_non_nullable
                  as String,
        widgetId: null == widgetId
            ? _self.widgetId
            : widgetId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of SharedWidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of SharedWidgetQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WidgetQueryTypeCopyWith<$Res> get type {
    return $WidgetQueryTypeCopyWith<$Res>(_self.type, (value) {
      return _then(_self.copyWith(type: value));
    });
  }
}
