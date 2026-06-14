// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rich_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RichBlock _$RichBlockFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'paragraph':
      return RichBlockParagraph.fromJson(json);
    case 'heading':
      return RichBlockSectionHeading.fromJson(json);
    case 'pre':
      return RichBlockPreformatted.fromJson(json);
    case 'footer':
      return RichBlockFooter.fromJson(json);
    case 'divider':
      return RichBlockDivider.fromJson(json);
    case 'mathematical_expression':
      return RichBlockMathematicalExpression.fromJson(json);
    case 'anchor':
      return RichBlockAnchor.fromJson(json);
    case 'list':
      return RichBlockList.fromJson(json);
    case 'blockquote':
      return RichBlockBlockQuotation.fromJson(json);
    case 'pullquote':
      return RichBlockPullQuotation.fromJson(json);
    case 'collage':
      return RichBlockCollage.fromJson(json);
    case 'slideshow':
      return RichBlockSlideshow.fromJson(json);
    case 'table':
      return RichBlockTable.fromJson(json);
    case 'details':
      return RichBlockDetails.fromJson(json);
    case 'map':
      return RichBlockMap.fromJson(json);
    case 'animation':
      return RichBlockAnimation.fromJson(json);
    case 'audio':
      return RichBlockAudio.fromJson(json);
    case 'photo':
      return RichBlockPhoto.fromJson(json);
    case 'video':
      return RichBlockVideo.fromJson(json);
    case 'voice_note':
      return RichBlockVoiceNote.fromJson(json);
    case 'thinking':
      return RichBlockThinking.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'type',
        'RichBlock',
        'Invalid union type "${json['type']}"!',
      );
  }
}

/// @nodoc
mixin _$RichBlock {
  /// Type of the block, always "paragraph"
  @JsonKey(name: 'type')
  RichBlockType get type;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockCopyWith<RichBlock> get copyWith =>
      _$RichBlockCopyWithImpl<RichBlock>(this as RichBlock, _$identity);

  /// Serializes this RichBlock to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'RichBlock(type: $type)';
  }
}

/// @nodoc
abstract mixin class $RichBlockCopyWith<$Res> {
  factory $RichBlockCopyWith(RichBlock value, $Res Function(RichBlock) _then) =
      _$RichBlockCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') RichBlockType type});
}

/// @nodoc
class _$RichBlockCopyWithImpl<$Res> implements $RichBlockCopyWith<$Res> {
  _$RichBlockCopyWithImpl(this._self, this._then);

  final RichBlock _self;
  final $Res Function(RichBlock) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null}) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [RichBlock].
