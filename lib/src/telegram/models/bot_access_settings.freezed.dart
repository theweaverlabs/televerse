// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_access_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BotAccessSettings {
  /// True, if only selected users can access the bot. The bot's owner can always access it.
  @JsonKey(name: 'is_access_restricted')
  bool get isAccessRestricted;

  /// Optional. The list of other users who have access to the bot if the access is restricted.
  @JsonKey(name: 'added_users')
  List<User>? get addedUsers;

  /// Create a copy of BotAccessSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotAccessSettingsCopyWith<BotAccessSettings> get copyWith =>
      _$BotAccessSettingsCopyWithImpl<BotAccessSettings>(
        this as BotAccessSettings,
        _$identity,
      );

  /// Serializes this BotAccessSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BotAccessSettings(isAccessRestricted: $isAccessRestricted, addedUsers: $addedUsers)';
  }
}

/// @nodoc
abstract mixin class $BotAccessSettingsCopyWith<$Res> {
  factory $BotAccessSettingsCopyWith(
    BotAccessSettings value,
    $Res Function(BotAccessSettings) _then,
  ) = _$BotAccessSettingsCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'is_access_restricted') bool isAccessRestricted,
    @JsonKey(name: 'added_users') List<User>? addedUsers,
  });
}

/// @nodoc
class _$BotAccessSettingsCopyWithImpl<$Res>
    implements $BotAccessSettingsCopyWith<$Res> {
  _$BotAccessSettingsCopyWithImpl(this._self, this._then);

  final BotAccessSettings _self;
  final $Res Function(BotAccessSettings) _then;

  /// Create a copy of BotAccessSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isAccessRestricted = null, Object? addedUsers = freezed}) {
    return _then(
      _self.copyWith(
        isAccessRestricted: null == isAccessRestricted
            ? _self.isAccessRestricted
            : isAccessRestricted // ignore: cast_nullable_to_non_nullable
                  as bool,
        addedUsers: freezed == addedUsers
            ? _self.addedUsers
            : addedUsers // ignore: cast_nullable_to_non_nullable
                  as List<User>?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [BotAccessSettings].
extension BotAccessSettingsPatterns on BotAccessSettings {
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
    TResult Function(_BotAccessSettings value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BotAccessSettings() when $default != null:
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
    TResult Function(_BotAccessSettings value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BotAccessSettings():
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
    TResult? Function(_BotAccessSettings value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BotAccessSettings() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BotAccessSettings implements BotAccessSettings {
  const _BotAccessSettings({
    @JsonKey(name: 'is_access_restricted') required this.isAccessRestricted,
    @JsonKey(name: 'added_users') final List<User>? addedUsers,
  }) : _addedUsers = addedUsers;
  factory _BotAccessSettings.fromJson(Map<String, dynamic> json) =>
      _$BotAccessSettingsFromJson(json);

  /// True, if only selected users can access the bot. The bot's owner can always access it.
  @override
  @JsonKey(name: 'is_access_restricted')
  final bool isAccessRestricted;

  /// Optional. The list of other users who have access to the bot if the access is restricted.
  final List<User>? _addedUsers;

  /// Optional. The list of other users who have access to the bot if the access is restricted.
  @override
  @JsonKey(name: 'added_users')
  List<User>? get addedUsers {
    final value = _addedUsers;
    if (value == null) return null;
    if (_addedUsers is EqualUnmodifiableListView) return _addedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of BotAccessSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BotAccessSettingsCopyWith<_BotAccessSettings> get copyWith =>
      __$BotAccessSettingsCopyWithImpl<_BotAccessSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BotAccessSettingsToJson(this);
  }

  @override
  String toString() {
    return 'BotAccessSettings(isAccessRestricted: $isAccessRestricted, addedUsers: $addedUsers)';
  }
}

/// @nodoc
abstract mixin class _$BotAccessSettingsCopyWith<$Res>
    implements $BotAccessSettingsCopyWith<$Res> {
  factory _$BotAccessSettingsCopyWith(
    _BotAccessSettings value,
    $Res Function(_BotAccessSettings) _then,
  ) = __$BotAccessSettingsCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is_access_restricted') bool isAccessRestricted,
    @JsonKey(name: 'added_users') List<User>? addedUsers,
  });
}

/// @nodoc
class __$BotAccessSettingsCopyWithImpl<$Res>
    implements _$BotAccessSettingsCopyWith<$Res> {
  __$BotAccessSettingsCopyWithImpl(this._self, this._then);

  final _BotAccessSettings _self;
  final $Res Function(_BotAccessSettings) _then;

  /// Create a copy of BotAccessSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? isAccessRestricted = null, Object? addedUsers = freezed}) {
    return _then(
      _BotAccessSettings(
        isAccessRestricted: null == isAccessRestricted
            ? _self.isAccessRestricted
            : isAccessRestricted // ignore: cast_nullable_to_non_nullable
                  as bool,
        addedUsers: freezed == addedUsers
            ? _self._addedUsers
            : addedUsers // ignore: cast_nullable_to_non_nullable
                  as List<User>?,
      ),
    );
  }
}
