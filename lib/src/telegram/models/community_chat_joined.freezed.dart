// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_chat_joined.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommunityChatJoined {
  /// The community from which the chat was joined
  @JsonKey(name: 'community')
  Community get community;

  /// Create a copy of CommunityChatJoined
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommunityChatJoinedCopyWith<CommunityChatJoined> get copyWith =>
      _$CommunityChatJoinedCopyWithImpl<CommunityChatJoined>(
        this as CommunityChatJoined,
        _$identity,
      );

  /// Serializes this CommunityChatJoined to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'CommunityChatJoined(community: $community)';
  }
}

/// @nodoc
abstract mixin class $CommunityChatJoinedCopyWith<$Res> {
  factory $CommunityChatJoinedCopyWith(
    CommunityChatJoined value,
    $Res Function(CommunityChatJoined) _then,
  ) = _$CommunityChatJoinedCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'community') Community community});

  $CommunityCopyWith<$Res> get community;
}

/// @nodoc
class _$CommunityChatJoinedCopyWithImpl<$Res>
    implements $CommunityChatJoinedCopyWith<$Res> {
  _$CommunityChatJoinedCopyWithImpl(this._self, this._then);

  final CommunityChatJoined _self;
  final $Res Function(CommunityChatJoined) _then;

  /// Create a copy of CommunityChatJoined
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? community = null}) {
    return _then(
      _self.copyWith(
        community: null == community
            ? _self.community
            : community // ignore: cast_nullable_to_non_nullable
                  as Community,
      ),
    );
  }

  /// Create a copy of CommunityChatJoined
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityCopyWith<$Res> get community {
    return $CommunityCopyWith<$Res>(_self.community, (value) {
      return _then(_self.copyWith(community: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CommunityChatJoined].
extension CommunityChatJoinedPatterns on CommunityChatJoined {
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
    TResult Function(_CommunityChatJoined value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CommunityChatJoined() when $default != null:
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
    TResult Function(_CommunityChatJoined value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommunityChatJoined():
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
    TResult? Function(_CommunityChatJoined value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommunityChatJoined() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CommunityChatJoined implements CommunityChatJoined {
  const _CommunityChatJoined({
    @JsonKey(name: 'community') required this.community,
  });
  factory _CommunityChatJoined.fromJson(Map<String, dynamic> json) =>
      _$CommunityChatJoinedFromJson(json);

  /// The community from which the chat was joined
  @override
  @JsonKey(name: 'community')
  final Community community;

  /// Create a copy of CommunityChatJoined
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CommunityChatJoinedCopyWith<_CommunityChatJoined> get copyWith =>
      __$CommunityChatJoinedCopyWithImpl<_CommunityChatJoined>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$CommunityChatJoinedToJson(this);
  }

  @override
  String toString() {
    return 'CommunityChatJoined(community: $community)';
  }
}

/// @nodoc
abstract mixin class _$CommunityChatJoinedCopyWith<$Res>
    implements $CommunityChatJoinedCopyWith<$Res> {
  factory _$CommunityChatJoinedCopyWith(
    _CommunityChatJoined value,
    $Res Function(_CommunityChatJoined) _then,
  ) = __$CommunityChatJoinedCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'community') Community community});

  @override
  $CommunityCopyWith<$Res> get community;
}

/// @nodoc
class __$CommunityChatJoinedCopyWithImpl<$Res>
    implements _$CommunityChatJoinedCopyWith<$Res> {
  __$CommunityChatJoinedCopyWithImpl(this._self, this._then);

  final _CommunityChatJoined _self;
  final $Res Function(_CommunityChatJoined) _then;

  /// Create a copy of CommunityChatJoined
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? community = null}) {
    return _then(
      _CommunityChatJoined(
        community: null == community
            ? _self.community
            : community // ignore: cast_nullable_to_non_nullable
                  as Community,
      ),
    );
  }

  /// Create a copy of CommunityChatJoined
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityCopyWith<$Res> get community {
    return $CommunityCopyWith<$Res>(_self.community, (value) {
      return _then(_self.copyWith(community: value));
    });
  }
}
