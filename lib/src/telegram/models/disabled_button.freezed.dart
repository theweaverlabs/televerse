// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disabled_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DisabledButton {
  /// Serializes this DisabledButton to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'DisabledButton()';
  }
}

/// @nodoc
class $DisabledButtonCopyWith<$Res> {
  $DisabledButtonCopyWith(DisabledButton _, $Res Function(DisabledButton) __);
}

/// Adds pattern-matching-related methods to [DisabledButton].
extension DisabledButtonPatterns on DisabledButton {
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
    TResult Function(_DisabledButton value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DisabledButton() when $default != null:
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
    TResult Function(_DisabledButton value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DisabledButton():
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
    TResult? Function(_DisabledButton value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DisabledButton() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DisabledButton implements DisabledButton {
  const _DisabledButton();
  factory _DisabledButton.fromJson(Map<String, dynamic> json) =>
      _$DisabledButtonFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$DisabledButtonToJson(this);
  }

  @override
  String toString() {
    return 'DisabledButton()';
  }
}