extension RichBlockPatterns on RichBlock {
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
    TResult Function(RichBlockParagraph value)? paragraph,
    TResult Function(RichBlockSectionHeading value)? heading,
    TResult Function(RichBlockPreformatted value)? pre,
    TResult Function(RichBlockFooter value)? footer,
    TResult Function(RichBlockDivider value)? divider,
    TResult Function(RichBlockMathematicalExpression value)?
    mathematicalExpression,
    TResult Function(RichBlockAnchor value)? anchor,
    TResult Function(RichBlockList value)? list,
    TResult Function(RichBlockBlockQuotation value)? blockquote,
    TResult Function(RichBlockPullQuotation value)? pullquote,
    TResult Function(RichBlockCollage value)? collage,
    TResult Function(RichBlockSlideshow value)? slideshow,
    TResult Function(RichBlockTable value)? table,
    TResult Function(RichBlockDetails value)? details,
    TResult Function(RichBlockMap value)? map,
    TResult Function(RichBlockAnimation value)? animation,
    TResult Function(RichBlockAudio value)? audio,
    TResult Function(RichBlockPhoto value)? photo,
    TResult Function(RichBlockVideo value)? video,
    TResult Function(RichBlockVoiceNote value)? voiceNote,
    TResult Function(RichBlockThinking value)? thinking,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case RichBlockParagraph() when paragraph != null:
        return paragraph(_that);
      case RichBlockSectionHeading() when heading != null:
        return heading(_that);
      case RichBlockPreformatted() when pre != null:
        return pre(_that);
      case RichBlockFooter() when footer != null:
        return footer(_that);
      case RichBlockDivider() when divider != null:
        return divider(_that);
      case RichBlockMathematicalExpression()
          when mathematicalExpression != null:
        return mathematicalExpression(_that);
      case RichBlockAnchor() when anchor != null:
        return anchor(_that);
      case RichBlockList() when list != null:
        return list(_that);
      case RichBlockBlockQuotation() when blockquote != null:
        return blockquote(_that);
      case RichBlockPullQuotation() when pullquote != null:
        return pullquote(_that);
      case RichBlockCollage() when collage != null:
        return collage(_that);
      case RichBlockSlideshow() when slideshow != null:
        return slideshow(_that);
      case RichBlockTable() when table != null:
        return table(_that);
      case RichBlockDetails() when details != null:
        return details(_that);
      case RichBlockMap() when map != null:
        return map(_that);
      case RichBlockAnimation() when animation != null:
        return animation(_that);
      case RichBlockAudio() when audio != null:
        return audio(_that);
      case RichBlockPhoto() when photo != null:
        return photo(_that);
      case RichBlockVideo() when video != null:
        return video(_that);
      case RichBlockVoiceNote() when voiceNote != null:
        return voiceNote(_that);
      case RichBlockThinking() when thinking != null:
        return thinking(_that);
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
    required TResult Function(RichBlockParagraph value) paragraph,
    required TResult Function(RichBlockSectionHeading value) heading,
    required TResult Function(RichBlockPreformatted value) pre,
    required TResult Function(RichBlockFooter value) footer,
    required TResult Function(RichBlockDivider value) divider,
    required TResult Function(RichBlockMathematicalExpression value)
    mathematicalExpression,
    required TResult Function(RichBlockAnchor value) anchor,
    required TResult Function(RichBlockList value) list,
    required TResult Function(RichBlockBlockQuotation value) blockquote,
    required TResult Function(RichBlockPullQuotation value) pullquote,
    required TResult Function(RichBlockCollage value) collage,
    required TResult Function(RichBlockSlideshow value) slideshow,
    required TResult Function(RichBlockTable value) table,
    required TResult Function(RichBlockDetails value) details,
    required TResult Function(RichBlockMap value) map,
    required TResult Function(RichBlockAnimation value) animation,
    required TResult Function(RichBlockAudio value) audio,
    required TResult Function(RichBlockPhoto value) photo,
    required TResult Function(RichBlockVideo value) video,
    required TResult Function(RichBlockVoiceNote value) voiceNote,
    required TResult Function(RichBlockThinking value) thinking,
  }) {
    final _that = this;
    switch (_that) {
      case RichBlockParagraph():
        return paragraph(_that);
      case RichBlockSectionHeading():
        return heading(_that);
      case RichBlockPreformatted():
        return pre(_that);
      case RichBlockFooter():
        return footer(_that);
      case RichBlockDivider():
        return divider(_that);
      case RichBlockMathematicalExpression():
        return mathematicalExpression(_that);
      case RichBlockAnchor():
        return anchor(_that);
      case RichBlockList():
        return list(_that);
      case RichBlockBlockQuotation():
        return blockquote(_that);
      case RichBlockPullQuotation():
        return pullquote(_that);
      case RichBlockCollage():
        return collage(_that);
      case RichBlockSlideshow():
        return slideshow(_that);
      case RichBlockTable():
        return table(_that);
      case RichBlockDetails():
        return details(_that);
      case RichBlockMap():
        return map(_that);
      case RichBlockAnimation():
        return animation(_that);
      case RichBlockAudio():
        return audio(_that);
      case RichBlockPhoto():
        return photo(_that);
      case RichBlockVideo():
        return video(_that);
      case RichBlockVoiceNote():
        return voiceNote(_that);
      case RichBlockThinking():
        return thinking(_that);
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
    TResult? Function(RichBlockParagraph value)? paragraph,
    TResult? Function(RichBlockSectionHeading value)? heading,
    TResult? Function(RichBlockPreformatted value)? pre,
    TResult? Function(RichBlockFooter value)? footer,
    TResult? Function(RichBlockDivider value)? divider,
    TResult? Function(RichBlockMathematicalExpression value)?
    mathematicalExpression,
    TResult? Function(RichBlockAnchor value)? anchor,
    TResult? Function(RichBlockList value)? list,
    TResult? Function(RichBlockBlockQuotation value)? blockquote,
    TResult? Function(RichBlockPullQuotation value)? pullquote,
    TResult? Function(RichBlockCollage value)? collage,
    TResult? Function(RichBlockSlideshow value)? slideshow,
    TResult? Function(RichBlockTable value)? table,
    TResult? Function(RichBlockDetails value)? details,
    TResult? Function(RichBlockMap value)? map,
    TResult? Function(RichBlockAnimation value)? animation,
    TResult? Function(RichBlockAudio value)? audio,
    TResult? Function(RichBlockPhoto value)? photo,
    TResult? Function(RichBlockVideo value)? video,
    TResult? Function(RichBlockVoiceNote value)? voiceNote,
    TResult? Function(RichBlockThinking value)? thinking,
  }) {
    final _that = this;
    switch (_that) {
      case RichBlockParagraph() when paragraph != null:
        return paragraph(_that);
      case RichBlockSectionHeading() when heading != null:
        return heading(_that);
      case RichBlockPreformatted() when pre != null:
        return pre(_that);
      case RichBlockFooter() when footer != null:
        return footer(_that);
      case RichBlockDivider() when divider != null:
        return divider(_that);
      case RichBlockMathematicalExpression()
          when mathematicalExpression != null:
        return mathematicalExpression(_that);
      case RichBlockAnchor() when anchor != null:
        return anchor(_that);
      case RichBlockList() when list != null:
        return list(_that);
      case RichBlockBlockQuotation() when blockquote != null:
        return blockquote(_that);
      case RichBlockPullQuotation() when pullquote != null:
        return pullquote(_that);
      case RichBlockCollage() when collage != null:
        return collage(_that);
      case RichBlockSlideshow() when slideshow != null:
        return slideshow(_that);
      case RichBlockTable() when table != null:
        return table(_that);
      case RichBlockDetails() when details != null:
        return details(_that);
      case RichBlockMap() when map != null:
        return map(_that);
      case RichBlockAnimation() when animation != null:
        return animation(_that);
      case RichBlockAudio() when audio != null:
        return audio(_that);
      case RichBlockPhoto() when photo != null:
        return photo(_that);
      case RichBlockVideo() when video != null:
        return video(_that);
      case RichBlockVoiceNote() when voiceNote != null:
        return voiceNote(_that);
      case RichBlockThinking() when thinking != null:
        return thinking(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockParagraph implements RichBlock {
  const RichBlockParagraph({
    @JsonKey(name: 'type') this.type = RichBlockType.paragraph,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
  });
  factory RichBlockParagraph.fromJson(Map<String, dynamic> json) =>
      _$RichBlockParagraphFromJson(json);

  /// Type of the block, always "paragraph"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// Text of the block
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockParagraphCopyWith<RichBlockParagraph> get copyWith =>
      _$RichBlockParagraphCopyWithImpl<RichBlockParagraph>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockParagraphToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.paragraph(type: $type, text: $text)';
  }
}

/// @nodoc
abstract mixin class $RichBlockParagraphCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockParagraphCopyWith(
    RichBlockParagraph value,
    $Res Function(RichBlockParagraph) _then,
  ) = _$RichBlockParagraphCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichBlockParagraphCopyWithImpl<$Res>
    implements $RichBlockParagraphCopyWith<$Res> {
  _$RichBlockParagraphCopyWithImpl(this._self, this._then);

  final RichBlockParagraph _self;
  final $Res Function(RichBlockParagraph) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null}) {
    return _then(
      RichBlockParagraph(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res> get text {
    return $RichTextCopyWith<$Res>(_self.text, (value) {
      return _then(_self.copyWith(text: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockSectionHeading implements RichBlock {
  const RichBlockSectionHeading({
    @JsonKey(name: 'type') this.type = RichBlockType.heading,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'size') required this.size,
  });
  factory RichBlockSectionHeading.fromJson(Map<String, dynamic> json) =>
      _$RichBlockSectionHeadingFromJson(json);

  /// Type of the block, always "heading"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// Text of the block
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Relative size of the text font; 1-6, 1 is the largest, 6 is the smallest
  @JsonKey(name: 'size')
  final int size;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockSectionHeadingCopyWith<RichBlockSectionHeading> get copyWith =>
      _$RichBlockSectionHeadingCopyWithImpl<RichBlockSectionHeading>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockSectionHeadingToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.heading(type: $type, text: $text, size: $size)';
  }
}

/// @nodoc
abstract mixin class $RichBlockSectionHeadingCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockSectionHeadingCopyWith(
    RichBlockSectionHeading value,
    $Res Function(RichBlockSectionHeading) _then,
  ) = _$RichBlockSectionHeadingCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'size') int size,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichBlockSectionHeadingCopyWithImpl<$Res>
    implements $RichBlockSectionHeadingCopyWith<$Res> {
  _$RichBlockSectionHeadingCopyWithImpl(this._self, this._then);

  final RichBlockSectionHeading _self;
  final $Res Function(RichBlockSectionHeading) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null, Object? size = null}) {
    return _then(
      RichBlockSectionHeading(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        size: null == size
            ? _self.size
            : size // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res> get text {
    return $RichTextCopyWith<$Res>(_self.text, (value) {
      return _then(_self.copyWith(text: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockPreformatted implements RichBlock {
  const RichBlockPreformatted({
    @JsonKey(name: 'type') this.type = RichBlockType.pre,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'language') this.language,
  });
  factory RichBlockPreformatted.fromJson(Map<String, dynamic> json) =>
      _$RichBlockPreformattedFromJson(json);

  /// Type of the block, always "pre"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// Text of the block
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Optional. The programming language of the text
  @JsonKey(name: 'language')
  final String? language;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockPreformattedCopyWith<RichBlockPreformatted> get copyWith =>
      _$RichBlockPreformattedCopyWithImpl<RichBlockPreformatted>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockPreformattedToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.pre(type: $type, text: $text, language: $language)';
  }
}

/// @nodoc
abstract mixin class $RichBlockPreformattedCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockPreformattedCopyWith(
    RichBlockPreformatted value,
    $Res Function(RichBlockPreformatted) _then,
  ) = _$RichBlockPreformattedCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'language') String? language,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichBlockPreformattedCopyWithImpl<$Res>
    implements $RichBlockPreformattedCopyWith<$Res> {
  _$RichBlockPreformattedCopyWithImpl(this._self, this._then);

  final RichBlockPreformatted _self;
  final $Res Function(RichBlockPreformatted) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? language = freezed,
  }) {
    return _then(
      RichBlockPreformatted(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        language: freezed == language
            ? _self.language
            : language // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res> get text {
    return $RichTextCopyWith<$Res>(_self.text, (value) {
      return _then(_self.copyWith(text: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockFooter implements RichBlock {
  const RichBlockFooter({
    @JsonKey(name: 'type') this.type = RichBlockType.footer,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
  });
  factory RichBlockFooter.fromJson(Map<String, dynamic> json) =>
      _$RichBlockFooterFromJson(json);

  /// Type of the block, always "footer"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// Text of the block
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockFooterCopyWith<RichBlockFooter> get copyWith =>
      _$RichBlockFooterCopyWithImpl<RichBlockFooter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockFooterToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.footer(type: $type, text: $text)';
  }
}

/// @nodoc
abstract mixin class $RichBlockFooterCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockFooterCopyWith(
    RichBlockFooter value,
    $Res Function(RichBlockFooter) _then,
  ) = _$RichBlockFooterCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichBlockFooterCopyWithImpl<$Res>
    implements $RichBlockFooterCopyWith<$Res> {
  _$RichBlockFooterCopyWithImpl(this._self, this._then);

  final RichBlockFooter _self;
  final $Res Function(RichBlockFooter) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null}) {
    return _then(
      RichBlockFooter(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res> get text {
    return $RichTextCopyWith<$Res>(_self.text, (value) {
      return _then(_self.copyWith(text: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockDivider implements RichBlock {
  const RichBlockDivider({
    @JsonKey(name: 'type') this.type = RichBlockType.divider,
  });
  factory RichBlockDivider.fromJson(Map<String, dynamic> json) =>
      _$RichBlockDividerFromJson(json);

  /// Type of the block, always "divider"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockDividerCopyWith<RichBlockDivider> get copyWith =>
      _$RichBlockDividerCopyWithImpl<RichBlockDivider>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockDividerToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.divider(type: $type)';
  }
}

/// @nodoc
abstract mixin class $RichBlockDividerCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockDividerCopyWith(
    RichBlockDivider value,
    $Res Function(RichBlockDivider) _then,
  ) = _$RichBlockDividerCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') RichBlockType type});
}

/// @nodoc
class _$RichBlockDividerCopyWithImpl<$Res>
    implements $RichBlockDividerCopyWith<$Res> {
  _$RichBlockDividerCopyWithImpl(this._self, this._then);

  final RichBlockDivider _self;
  final $Res Function(RichBlockDivider) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null}) {
    return _then(
      RichBlockDivider(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockMathematicalExpression implements RichBlock {
  const RichBlockMathematicalExpression({
    @JsonKey(name: 'type') this.type = RichBlockType.mathematicalExpression,
    @JsonKey(name: 'expression') required this.expression,
  });
  factory RichBlockMathematicalExpression.fromJson(Map<String, dynamic> json) =>
      _$RichBlockMathematicalExpressionFromJson(json);

  /// Type of the block, always "mathematical_expression"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// The mathematical expression in LaTeX format
  @JsonKey(name: 'expression')
  final String expression;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockMathematicalExpressionCopyWith<RichBlockMathematicalExpression>
  get copyWith =>
      _$RichBlockMathematicalExpressionCopyWithImpl<
        RichBlockMathematicalExpression
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockMathematicalExpressionToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.mathematicalExpression(type: $type, expression: $expression)';
  }
}

/// @nodoc
abstract mixin class $RichBlockMathematicalExpressionCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockMathematicalExpressionCopyWith(
    RichBlockMathematicalExpression value,
    $Res Function(RichBlockMathematicalExpression) _then,
  ) = _$RichBlockMathematicalExpressionCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'expression') String expression,
  });
}

/// @nodoc
class _$RichBlockMathematicalExpressionCopyWithImpl<$Res>
    implements $RichBlockMathematicalExpressionCopyWith<$Res> {
  _$RichBlockMathematicalExpressionCopyWithImpl(this._self, this._then);

  final RichBlockMathematicalExpression _self;
  final $Res Function(RichBlockMathematicalExpression) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? expression = null}) {
    return _then(
      RichBlockMathematicalExpression(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        expression: null == expression
            ? _self.expression
            : expression // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockAnchor implements RichBlock {
  const RichBlockAnchor({
    @JsonKey(name: 'type') this.type = RichBlockType.anchor,
    @JsonKey(name: 'name') required this.name,
  });
  factory RichBlockAnchor.fromJson(Map<String, dynamic> json) =>
      _$RichBlockAnchorFromJson(json);

  /// Type of the block, always "anchor"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// The name of the anchor
  @JsonKey(name: 'name')
  final String name;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockAnchorCopyWith<RichBlockAnchor> get copyWith =>
      _$RichBlockAnchorCopyWithImpl<RichBlockAnchor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockAnchorToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.anchor(type: $type, name: $name)';
  }
}

/// @nodoc
abstract mixin class $RichBlockAnchorCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockAnchorCopyWith(
    RichBlockAnchor value,
    $Res Function(RichBlockAnchor) _then,
  ) = _$RichBlockAnchorCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'name') String name,
  });
}

/// @nodoc
class _$RichBlockAnchorCopyWithImpl<$Res>
    implements $RichBlockAnchorCopyWith<$Res> {
  _$RichBlockAnchorCopyWithImpl(this._self, this._then);

  final RichBlockAnchor _self;
  final $Res Function(RichBlockAnchor) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? name = null}) {
    return _then(
      RichBlockAnchor(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockList implements RichBlock {
  const RichBlockList({
    @JsonKey(name: 'type') this.type = RichBlockType.list,
    @JsonKey(name: 'items') required final List<RichBlockListItem> items,
  }) : _items = items;
  factory RichBlockList.fromJson(Map<String, dynamic> json) =>
      _$RichBlockListFromJson(json);

  /// Type of the block, always "list"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// Items of the list
  final List<RichBlockListItem> _items;

  /// Items of the list
  @JsonKey(name: 'items')
  List<RichBlockListItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockListCopyWith<RichBlockList> get copyWith =>
      _$RichBlockListCopyWithImpl<RichBlockList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockListToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.list(type: $type, items: $items)';
  }
}

/// @nodoc
abstract mixin class $RichBlockListCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockListCopyWith(
    RichBlockList value,
    $Res Function(RichBlockList) _then,
  ) = _$RichBlockListCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'items') List<RichBlockListItem> items,
  });
}

/// @nodoc
class _$RichBlockListCopyWithImpl<$Res>
    implements $RichBlockListCopyWith<$Res> {
  _$RichBlockListCopyWithImpl(this._self, this._then);

  final RichBlockList _self;
  final $Res Function(RichBlockList) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? items = null}) {
    return _then(
      RichBlockList(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        items: null == items
            ? _self._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<RichBlockListItem>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockBlockQuotation implements RichBlock {
  const RichBlockBlockQuotation({
    @JsonKey(name: 'type') this.type = RichBlockType.blockquote,
    @JsonKey(name: 'blocks') required final List<RichBlock> blocks,
    @JsonKey(name: 'credit') @RichTextConverter() this.credit,
  }) : _blocks = blocks;
  factory RichBlockBlockQuotation.fromJson(Map<String, dynamic> json) =>
      _$RichBlockBlockQuotationFromJson(json);

  /// Type of the block, always "blockquote"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// Content of the block
  final List<RichBlock> _blocks;

  /// Content of the block
  @JsonKey(name: 'blocks')
  List<RichBlock> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  /// Optional. Credit of the block
  @JsonKey(name: 'credit')
  @RichTextConverter()
  final RichText? credit;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockBlockQuotationCopyWith<RichBlockBlockQuotation> get copyWith =>
      _$RichBlockBlockQuotationCopyWithImpl<RichBlockBlockQuotation>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockBlockQuotationToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.blockquote(type: $type, blocks: $blocks, credit: $credit)';
  }
}

/// @nodoc
abstract mixin class $RichBlockBlockQuotationCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockBlockQuotationCopyWith(
    RichBlockBlockQuotation value,
    $Res Function(RichBlockBlockQuotation) _then,
  ) = _$RichBlockBlockQuotationCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'blocks') List<RichBlock> blocks,
    @JsonKey(name: 'credit') @RichTextConverter() RichText? credit,
  });

  $RichTextCopyWith<$Res>? get credit;
}

/// @nodoc
class _$RichBlockBlockQuotationCopyWithImpl<$Res>
    implements $RichBlockBlockQuotationCopyWith<$Res> {
  _$RichBlockBlockQuotationCopyWithImpl(this._self, this._then);

  final RichBlockBlockQuotation _self;
  final $Res Function(RichBlockBlockQuotation) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? blocks = null,
    Object? credit = freezed,
  }) {
    return _then(
      RichBlockBlockQuotation(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        blocks: null == blocks
            ? _self._blocks
            : blocks // ignore: cast_nullable_to_non_nullable
                  as List<RichBlock>,
        credit: freezed == credit
            ? _self.credit
            : credit // ignore: cast_nullable_to_non_nullable
                  as RichText?,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res>? get credit {
    if (_self.credit == null) {
      return null;
    }

    return $RichTextCopyWith<$Res>(_self.credit!, (value) {
      return _then(_self.copyWith(credit: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockPullQuotation implements RichBlock {
  const RichBlockPullQuotation({
    @JsonKey(name: 'type') this.type = RichBlockType.pullquote,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'credit') @RichTextConverter() this.credit,
  });
  factory RichBlockPullQuotation.fromJson(Map<String, dynamic> json) =>
      _$RichBlockPullQuotationFromJson(json);

  /// Type of the block, always "pullquote"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// Text of the block
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Optional. Credit of the block
  @JsonKey(name: 'credit')
  @RichTextConverter()
  final RichText? credit;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockPullQuotationCopyWith<RichBlockPullQuotation> get copyWith =>
      _$RichBlockPullQuotationCopyWithImpl<RichBlockPullQuotation>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockPullQuotationToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.pullquote(type: $type, text: $text, credit: $credit)';
  }
}

/// @nodoc
abstract mixin class $RichBlockPullQuotationCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockPullQuotationCopyWith(
    RichBlockPullQuotation value,
    $Res Function(RichBlockPullQuotation) _then,
  ) = _$RichBlockPullQuotationCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'credit') @RichTextConverter() RichText? credit,
  });

  $RichTextCopyWith<$Res> get text;
  $RichTextCopyWith<$Res>? get credit;
}

/// @nodoc
class _$RichBlockPullQuotationCopyWithImpl<$Res>
    implements $RichBlockPullQuotationCopyWith<$Res> {
  _$RichBlockPullQuotationCopyWithImpl(this._self, this._then);

  final RichBlockPullQuotation _self;
  final $Res Function(RichBlockPullQuotation) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? credit = freezed,
  }) {
    return _then(
      RichBlockPullQuotation(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        credit: freezed == credit
            ? _self.credit
            : credit // ignore: cast_nullable_to_non_nullable
                  as RichText?,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res> get text {
    return $RichTextCopyWith<$Res>(_self.text, (value) {
      return _then(_self.copyWith(text: value));
    });
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res>? get credit {
    if (_self.credit == null) {
      return null;
    }

    return $RichTextCopyWith<$Res>(_self.credit!, (value) {
      return _then(_self.copyWith(credit: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockCollage implements RichBlock {
  const RichBlockCollage({
    @JsonKey(name: 'type') this.type = RichBlockType.collage,
    @JsonKey(name: 'blocks') required final List<RichBlock> blocks,
    @JsonKey(name: 'caption') this.caption,
  }) : _blocks = blocks;
  factory RichBlockCollage.fromJson(Map<String, dynamic> json) =>
      _$RichBlockCollageFromJson(json);

  /// Type of the block, always "collage"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// Elements of the collage
  final List<RichBlock> _blocks;

  /// Elements of the collage
  @JsonKey(name: 'blocks')
  List<RichBlock> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  /// Optional. Caption of the block
  @JsonKey(name: 'caption')
  final RichBlockCaption? caption;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockCollageCopyWith<RichBlockCollage> get copyWith =>
      _$RichBlockCollageCopyWithImpl<RichBlockCollage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockCollageToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.collage(type: $type, blocks: $blocks, caption: $caption)';
  }
}

/// @nodoc
abstract mixin class $RichBlockCollageCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockCollageCopyWith(
    RichBlockCollage value,
    $Res Function(RichBlockCollage) _then,
  ) = _$RichBlockCollageCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'blocks') List<RichBlock> blocks,
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  });

  $RichBlockCaptionCopyWith<$Res>? get caption;
}

/// @nodoc
class _$RichBlockCollageCopyWithImpl<$Res>
    implements $RichBlockCollageCopyWith<$Res> {
  _$RichBlockCollageCopyWithImpl(this._self, this._then);

  final RichBlockCollage _self;
  final $Res Function(RichBlockCollage) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? blocks = null,
    Object? caption = freezed,
  }) {
    return _then(
      RichBlockCollage(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        blocks: null == blocks
            ? _self._blocks
            : blocks // ignore: cast_nullable_to_non_nullable
                  as List<RichBlock>,
        caption: freezed == caption
            ? _self.caption
            : caption // ignore: cast_nullable_to_non_nullable
                  as RichBlockCaption?,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichBlockCaptionCopyWith<$Res>? get caption {
    if (_self.caption == null) {
      return null;
    }

    return $RichBlockCaptionCopyWith<$Res>(_self.caption!, (value) {
      return _then(_self.copyWith(caption: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockSlideshow implements RichBlock {
  const RichBlockSlideshow({
    @JsonKey(name: 'type') this.type = RichBlockType.slideshow,
    @JsonKey(name: 'blocks') required final List<RichBlock> blocks,
    @JsonKey(name: 'caption') this.caption,
  }) : _blocks = blocks;
  factory RichBlockSlideshow.fromJson(Map<String, dynamic> json) =>
      _$RichBlockSlideshowFromJson(json);

  /// Type of the block, always "slideshow"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// Elements of the slideshow
  final List<RichBlock> _blocks;

  /// Elements of the slideshow
  @JsonKey(name: 'blocks')
  List<RichBlock> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  /// Optional. Caption of the block
  @JsonKey(name: 'caption')
  final RichBlockCaption? caption;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockSlideshowCopyWith<RichBlockSlideshow> get copyWith =>
      _$RichBlockSlideshowCopyWithImpl<RichBlockSlideshow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockSlideshowToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.slideshow(type: $type, blocks: $blocks, caption: $caption)';
  }
}

/// @nodoc
abstract mixin class $RichBlockSlideshowCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockSlideshowCopyWith(
    RichBlockSlideshow value,
    $Res Function(RichBlockSlideshow) _then,
  ) = _$RichBlockSlideshowCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'blocks') List<RichBlock> blocks,
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  });

  $RichBlockCaptionCopyWith<$Res>? get caption;
}

/// @nodoc
class _$RichBlockSlideshowCopyWithImpl<$Res>
    implements $RichBlockSlideshowCopyWith<$Res> {
  _$RichBlockSlideshowCopyWithImpl(this._self, this._then);

  final RichBlockSlideshow _self;
  final $Res Function(RichBlockSlideshow) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? blocks = null,
    Object? caption = freezed,
  }) {
    return _then(
      RichBlockSlideshow(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        blocks: null == blocks
            ? _self._blocks
            : blocks // ignore: cast_nullable_to_non_nullable
                  as List<RichBlock>,
        caption: freezed == caption
            ? _self.caption
            : caption // ignore: cast_nullable_to_non_nullable
                  as RichBlockCaption?,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichBlockCaptionCopyWith<$Res>? get caption {
    if (_self.caption == null) {
      return null;
    }

    return $RichBlockCaptionCopyWith<$Res>(_self.caption!, (value) {
      return _then(_self.copyWith(caption: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockTable implements RichBlock {
  const RichBlockTable({
    @JsonKey(name: 'type') this.type = RichBlockType.table,
    @JsonKey(name: 'cells') required final List<List<RichBlockTableCell>> cells,
    @JsonKey(name: 'is_bordered') this.isBordered,
    @JsonKey(name: 'is_striped') this.isStriped,
    @JsonKey(name: 'caption') @RichTextConverter() this.caption,
  }) : _cells = cells;
  factory RichBlockTable.fromJson(Map<String, dynamic> json) =>
      _$RichBlockTableFromJson(json);

  /// Type of the block, always "table"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// Cells of the table
  final List<List<RichBlockTableCell>> _cells;

  /// Cells of the table
  @JsonKey(name: 'cells')
  List<List<RichBlockTableCell>> get cells {
    if (_cells is EqualUnmodifiableListView) return _cells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cells);
  }

  /// Optional. True, if the table has borders
  @JsonKey(name: 'is_bordered')
  final bool? isBordered;

  /// Optional. True, if the table is striped
  @JsonKey(name: 'is_striped')
  final bool? isStriped;

  /// Optional. Caption of the table
  @JsonKey(name: 'caption')
  @RichTextConverter()
  final RichText? caption;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockTableCopyWith<RichBlockTable> get copyWith =>
      _$RichBlockTableCopyWithImpl<RichBlockTable>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockTableToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.table(type: $type, cells: $cells, isBordered: $isBordered, isStriped: $isStriped, caption: $caption)';
  }
}

/// @nodoc
abstract mixin class $RichBlockTableCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockTableCopyWith(
    RichBlockTable value,
    $Res Function(RichBlockTable) _then,
  ) = _$RichBlockTableCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'cells') List<List<RichBlockTableCell>> cells,
    @JsonKey(name: 'is_bordered') bool? isBordered,
    @JsonKey(name: 'is_striped') bool? isStriped,
    @JsonKey(name: 'caption') @RichTextConverter() RichText? caption,
  });

  $RichTextCopyWith<$Res>? get caption;
}

/// @nodoc
class _$RichBlockTableCopyWithImpl<$Res>
    implements $RichBlockTableCopyWith<$Res> {
  _$RichBlockTableCopyWithImpl(this._self, this._then);

  final RichBlockTable _self;
  final $Res Function(RichBlockTable) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? cells = null,
    Object? isBordered = freezed,
    Object? isStriped = freezed,
    Object? caption = freezed,
  }) {
    return _then(
      RichBlockTable(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        cells: null == cells
            ? _self._cells
            : cells // ignore: cast_nullable_to_non_nullable
                  as List<List<RichBlockTableCell>>,
        isBordered: freezed == isBordered
            ? _self.isBordered
            : isBordered // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isStriped: freezed == isStriped
            ? _self.isStriped
            : isStriped // ignore: cast_nullable_to_non_nullable
                  as bool?,
        caption: freezed == caption
            ? _self.caption
            : caption // ignore: cast_nullable_to_non_nullable
                  as RichText?,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res>? get caption {
    if (_self.caption == null) {
      return null;
    }

    return $RichTextCopyWith<$Res>(_self.caption!, (value) {
      return _then(_self.copyWith(caption: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockDetails implements RichBlock {
  const RichBlockDetails({
    @JsonKey(name: 'type') this.type = RichBlockType.details,
    @JsonKey(name: 'summary') @RichTextConverter() required this.summary,
    @JsonKey(name: 'blocks') required final List<RichBlock> blocks,
    @JsonKey(name: 'is_open') this.isOpen,
  }) : _blocks = blocks;
  factory RichBlockDetails.fromJson(Map<String, dynamic> json) =>
      _$RichBlockDetailsFromJson(json);

  /// Type of the block, always "details"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// Always shown summary of the block
  @JsonKey(name: 'summary')
  @RichTextConverter()
  final RichText summary;

  /// Content of the block
  final List<RichBlock> _blocks;

  /// Content of the block
  @JsonKey(name: 'blocks')
  List<RichBlock> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  /// Optional. True, if the content of the block is visible by default
  @JsonKey(name: 'is_open')
  final bool? isOpen;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockDetailsCopyWith<RichBlockDetails> get copyWith =>
      _$RichBlockDetailsCopyWithImpl<RichBlockDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockDetailsToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.details(type: $type, summary: $summary, blocks: $blocks, isOpen: $isOpen)';
  }
}

/// @nodoc
abstract mixin class $RichBlockDetailsCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockDetailsCopyWith(
    RichBlockDetails value,
    $Res Function(RichBlockDetails) _then,
  ) = _$RichBlockDetailsCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'summary') @RichTextConverter() RichText summary,
    @JsonKey(name: 'blocks') List<RichBlock> blocks,
    @JsonKey(name: 'is_open') bool? isOpen,
  });

  $RichTextCopyWith<$Res> get summary;
}

/// @nodoc
class _$RichBlockDetailsCopyWithImpl<$Res>
    implements $RichBlockDetailsCopyWith<$Res> {
  _$RichBlockDetailsCopyWithImpl(this._self, this._then);

  final RichBlockDetails _self;
  final $Res Function(RichBlockDetails) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? summary = null,
    Object? blocks = null,
    Object? isOpen = freezed,
  }) {
    return _then(
      RichBlockDetails(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        summary: null == summary
            ? _self.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as RichText,
        blocks: null == blocks
            ? _self._blocks
            : blocks // ignore: cast_nullable_to_non_nullable
                  as List<RichBlock>,
        isOpen: freezed == isOpen
            ? _self.isOpen
            : isOpen // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res> get summary {
    return $RichTextCopyWith<$Res>(_self.summary, (value) {
      return _then(_self.copyWith(summary: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockMap implements RichBlock {
  const RichBlockMap({
    @JsonKey(name: 'type') this.type = RichBlockType.map,
    @JsonKey(name: 'location') required this.location,
    @JsonKey(name: 'zoom') required this.zoom,
    @JsonKey(name: 'width') required this.width,
    @JsonKey(name: 'height') required this.height,
    @JsonKey(name: 'caption') this.caption,
  });
  factory RichBlockMap.fromJson(Map<String, dynamic> json) =>
      _$RichBlockMapFromJson(json);

  /// Type of the block, always "map"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// Location of the center of the map
  @JsonKey(name: 'location')
  final Location location;

  /// Map zoom level; 13-20
  @JsonKey(name: 'zoom')
  final int zoom;

  /// Expected width of the map
  @JsonKey(name: 'width')
  final int width;

  /// Expected height of the map
  @JsonKey(name: 'height')
  final int height;

  /// Optional. Caption of the block
  @JsonKey(name: 'caption')
  final RichBlockCaption? caption;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockMapCopyWith<RichBlockMap> get copyWith =>
      _$RichBlockMapCopyWithImpl<RichBlockMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockMapToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.map(type: $type, location: $location, zoom: $zoom, width: $width, height: $height, caption: $caption)';
  }
}

/// @nodoc
abstract mixin class $RichBlockMapCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockMapCopyWith(
    RichBlockMap value,
    $Res Function(RichBlockMap) _then,
  ) = _$RichBlockMapCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'location') Location location,
    @JsonKey(name: 'zoom') int zoom,
    @JsonKey(name: 'width') int width,
    @JsonKey(name: 'height') int height,
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  });

  $LocationCopyWith<$Res> get location;
  $RichBlockCaptionCopyWith<$Res>? get caption;
}

/// @nodoc
class _$RichBlockMapCopyWithImpl<$Res> implements $RichBlockMapCopyWith<$Res> {
  _$RichBlockMapCopyWithImpl(this._self, this._then);

  final RichBlockMap _self;
  final $Res Function(RichBlockMap) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? location = null,
    Object? zoom = null,
    Object? width = null,
    Object? height = null,
    Object? caption = freezed,
  }) {
    return _then(
      RichBlockMap(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        location: null == location
            ? _self.location
            : location // ignore: cast_nullable_to_non_nullable
                  as Location,
        zoom: null == zoom
            ? _self.zoom
            : zoom // ignore: cast_nullable_to_non_nullable
                  as int,
        width: null == width
            ? _self.width
            : width // ignore: cast_nullable_to_non_nullable
                  as int,
        height: null == height
            ? _self.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int,
        caption: freezed == caption
            ? _self.caption
            : caption // ignore: cast_nullable_to_non_nullable
                  as RichBlockCaption?,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichBlockCaptionCopyWith<$Res>? get caption {
    if (_self.caption == null) {
      return null;
    }

    return $RichBlockCaptionCopyWith<$Res>(_self.caption!, (value) {
      return _then(_self.copyWith(caption: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockAnimation implements RichBlock {
  const RichBlockAnimation({
    @JsonKey(name: 'type') this.type = RichBlockType.animation,
    @JsonKey(name: 'animation') required this.animation,
    @JsonKey(name: 'has_spoiler') this.hasSpoiler,
    @JsonKey(name: 'caption') this.caption,
  });
  factory RichBlockAnimation.fromJson(Map<String, dynamic> json) =>
      _$RichBlockAnimationFromJson(json);

  /// Type of the block, always "animation"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// The animation
  @JsonKey(name: 'animation')
  final Animation animation;

  /// Optional. True, if the media preview is covered by a spoiler animation
  @JsonKey(name: 'has_spoiler')
  final bool? hasSpoiler;

  /// Optional. Caption of the block
  @JsonKey(name: 'caption')
  final RichBlockCaption? caption;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockAnimationCopyWith<RichBlockAnimation> get copyWith =>
      _$RichBlockAnimationCopyWithImpl<RichBlockAnimation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockAnimationToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.animation(type: $type, animation: $animation, hasSpoiler: $hasSpoiler, caption: $caption)';
  }
}

/// @nodoc
abstract mixin class $RichBlockAnimationCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockAnimationCopyWith(
    RichBlockAnimation value,
    $Res Function(RichBlockAnimation) _then,
  ) = _$RichBlockAnimationCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'animation') Animation animation,
    @JsonKey(name: 'has_spoiler') bool? hasSpoiler,
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  });

  $AnimationCopyWith<$Res> get animation;
  $RichBlockCaptionCopyWith<$Res>? get caption;
}

/// @nodoc
class _$RichBlockAnimationCopyWithImpl<$Res>
    implements $RichBlockAnimationCopyWith<$Res> {
  _$RichBlockAnimationCopyWithImpl(this._self, this._then);

  final RichBlockAnimation _self;
  final $Res Function(RichBlockAnimation) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? animation = null,
    Object? hasSpoiler = freezed,
    Object? caption = freezed,
  }) {
    return _then(
      RichBlockAnimation(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        animation: null == animation
            ? _self.animation
            : animation // ignore: cast_nullable_to_non_nullable
                  as Animation,
        hasSpoiler: freezed == hasSpoiler
            ? _self.hasSpoiler
            : hasSpoiler // ignore: cast_nullable_to_non_nullable
                  as bool?,
        caption: freezed == caption
            ? _self.caption
            : caption // ignore: cast_nullable_to_non_nullable
                  as RichBlockCaption?,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimationCopyWith<$Res> get animation {
    return $AnimationCopyWith<$Res>(_self.animation, (value) {
      return _then(_self.copyWith(animation: value));
    });
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichBlockCaptionCopyWith<$Res>? get caption {
    if (_self.caption == null) {
      return null;
    }

    return $RichBlockCaptionCopyWith<$Res>(_self.caption!, (value) {
      return _then(_self.copyWith(caption: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockAudio implements RichBlock {
  const RichBlockAudio({
    @JsonKey(name: 'type') this.type = RichBlockType.audio,
    @JsonKey(name: 'audio') required this.audio,
    @JsonKey(name: 'caption') this.caption,
  });
  factory RichBlockAudio.fromJson(Map<String, dynamic> json) =>
      _$RichBlockAudioFromJson(json);

  /// Type of the block, always "audio"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// The audio
  @JsonKey(name: 'audio')
  final Audio audio;

  /// Optional. Caption of the block
  @JsonKey(name: 'caption')
  final RichBlockCaption? caption;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockAudioCopyWith<RichBlockAudio> get copyWith =>
      _$RichBlockAudioCopyWithImpl<RichBlockAudio>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockAudioToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.audio(type: $type, audio: $audio, caption: $caption)';
  }
}

/// @nodoc
abstract mixin class $RichBlockAudioCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockAudioCopyWith(
    RichBlockAudio value,
    $Res Function(RichBlockAudio) _then,
  ) = _$RichBlockAudioCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'audio') Audio audio,
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  });

  $AudioCopyWith<$Res> get audio;
  $RichBlockCaptionCopyWith<$Res>? get caption;
}

/// @nodoc
class _$RichBlockAudioCopyWithImpl<$Res>
    implements $RichBlockAudioCopyWith<$Res> {
  _$RichBlockAudioCopyWithImpl(this._self, this._then);

  final RichBlockAudio _self;
  final $Res Function(RichBlockAudio) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? audio = null,
    Object? caption = freezed,
  }) {
    return _then(
      RichBlockAudio(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        audio: null == audio
            ? _self.audio
            : audio // ignore: cast_nullable_to_non_nullable
                  as Audio,
        caption: freezed == caption
            ? _self.caption
            : caption // ignore: cast_nullable_to_non_nullable
                  as RichBlockCaption?,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudioCopyWith<$Res> get audio {
    return $AudioCopyWith<$Res>(_self.audio, (value) {
      return _then(_self.copyWith(audio: value));
    });
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichBlockCaptionCopyWith<$Res>? get caption {
    if (_self.caption == null) {
      return null;
    }

    return $RichBlockCaptionCopyWith<$Res>(_self.caption!, (value) {
      return _then(_self.copyWith(caption: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockPhoto implements RichBlock {
  const RichBlockPhoto({
    @JsonKey(name: 'type') this.type = RichBlockType.photo,
    @JsonKey(name: 'photo') required final List<PhotoSize> photo,
    @JsonKey(name: 'has_spoiler') this.hasSpoiler,
    @JsonKey(name: 'caption') this.caption,
  }) : _photo = photo;
  factory RichBlockPhoto.fromJson(Map<String, dynamic> json) =>
      _$RichBlockPhotoFromJson(json);

  /// Type of the block, always "photo"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// Available sizes of the photo
  final List<PhotoSize> _photo;

  /// Available sizes of the photo
  @JsonKey(name: 'photo')
  List<PhotoSize> get photo {
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photo);
  }

  /// Optional. True, if the media preview is covered by a spoiler animation
  @JsonKey(name: 'has_spoiler')
  final bool? hasSpoiler;

  /// Optional. Caption of the block
  @JsonKey(name: 'caption')
  final RichBlockCaption? caption;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockPhotoCopyWith<RichBlockPhoto> get copyWith =>
      _$RichBlockPhotoCopyWithImpl<RichBlockPhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockPhotoToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.photo(type: $type, photo: $photo, hasSpoiler: $hasSpoiler, caption: $caption)';
  }
}

/// @nodoc
abstract mixin class $RichBlockPhotoCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockPhotoCopyWith(
    RichBlockPhoto value,
    $Res Function(RichBlockPhoto) _then,
  ) = _$RichBlockPhotoCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'photo') List<PhotoSize> photo,
    @JsonKey(name: 'has_spoiler') bool? hasSpoiler,
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  });

  $RichBlockCaptionCopyWith<$Res>? get caption;
}

/// @nodoc
class _$RichBlockPhotoCopyWithImpl<$Res>
    implements $RichBlockPhotoCopyWith<$Res> {
  _$RichBlockPhotoCopyWithImpl(this._self, this._then);

  final RichBlockPhoto _self;
  final $Res Function(RichBlockPhoto) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? photo = null,
    Object? hasSpoiler = freezed,
    Object? caption = freezed,
  }) {
    return _then(
      RichBlockPhoto(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        photo: null == photo
            ? _self._photo
            : photo // ignore: cast_nullable_to_non_nullable
                  as List<PhotoSize>,
        hasSpoiler: freezed == hasSpoiler
            ? _self.hasSpoiler
            : hasSpoiler // ignore: cast_nullable_to_non_nullable
                  as bool?,
        caption: freezed == caption
            ? _self.caption
            : caption // ignore: cast_nullable_to_non_nullable
                  as RichBlockCaption?,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichBlockCaptionCopyWith<$Res>? get caption {
    if (_self.caption == null) {
      return null;
    }

    return $RichBlockCaptionCopyWith<$Res>(_self.caption!, (value) {
      return _then(_self.copyWith(caption: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockVideo implements RichBlock {
  const RichBlockVideo({
    @JsonKey(name: 'type') this.type = RichBlockType.video,
    @JsonKey(name: 'video') required this.video,
    @JsonKey(name: 'has_spoiler') this.hasSpoiler,
    @JsonKey(name: 'caption') this.caption,
  });
  factory RichBlockVideo.fromJson(Map<String, dynamic> json) =>
      _$RichBlockVideoFromJson(json);

  /// Type of the block, always "video"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// The video
  @JsonKey(name: 'video')
  final Video video;

  /// Optional. True, if the media preview is covered by a spoiler animation
  @JsonKey(name: 'has_spoiler')
  final bool? hasSpoiler;

  /// Optional. Caption of the block
  @JsonKey(name: 'caption')
  final RichBlockCaption? caption;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockVideoCopyWith<RichBlockVideo> get copyWith =>
      _$RichBlockVideoCopyWithImpl<RichBlockVideo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockVideoToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.video(type: $type, video: $video, hasSpoiler: $hasSpoiler, caption: $caption)';
  }
}

/// @nodoc
abstract mixin class $RichBlockVideoCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockVideoCopyWith(
    RichBlockVideo value,
    $Res Function(RichBlockVideo) _then,
  ) = _$RichBlockVideoCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'video') Video video,
    @JsonKey(name: 'has_spoiler') bool? hasSpoiler,
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  });

  $VideoCopyWith<$Res> get video;
  $RichBlockCaptionCopyWith<$Res>? get caption;
}

/// @nodoc
class _$RichBlockVideoCopyWithImpl<$Res>
    implements $RichBlockVideoCopyWith<$Res> {
  _$RichBlockVideoCopyWithImpl(this._self, this._then);

  final RichBlockVideo _self;
  final $Res Function(RichBlockVideo) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? video = null,
    Object? hasSpoiler = freezed,
    Object? caption = freezed,
  }) {
    return _then(
      RichBlockVideo(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        video: null == video
            ? _self.video
            : video // ignore: cast_nullable_to_non_nullable
                  as Video,
        hasSpoiler: freezed == hasSpoiler
            ? _self.hasSpoiler
            : hasSpoiler // ignore: cast_nullable_to_non_nullable
                  as bool?,
        caption: freezed == caption
            ? _self.caption
            : caption // ignore: cast_nullable_to_non_nullable
                  as RichBlockCaption?,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoCopyWith<$Res> get video {
    return $VideoCopyWith<$Res>(_self.video, (value) {
      return _then(_self.copyWith(video: value));
    });
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichBlockCaptionCopyWith<$Res>? get caption {
    if (_self.caption == null) {
      return null;
    }

    return $RichBlockCaptionCopyWith<$Res>(_self.caption!, (value) {
      return _then(_self.copyWith(caption: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockVoiceNote implements RichBlock {
  const RichBlockVoiceNote({
    @JsonKey(name: 'type') this.type = RichBlockType.voiceNote,
    @JsonKey(name: 'voice_note') required this.voiceNote,
    @JsonKey(name: 'caption') this.caption,
  });
  factory RichBlockVoiceNote.fromJson(Map<String, dynamic> json) =>
      _$RichBlockVoiceNoteFromJson(json);

  /// Type of the block, always "voice_note"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// The voice note
  @JsonKey(name: 'voice_note')
  final Voice voiceNote;

  /// Optional. Caption of the block
  @JsonKey(name: 'caption')
  final RichBlockCaption? caption;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockVoiceNoteCopyWith<RichBlockVoiceNote> get copyWith =>
      _$RichBlockVoiceNoteCopyWithImpl<RichBlockVoiceNote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockVoiceNoteToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.voiceNote(type: $type, voiceNote: $voiceNote, caption: $caption)';
  }
}

/// @nodoc
abstract mixin class $RichBlockVoiceNoteCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockVoiceNoteCopyWith(
    RichBlockVoiceNote value,
    $Res Function(RichBlockVoiceNote) _then,
  ) = _$RichBlockVoiceNoteCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'voice_note') Voice voiceNote,
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  });

  $VoiceCopyWith<$Res> get voiceNote;
  $RichBlockCaptionCopyWith<$Res>? get caption;
}

/// @nodoc
class _$RichBlockVoiceNoteCopyWithImpl<$Res>
    implements $RichBlockVoiceNoteCopyWith<$Res> {
  _$RichBlockVoiceNoteCopyWithImpl(this._self, this._then);

  final RichBlockVoiceNote _self;
  final $Res Function(RichBlockVoiceNote) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? voiceNote = null,
    Object? caption = freezed,
  }) {
    return _then(
      RichBlockVoiceNote(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        voiceNote: null == voiceNote
            ? _self.voiceNote
            : voiceNote // ignore: cast_nullable_to_non_nullable
                  as Voice,
        caption: freezed == caption
            ? _self.caption
            : caption // ignore: cast_nullable_to_non_nullable
                  as RichBlockCaption?,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VoiceCopyWith<$Res> get voiceNote {
    return $VoiceCopyWith<$Res>(_self.voiceNote, (value) {
      return _then(_self.copyWith(voiceNote: value));
    });
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichBlockCaptionCopyWith<$Res>? get caption {
    if (_self.caption == null) {
      return null;
    }

    return $RichBlockCaptionCopyWith<$Res>(_self.caption!, (value) {
      return _then(_self.copyWith(caption: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichBlockThinking implements RichBlock {
  const RichBlockThinking({
    @JsonKey(name: 'type') this.type = RichBlockType.thinking,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
  });
  factory RichBlockThinking.fromJson(Map<String, dynamic> json) =>
      _$RichBlockThinkingFromJson(json);

  /// Type of the block, always "thinking"
  @override
  @JsonKey(name: 'type')
  final RichBlockType type;

  /// Text of the block
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichBlockThinkingCopyWith<RichBlockThinking> get copyWith =>
      _$RichBlockThinkingCopyWithImpl<RichBlockThinking>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichBlockThinkingToJson(this);
  }

  @override
  String toString() {
    return 'RichBlock.thinking(type: $type, text: $text)';
  }
}

/// @nodoc
abstract mixin class $RichBlockThinkingCopyWith<$Res>
    implements $RichBlockCopyWith<$Res> {
  factory $RichBlockThinkingCopyWith(
    RichBlockThinking value,
    $Res Function(RichBlockThinking) _then,
  ) = _$RichBlockThinkingCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichBlockType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichBlockThinkingCopyWithImpl<$Res>
    implements $RichBlockThinkingCopyWith<$Res> {
  _$RichBlockThinkingCopyWithImpl(this._self, this._then);

  final RichBlockThinking _self;
  final $Res Function(RichBlockThinking) _then;

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null}) {
    return _then(
      RichBlockThinking(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichBlockType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
      ),
    );
  }

  /// Create a copy of RichBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res> get text {
    return $RichTextCopyWith<$Res>(_self.text, (value) {
      return _then(_self.copyWith(text: value));
    });
  }
}
