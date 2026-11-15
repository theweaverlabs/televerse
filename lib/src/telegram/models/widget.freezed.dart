// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Widget {
  /// The HTML source of the widget.
  @JsonKey(name: 'html')
  String get html;

  /// Identifier of the widget, if it is shared.
  @JsonKey(name: 'id')
  String? get id;

  /// Width in logical pixels, if fixed.
  @JsonKey(name: 'width')
  int? get width;

  /// Height in logical pixels, if fixed.
  @JsonKey(name: 'height')
  int? get height;

  /// Data available wherever the widget is shown.
  @JsonKey(name: 'public_data')
  String? get publicData;

  /// Data specific to the message.
  @JsonKey(name: 'chat_data')
  String? get chatData;

  /// Create a copy of Widget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WidgetCopyWith<Widget> get copyWith =>
      _$WidgetCopyWithImpl<Widget>(this as Widget, _$identity);

  /// Serializes this Widget to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Widget(html: $html, id: $id, width: $width, height: $height, publicData: $publicData, chatData: $chatData)';
  }
}

/// @nodoc
abstract mixin class $WidgetCopyWith<$Res> {
  factory $WidgetCopyWith(Widget value, $Res Function(Widget) _then) =
      _$WidgetCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'html') String html,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'width') int? width,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'public_data') String? publicData,
    @JsonKey(name: 'chat_data') String? chatData,
  });
}

/// @nodoc
class _$WidgetCopyWithImpl<$Res> implements $WidgetCopyWith<$Res> {
  _$WidgetCopyWithImpl(this._self, this._then);

  final Widget _self;
  final $Res Function(Widget) _then;

  /// Create a copy of Widget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? html = null,
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? publicData = freezed,
    Object? chatData = freezed,
  }) {
    return _then(
      _self.copyWith(
        html: null == html
            ? _self.html
            : html // ignore: cast_nullable_to_non_nullable
                  as String,
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        width: freezed == width
            ? _self.width
            : width // ignore: cast_nullable_to_non_nullable
                  as int?,
        height: freezed == height
            ? _self.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int?,
        publicData: freezed == publicData
            ? _self.publicData
            : publicData // ignore: cast_nullable_to_non_nullable
                  as String?,
        chatData: freezed == chatData
            ? _self.chatData
            : chatData // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [Widget].
extension WidgetPatterns on Widget {
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
    TResult Function(_Widget value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Widget() when $default != null:
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
    TResult Function(_Widget value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Widget():
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
    TResult? Function(_Widget value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Widget() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Widget implements Widget {
  const _Widget({
    @JsonKey(name: 'html') required this.html,
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'width') this.width,
    @JsonKey(name: 'height') this.height,
    @JsonKey(name: 'public_data') this.publicData,
    @JsonKey(name: 'chat_data') this.chatData,
  });
  factory _Widget.fromJson(Map<String, dynamic> json) => _$WidgetFromJson(json);

  /// The HTML source of the widget.
  @override
  @JsonKey(name: 'html')
  final String html;

  /// Identifier of the widget, if it is shared.
  @override
  @JsonKey(name: 'id')
  final String? id;

  /// Width in logical pixels, if fixed.
  @override
  @JsonKey(name: 'width')
  final int? width;

  /// Height in logical pixels, if fixed.
  @override
  @JsonKey(name: 'height')
  final int? height;

  /// Data available wherever the widget is shown.
  @override
  @JsonKey(name: 'public_data')
  final String? publicData;

  /// Data specific to the message.
  @override
  @JsonKey(name: 'chat_data')
  final String? chatData;

  /// Create a copy of Widget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WidgetCopyWith<_Widget> get copyWith =>
      __$WidgetCopyWithImpl<_Widget>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WidgetToJson(this);
  }

  @override
  String toString() {
    return 'Widget(html: $html, id: $id, width: $width, height: $height, publicData: $publicData, chatData: $chatData)';
  }
}

/// @nodoc
abstract mixin class _$WidgetCopyWith<$Res> implements $WidgetCopyWith<$Res> {
  factory _$WidgetCopyWith(_Widget value, $Res Function(_Widget) _then) =
      __$WidgetCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'html') String html,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'width') int? width,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'public_data') String? publicData,
    @JsonKey(name: 'chat_data') String? chatData,
  });
}

/// @nodoc
class __$WidgetCopyWithImpl<$Res> implements _$WidgetCopyWith<$Res> {
  __$WidgetCopyWithImpl(this._self, this._then);

  final _Widget _self;
  final $Res Function(_Widget) _then;

  /// Create a copy of Widget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? html = null,
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? publicData = freezed,
    Object? chatData = freezed,
  }) {
    return _then(
      _Widget(
        html: null == html
            ? _self.html
            : html // ignore: cast_nullable_to_non_nullable
                  as String,
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        width: freezed == width
            ? _self.width
            : width // ignore: cast_nullable_to_non_nullable
                  as int?,
        height: freezed == height
            ? _self.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int?,
        publicData: freezed == publicData
            ? _self.publicData
            : publicData // ignore: cast_nullable_to_non_nullable
                  as String?,
        chatData: freezed == chatData
            ? _self.chatData
            : chatData // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
