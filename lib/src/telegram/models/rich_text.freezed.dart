// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rich_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RichText _$RichTextFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'plain':
      return RichTextPlain.fromJson(json);
    case 'collection':
      return RichTextCollection.fromJson(json);
    case 'bold':
      return RichTextBold.fromJson(json);
    case 'italic':
      return RichTextItalic.fromJson(json);
    case 'underline':
      return RichTextUnderline.fromJson(json);
    case 'strikethrough':
      return RichTextStrikethrough.fromJson(json);
    case 'spoiler':
      return RichTextSpoiler.fromJson(json);
    case 'date_time':
      return RichTextDateTime.fromJson(json);
    case 'text_mention':
      return RichTextTextMention.fromJson(json);
    case 'subscript':
      return RichTextSubscript.fromJson(json);
    case 'superscript':
      return RichTextSuperscript.fromJson(json);
    case 'marked':
      return RichTextMarked.fromJson(json);
    case 'code':
      return RichTextCode.fromJson(json);
    case 'custom_emoji':
      return RichTextCustomEmoji.fromJson(json);
    case 'mathematical_expression':
      return RichTextMathematicalExpression.fromJson(json);
    case 'url':
      return RichTextUrl.fromJson(json);
    case 'email_address':
      return RichTextEmailAddress.fromJson(json);
    case 'phone_number':
      return RichTextPhoneNumber.fromJson(json);
    case 'bank_card_number':
      return RichTextBankCardNumber.fromJson(json);
    case 'mention':
      return RichTextMention.fromJson(json);
    case 'hashtag':
      return RichTextHashtag.fromJson(json);
    case 'cashtag':
      return RichTextCashtag.fromJson(json);
    case 'bot_command':
      return RichTextBotCommand.fromJson(json);
    case 'anchor':
      return RichTextAnchor.fromJson(json);
    case 'anchor_link':
      return RichTextAnchorLink.fromJson(json);
    case 'reference':
      return RichTextReference.fromJson(json);
    case 'reference_link':
      return RichTextReferenceLink.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'type',
        'RichText',
        'Invalid union type "${json['type']}"!',
      );
  }
}

/// @nodoc
mixin _$RichText {
  /// Type of the rich text, always "bold"
  @JsonKey(name: 'type')
  RichTextType get type;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<RichText> get copyWith =>
      _$RichTextCopyWithImpl<RichText>(this as RichText, _$identity);

  /// Serializes this RichText to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'RichText(type: $type)';
  }
}

/// @nodoc
abstract mixin class $RichTextCopyWith<$Res> {
  factory $RichTextCopyWith(RichText value, $Res Function(RichText) _then) =
      _$RichTextCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') RichTextType type});
}

/// @nodoc
class _$RichTextCopyWithImpl<$Res> implements $RichTextCopyWith<$Res> {
  _$RichTextCopyWithImpl(this._self, this._then);

  final RichText _self;
  final $Res Function(RichText) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null}) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [RichText].
extension RichTextPatterns on RichText {
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
    TResult Function(RichTextPlain value)? plain,
    TResult Function(RichTextCollection value)? collection,
    TResult Function(RichTextBold value)? bold,
    TResult Function(RichTextItalic value)? italic,
    TResult Function(RichTextUnderline value)? underline,
    TResult Function(RichTextStrikethrough value)? strikethrough,
    TResult Function(RichTextSpoiler value)? spoiler,
    TResult Function(RichTextDateTime value)? dateTime,
    TResult Function(RichTextTextMention value)? textMention,
    TResult Function(RichTextSubscript value)? subscript,
    TResult Function(RichTextSuperscript value)? superscript,
    TResult Function(RichTextMarked value)? marked,
    TResult Function(RichTextCode value)? code,
    TResult Function(RichTextCustomEmoji value)? customEmoji,
    TResult Function(RichTextMathematicalExpression value)?
    mathematicalExpression,
    TResult Function(RichTextUrl value)? url,
    TResult Function(RichTextEmailAddress value)? emailAddress,
    TResult Function(RichTextPhoneNumber value)? phoneNumber,
    TResult Function(RichTextBankCardNumber value)? bankCardNumber,
    TResult Function(RichTextMention value)? mention,
    TResult Function(RichTextHashtag value)? hashtag,
    TResult Function(RichTextCashtag value)? cashtag,
    TResult Function(RichTextBotCommand value)? botCommand,
    TResult Function(RichTextAnchor value)? anchor,
    TResult Function(RichTextAnchorLink value)? anchorLink,
    TResult Function(RichTextReference value)? reference,
    TResult Function(RichTextReferenceLink value)? referenceLink,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case RichTextPlain() when plain != null:
        return plain(_that);
      case RichTextCollection() when collection != null:
        return collection(_that);
      case RichTextBold() when bold != null:
        return bold(_that);
      case RichTextItalic() when italic != null:
        return italic(_that);
      case RichTextUnderline() when underline != null:
        return underline(_that);
      case RichTextStrikethrough() when strikethrough != null:
        return strikethrough(_that);
      case RichTextSpoiler() when spoiler != null:
        return spoiler(_that);
      case RichTextDateTime() when dateTime != null:
        return dateTime(_that);
      case RichTextTextMention() when textMention != null:
        return textMention(_that);
      case RichTextSubscript() when subscript != null:
        return subscript(_that);
      case RichTextSuperscript() when superscript != null:
        return superscript(_that);
      case RichTextMarked() when marked != null:
        return marked(_that);
      case RichTextCode() when code != null:
        return code(_that);
      case RichTextCustomEmoji() when customEmoji != null:
        return customEmoji(_that);
      case RichTextMathematicalExpression() when mathematicalExpression != null:
        return mathematicalExpression(_that);
      case RichTextUrl() when url != null:
        return url(_that);
      case RichTextEmailAddress() when emailAddress != null:
        return emailAddress(_that);
      case RichTextPhoneNumber() when phoneNumber != null:
        return phoneNumber(_that);
      case RichTextBankCardNumber() when bankCardNumber != null:
        return bankCardNumber(_that);
      case RichTextMention() when mention != null:
        return mention(_that);
      case RichTextHashtag() when hashtag != null:
        return hashtag(_that);
      case RichTextCashtag() when cashtag != null:
        return cashtag(_that);
      case RichTextBotCommand() when botCommand != null:
        return botCommand(_that);
      case RichTextAnchor() when anchor != null:
        return anchor(_that);
      case RichTextAnchorLink() when anchorLink != null:
        return anchorLink(_that);
      case RichTextReference() when reference != null:
        return reference(_that);
      case RichTextReferenceLink() when referenceLink != null:
        return referenceLink(_that);
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
    required TResult Function(RichTextPlain value) plain,
    required TResult Function(RichTextCollection value) collection,
    required TResult Function(RichTextBold value) bold,
    required TResult Function(RichTextItalic value) italic,
    required TResult Function(RichTextUnderline value) underline,
    required TResult Function(RichTextStrikethrough value) strikethrough,
    required TResult Function(RichTextSpoiler value) spoiler,
    required TResult Function(RichTextDateTime value) dateTime,
    required TResult Function(RichTextTextMention value) textMention,
    required TResult Function(RichTextSubscript value) subscript,
    required TResult Function(RichTextSuperscript value) superscript,
    required TResult Function(RichTextMarked value) marked,
    required TResult Function(RichTextCode value) code,
    required TResult Function(RichTextCustomEmoji value) customEmoji,
    required TResult Function(RichTextMathematicalExpression value)
    mathematicalExpression,
    required TResult Function(RichTextUrl value) url,
    required TResult Function(RichTextEmailAddress value) emailAddress,
    required TResult Function(RichTextPhoneNumber value) phoneNumber,
    required TResult Function(RichTextBankCardNumber value) bankCardNumber,
    required TResult Function(RichTextMention value) mention,
    required TResult Function(RichTextHashtag value) hashtag,
    required TResult Function(RichTextCashtag value) cashtag,
    required TResult Function(RichTextBotCommand value) botCommand,
    required TResult Function(RichTextAnchor value) anchor,
    required TResult Function(RichTextAnchorLink value) anchorLink,
    required TResult Function(RichTextReference value) reference,
    required TResult Function(RichTextReferenceLink value) referenceLink,
  }) {
    final _that = this;
    switch (_that) {
      case RichTextPlain():
        return plain(_that);
      case RichTextCollection():
        return collection(_that);
      case RichTextBold():
        return bold(_that);
      case RichTextItalic():
        return italic(_that);
      case RichTextUnderline():
        return underline(_that);
      case RichTextStrikethrough():
        return strikethrough(_that);
      case RichTextSpoiler():
        return spoiler(_that);
      case RichTextDateTime():
        return dateTime(_that);
      case RichTextTextMention():
        return textMention(_that);
      case RichTextSubscript():
        return subscript(_that);
      case RichTextSuperscript():
        return superscript(_that);
      case RichTextMarked():
        return marked(_that);
      case RichTextCode():
        return code(_that);
      case RichTextCustomEmoji():
        return customEmoji(_that);
      case RichTextMathematicalExpression():
        return mathematicalExpression(_that);
      case RichTextUrl():
        return url(_that);
      case RichTextEmailAddress():
        return emailAddress(_that);
      case RichTextPhoneNumber():
        return phoneNumber(_that);
      case RichTextBankCardNumber():
        return bankCardNumber(_that);
      case RichTextMention():
        return mention(_that);
      case RichTextHashtag():
        return hashtag(_that);
      case RichTextCashtag():
        return cashtag(_that);
      case RichTextBotCommand():
        return botCommand(_that);
      case RichTextAnchor():
        return anchor(_that);
      case RichTextAnchorLink():
        return anchorLink(_that);
      case RichTextReference():
        return reference(_that);
      case RichTextReferenceLink():
        return referenceLink(_that);
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
    TResult? Function(RichTextPlain value)? plain,
    TResult? Function(RichTextCollection value)? collection,
    TResult? Function(RichTextBold value)? bold,
    TResult? Function(RichTextItalic value)? italic,
    TResult? Function(RichTextUnderline value)? underline,
    TResult? Function(RichTextStrikethrough value)? strikethrough,
    TResult? Function(RichTextSpoiler value)? spoiler,
    TResult? Function(RichTextDateTime value)? dateTime,
    TResult? Function(RichTextTextMention value)? textMention,
    TResult? Function(RichTextSubscript value)? subscript,
    TResult? Function(RichTextSuperscript value)? superscript,
    TResult? Function(RichTextMarked value)? marked,
    TResult? Function(RichTextCode value)? code,
    TResult? Function(RichTextCustomEmoji value)? customEmoji,
    TResult? Function(RichTextMathematicalExpression value)?
    mathematicalExpression,
    TResult? Function(RichTextUrl value)? url,
    TResult? Function(RichTextEmailAddress value)? emailAddress,
    TResult? Function(RichTextPhoneNumber value)? phoneNumber,
    TResult? Function(RichTextBankCardNumber value)? bankCardNumber,
    TResult? Function(RichTextMention value)? mention,
    TResult? Function(RichTextHashtag value)? hashtag,
    TResult? Function(RichTextCashtag value)? cashtag,
    TResult? Function(RichTextBotCommand value)? botCommand,
    TResult? Function(RichTextAnchor value)? anchor,
    TResult? Function(RichTextAnchorLink value)? anchorLink,
    TResult? Function(RichTextReference value)? reference,
    TResult? Function(RichTextReferenceLink value)? referenceLink,
  }) {
    final _that = this;
    switch (_that) {
      case RichTextPlain() when plain != null:
        return plain(_that);
      case RichTextCollection() when collection != null:
        return collection(_that);
      case RichTextBold() when bold != null:
        return bold(_that);
      case RichTextItalic() when italic != null:
        return italic(_that);
      case RichTextUnderline() when underline != null:
        return underline(_that);
      case RichTextStrikethrough() when strikethrough != null:
        return strikethrough(_that);
      case RichTextSpoiler() when spoiler != null:
        return spoiler(_that);
      case RichTextDateTime() when dateTime != null:
        return dateTime(_that);
      case RichTextTextMention() when textMention != null:
        return textMention(_that);
      case RichTextSubscript() when subscript != null:
        return subscript(_that);
      case RichTextSuperscript() when superscript != null:
        return superscript(_that);
      case RichTextMarked() when marked != null:
        return marked(_that);
      case RichTextCode() when code != null:
        return code(_that);
      case RichTextCustomEmoji() when customEmoji != null:
        return customEmoji(_that);
      case RichTextMathematicalExpression() when mathematicalExpression != null:
        return mathematicalExpression(_that);
      case RichTextUrl() when url != null:
        return url(_that);
      case RichTextEmailAddress() when emailAddress != null:
        return emailAddress(_that);
      case RichTextPhoneNumber() when phoneNumber != null:
        return phoneNumber(_that);
      case RichTextBankCardNumber() when bankCardNumber != null:
        return bankCardNumber(_that);
      case RichTextMention() when mention != null:
        return mention(_that);
      case RichTextHashtag() when hashtag != null:
        return hashtag(_that);
      case RichTextCashtag() when cashtag != null:
        return cashtag(_that);
      case RichTextBotCommand() when botCommand != null:
        return botCommand(_that);
      case RichTextAnchor() when anchor != null:
        return anchor(_that);
      case RichTextAnchorLink() when anchorLink != null:
        return anchorLink(_that);
      case RichTextReference() when reference != null:
        return reference(_that);
      case RichTextReferenceLink() when referenceLink != null:
        return referenceLink(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class RichTextPlain implements RichText {
  const RichTextPlain({
    @JsonKey(name: 'type') this.type = RichTextType.plain,
    required this.text,
  });
  factory RichTextPlain.fromJson(Map<String, dynamic> json) =>
      _$RichTextPlainFromJson(json);

  @override
  @JsonKey(name: 'type')
  final RichTextType type;
  final String text;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextPlainCopyWith<RichTextPlain> get copyWith =>
      _$RichTextPlainCopyWithImpl<RichTextPlain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextPlainToJson(this);
  }

  @override
  String toString() {
    return 'RichText.plain(type: $type, text: $text)';
  }
}

/// @nodoc
abstract mixin class $RichTextPlainCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextPlainCopyWith(
    RichTextPlain value,
    $Res Function(RichTextPlain) _then,
  ) = _$RichTextPlainCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') RichTextType type, String text});
}

/// @nodoc
class _$RichTextPlainCopyWithImpl<$Res>
    implements $RichTextPlainCopyWith<$Res> {
  _$RichTextPlainCopyWithImpl(this._self, this._then);

  final RichTextPlain _self;
  final $Res Function(RichTextPlain) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null}) {
    return _then(
      RichTextPlain(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class RichTextCollection implements RichText {
  const RichTextCollection({
    @JsonKey(name: 'type') this.type = RichTextType.collection,
    required final List<RichText> texts,
  }) : _texts = texts;
  factory RichTextCollection.fromJson(Map<String, dynamic> json) =>
      _$RichTextCollectionFromJson(json);

  @override
  @JsonKey(name: 'type')
  final RichTextType type;
  final List<RichText> _texts;
  List<RichText> get texts {
    if (_texts is EqualUnmodifiableListView) return _texts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_texts);
  }

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextCollectionCopyWith<RichTextCollection> get copyWith =>
      _$RichTextCollectionCopyWithImpl<RichTextCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextCollectionToJson(this);
  }

  @override
  String toString() {
    return 'RichText.collection(type: $type, texts: $texts)';
  }
}

/// @nodoc
abstract mixin class $RichTextCollectionCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextCollectionCopyWith(
    RichTextCollection value,
    $Res Function(RichTextCollection) _then,
  ) = _$RichTextCollectionCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') RichTextType type, List<RichText> texts});
}

/// @nodoc
class _$RichTextCollectionCopyWithImpl<$Res>
    implements $RichTextCollectionCopyWith<$Res> {
  _$RichTextCollectionCopyWithImpl(this._self, this._then);

  final RichTextCollection _self;
  final $Res Function(RichTextCollection) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? texts = null}) {
    return _then(
      RichTextCollection(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        texts: null == texts
            ? _self._texts
            : texts // ignore: cast_nullable_to_non_nullable
                  as List<RichText>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class RichTextBold implements RichText {
  const RichTextBold({
    @JsonKey(name: 'type') this.type = RichTextType.bold,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
  });
  factory RichTextBold.fromJson(Map<String, dynamic> json) =>
      _$RichTextBoldFromJson(json);

  /// Type of the rich text, always "bold"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextBoldCopyWith<RichTextBold> get copyWith =>
      _$RichTextBoldCopyWithImpl<RichTextBold>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextBoldToJson(this);
  }

  @override
  String toString() {
    return 'RichText.bold(type: $type, text: $text)';
  }
}

/// @nodoc
abstract mixin class $RichTextBoldCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextBoldCopyWith(
    RichTextBold value,
    $Res Function(RichTextBold) _then,
  ) = _$RichTextBoldCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextBoldCopyWithImpl<$Res> implements $RichTextBoldCopyWith<$Res> {
  _$RichTextBoldCopyWithImpl(this._self, this._then);

  final RichTextBold _self;
  final $Res Function(RichTextBold) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null}) {
    return _then(
      RichTextBold(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextItalic implements RichText {
  const RichTextItalic({
    @JsonKey(name: 'type') this.type = RichTextType.italic,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
  });
  factory RichTextItalic.fromJson(Map<String, dynamic> json) =>
      _$RichTextItalicFromJson(json);

  /// Type of the rich text, always "italic"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextItalicCopyWith<RichTextItalic> get copyWith =>
      _$RichTextItalicCopyWithImpl<RichTextItalic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextItalicToJson(this);
  }

  @override
  String toString() {
    return 'RichText.italic(type: $type, text: $text)';
  }
}

/// @nodoc
abstract mixin class $RichTextItalicCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextItalicCopyWith(
    RichTextItalic value,
    $Res Function(RichTextItalic) _then,
  ) = _$RichTextItalicCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextItalicCopyWithImpl<$Res>
    implements $RichTextItalicCopyWith<$Res> {
  _$RichTextItalicCopyWithImpl(this._self, this._then);

  final RichTextItalic _self;
  final $Res Function(RichTextItalic) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null}) {
    return _then(
      RichTextItalic(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextUnderline implements RichText {
  const RichTextUnderline({
    @JsonKey(name: 'type') this.type = RichTextType.underline,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
  });
  factory RichTextUnderline.fromJson(Map<String, dynamic> json) =>
      _$RichTextUnderlineFromJson(json);

  /// Type of the rich text, always "underline"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextUnderlineCopyWith<RichTextUnderline> get copyWith =>
      _$RichTextUnderlineCopyWithImpl<RichTextUnderline>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextUnderlineToJson(this);
  }

  @override
  String toString() {
    return 'RichText.underline(type: $type, text: $text)';
  }
}

/// @nodoc
abstract mixin class $RichTextUnderlineCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextUnderlineCopyWith(
    RichTextUnderline value,
    $Res Function(RichTextUnderline) _then,
  ) = _$RichTextUnderlineCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextUnderlineCopyWithImpl<$Res>
    implements $RichTextUnderlineCopyWith<$Res> {
  _$RichTextUnderlineCopyWithImpl(this._self, this._then);

  final RichTextUnderline _self;
  final $Res Function(RichTextUnderline) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null}) {
    return _then(
      RichTextUnderline(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextStrikethrough implements RichText {
  const RichTextStrikethrough({
    @JsonKey(name: 'type') this.type = RichTextType.strikethrough,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
  });
  factory RichTextStrikethrough.fromJson(Map<String, dynamic> json) =>
      _$RichTextStrikethroughFromJson(json);

  /// Type of the rich text, always "strikethrough"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextStrikethroughCopyWith<RichTextStrikethrough> get copyWith =>
      _$RichTextStrikethroughCopyWithImpl<RichTextStrikethrough>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextStrikethroughToJson(this);
  }

  @override
  String toString() {
    return 'RichText.strikethrough(type: $type, text: $text)';
  }
}

/// @nodoc
abstract mixin class $RichTextStrikethroughCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextStrikethroughCopyWith(
    RichTextStrikethrough value,
    $Res Function(RichTextStrikethrough) _then,
  ) = _$RichTextStrikethroughCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextStrikethroughCopyWithImpl<$Res>
    implements $RichTextStrikethroughCopyWith<$Res> {
  _$RichTextStrikethroughCopyWithImpl(this._self, this._then);

  final RichTextStrikethrough _self;
  final $Res Function(RichTextStrikethrough) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null}) {
    return _then(
      RichTextStrikethrough(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextSpoiler implements RichText {
  const RichTextSpoiler({
    @JsonKey(name: 'type') this.type = RichTextType.spoiler,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
  });
  factory RichTextSpoiler.fromJson(Map<String, dynamic> json) =>
      _$RichTextSpoilerFromJson(json);

  /// Type of the rich text, always "spoiler"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextSpoilerCopyWith<RichTextSpoiler> get copyWith =>
      _$RichTextSpoilerCopyWithImpl<RichTextSpoiler>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextSpoilerToJson(this);
  }

  @override
  String toString() {
    return 'RichText.spoiler(type: $type, text: $text)';
  }
}

/// @nodoc
abstract mixin class $RichTextSpoilerCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextSpoilerCopyWith(
    RichTextSpoiler value,
    $Res Function(RichTextSpoiler) _then,
  ) = _$RichTextSpoilerCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextSpoilerCopyWithImpl<$Res>
    implements $RichTextSpoilerCopyWith<$Res> {
  _$RichTextSpoilerCopyWithImpl(this._self, this._then);

  final RichTextSpoiler _self;
  final $Res Function(RichTextSpoiler) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null}) {
    return _then(
      RichTextSpoiler(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextDateTime implements RichText {
  const RichTextDateTime({
    @JsonKey(name: 'type') this.type = RichTextType.dateTime,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'unix_time') required this.unixTime,
    @JsonKey(name: 'date_time_format') required this.dateTimeFormat,
  });
  factory RichTextDateTime.fromJson(Map<String, dynamic> json) =>
      _$RichTextDateTimeFromJson(json);

  /// Type of the rich text, always "date_time"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// The Unix time associated with the entity
  @JsonKey(name: 'unix_time')
  final int unixTime;

  /// The string that defines the formatting of the date and time.
  @JsonKey(name: 'date_time_format')
  final String dateTimeFormat;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextDateTimeCopyWith<RichTextDateTime> get copyWith =>
      _$RichTextDateTimeCopyWithImpl<RichTextDateTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextDateTimeToJson(this);
  }

  @override
  String toString() {
    return 'RichText.dateTime(type: $type, text: $text, unixTime: $unixTime, dateTimeFormat: $dateTimeFormat)';
  }
}

/// @nodoc
abstract mixin class $RichTextDateTimeCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextDateTimeCopyWith(
    RichTextDateTime value,
    $Res Function(RichTextDateTime) _then,
  ) = _$RichTextDateTimeCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'unix_time') int unixTime,
    @JsonKey(name: 'date_time_format') String dateTimeFormat,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextDateTimeCopyWithImpl<$Res>
    implements $RichTextDateTimeCopyWith<$Res> {
  _$RichTextDateTimeCopyWithImpl(this._self, this._then);

  final RichTextDateTime _self;
  final $Res Function(RichTextDateTime) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? unixTime = null,
    Object? dateTimeFormat = null,
  }) {
    return _then(
      RichTextDateTime(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        unixTime: null == unixTime
            ? _self.unixTime
            : unixTime // ignore: cast_nullable_to_non_nullable
                  as int,
        dateTimeFormat: null == dateTimeFormat
            ? _self.dateTimeFormat
            : dateTimeFormat // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextTextMention implements RichText {
  const RichTextTextMention({
    @JsonKey(name: 'type') this.type = RichTextType.textMention,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'user') required this.user,
  });
  factory RichTextTextMention.fromJson(Map<String, dynamic> json) =>
      _$RichTextTextMentionFromJson(json);

  /// Type of the rich text, always "text_mention"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// The mentioned user
  @JsonKey(name: 'user')
  final User user;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextTextMentionCopyWith<RichTextTextMention> get copyWith =>
      _$RichTextTextMentionCopyWithImpl<RichTextTextMention>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextTextMentionToJson(this);
  }

  @override
  String toString() {
    return 'RichText.textMention(type: $type, text: $text, user: $user)';
  }
}

/// @nodoc
abstract mixin class $RichTextTextMentionCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextTextMentionCopyWith(
    RichTextTextMention value,
    $Res Function(RichTextTextMention) _then,
  ) = _$RichTextTextMentionCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'user') User user,
  });

  $RichTextCopyWith<$Res> get text;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$RichTextTextMentionCopyWithImpl<$Res>
    implements $RichTextTextMentionCopyWith<$Res> {
  _$RichTextTextMentionCopyWithImpl(this._self, this._then);

  final RichTextTextMention _self;
  final $Res Function(RichTextTextMention) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null, Object? user = null}) {
    return _then(
      RichTextTextMention(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        user: null == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
      ),
    );
  }

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res> get text {
    return $RichTextCopyWith<$Res>(_self.text, (value) {
      return _then(_self.copyWith(text: value));
    });
  }

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RichTextSubscript implements RichText {
  const RichTextSubscript({
    @JsonKey(name: 'type') this.type = RichTextType.subscript,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
  });
  factory RichTextSubscript.fromJson(Map<String, dynamic> json) =>
      _$RichTextSubscriptFromJson(json);

  /// Type of the rich text, always "subscript"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextSubscriptCopyWith<RichTextSubscript> get copyWith =>
      _$RichTextSubscriptCopyWithImpl<RichTextSubscript>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextSubscriptToJson(this);
  }

  @override
  String toString() {
    return 'RichText.subscript(type: $type, text: $text)';
  }
}

/// @nodoc
abstract mixin class $RichTextSubscriptCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextSubscriptCopyWith(
    RichTextSubscript value,
    $Res Function(RichTextSubscript) _then,
  ) = _$RichTextSubscriptCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextSubscriptCopyWithImpl<$Res>
    implements $RichTextSubscriptCopyWith<$Res> {
  _$RichTextSubscriptCopyWithImpl(this._self, this._then);

  final RichTextSubscript _self;
  final $Res Function(RichTextSubscript) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null}) {
    return _then(
      RichTextSubscript(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextSuperscript implements RichText {
  const RichTextSuperscript({
    @JsonKey(name: 'type') this.type = RichTextType.superscript,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
  });
  factory RichTextSuperscript.fromJson(Map<String, dynamic> json) =>
      _$RichTextSuperscriptFromJson(json);

  /// Type of the rich text, always "superscript"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextSuperscriptCopyWith<RichTextSuperscript> get copyWith =>
      _$RichTextSuperscriptCopyWithImpl<RichTextSuperscript>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextSuperscriptToJson(this);
  }

  @override
  String toString() {
    return 'RichText.superscript(type: $type, text: $text)';
  }
}

/// @nodoc
abstract mixin class $RichTextSuperscriptCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextSuperscriptCopyWith(
    RichTextSuperscript value,
    $Res Function(RichTextSuperscript) _then,
  ) = _$RichTextSuperscriptCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextSuperscriptCopyWithImpl<$Res>
    implements $RichTextSuperscriptCopyWith<$Res> {
  _$RichTextSuperscriptCopyWithImpl(this._self, this._then);

  final RichTextSuperscript _self;
  final $Res Function(RichTextSuperscript) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null}) {
    return _then(
      RichTextSuperscript(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextMarked implements RichText {
  const RichTextMarked({
    @JsonKey(name: 'type') this.type = RichTextType.marked,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
  });
  factory RichTextMarked.fromJson(Map<String, dynamic> json) =>
      _$RichTextMarkedFromJson(json);

  /// Type of the rich text, always "marked"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextMarkedCopyWith<RichTextMarked> get copyWith =>
      _$RichTextMarkedCopyWithImpl<RichTextMarked>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextMarkedToJson(this);
  }

  @override
  String toString() {
    return 'RichText.marked(type: $type, text: $text)';
  }
}

/// @nodoc
abstract mixin class $RichTextMarkedCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextMarkedCopyWith(
    RichTextMarked value,
    $Res Function(RichTextMarked) _then,
  ) = _$RichTextMarkedCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextMarkedCopyWithImpl<$Res>
    implements $RichTextMarkedCopyWith<$Res> {
  _$RichTextMarkedCopyWithImpl(this._self, this._then);

  final RichTextMarked _self;
  final $Res Function(RichTextMarked) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null}) {
    return _then(
      RichTextMarked(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextCode implements RichText {
  const RichTextCode({
    @JsonKey(name: 'type') this.type = RichTextType.code,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
  });
  factory RichTextCode.fromJson(Map<String, dynamic> json) =>
      _$RichTextCodeFromJson(json);

  /// Type of the rich text, always "code"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextCodeCopyWith<RichTextCode> get copyWith =>
      _$RichTextCodeCopyWithImpl<RichTextCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextCodeToJson(this);
  }

  @override
  String toString() {
    return 'RichText.code(type: $type, text: $text)';
  }
}

/// @nodoc
abstract mixin class $RichTextCodeCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextCodeCopyWith(
    RichTextCode value,
    $Res Function(RichTextCode) _then,
  ) = _$RichTextCodeCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextCodeCopyWithImpl<$Res> implements $RichTextCodeCopyWith<$Res> {
  _$RichTextCodeCopyWithImpl(this._self, this._then);

  final RichTextCode _self;
  final $Res Function(RichTextCode) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null}) {
    return _then(
      RichTextCode(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextCustomEmoji implements RichText {
  const RichTextCustomEmoji({
    @JsonKey(name: 'type') this.type = RichTextType.customEmoji,
    @JsonKey(name: 'custom_emoji_id') required this.customEmojiId,
    @JsonKey(name: 'alternative_text') required this.alternativeText,
  });
  factory RichTextCustomEmoji.fromJson(Map<String, dynamic> json) =>
      _$RichTextCustomEmojiFromJson(json);

  /// Type of the rich text, always "custom_emoji"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// Unique identifier of the custom emoji
  @JsonKey(name: 'custom_emoji_id')
  final String customEmojiId;

  /// Alternative emoji for the custom emoji
  @JsonKey(name: 'alternative_text')
  final String alternativeText;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextCustomEmojiCopyWith<RichTextCustomEmoji> get copyWith =>
      _$RichTextCustomEmojiCopyWithImpl<RichTextCustomEmoji>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextCustomEmojiToJson(this);
  }

  @override
  String toString() {
    return 'RichText.customEmoji(type: $type, customEmojiId: $customEmojiId, alternativeText: $alternativeText)';
  }
}

/// @nodoc
abstract mixin class $RichTextCustomEmojiCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextCustomEmojiCopyWith(
    RichTextCustomEmoji value,
    $Res Function(RichTextCustomEmoji) _then,
  ) = _$RichTextCustomEmojiCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'custom_emoji_id') String customEmojiId,
    @JsonKey(name: 'alternative_text') String alternativeText,
  });
}

/// @nodoc
class _$RichTextCustomEmojiCopyWithImpl<$Res>
    implements $RichTextCustomEmojiCopyWith<$Res> {
  _$RichTextCustomEmojiCopyWithImpl(this._self, this._then);

  final RichTextCustomEmoji _self;
  final $Res Function(RichTextCustomEmoji) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? customEmojiId = null,
    Object? alternativeText = null,
  }) {
    return _then(
      RichTextCustomEmoji(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        customEmojiId: null == customEmojiId
            ? _self.customEmojiId
            : customEmojiId // ignore: cast_nullable_to_non_nullable
                  as String,
        alternativeText: null == alternativeText
            ? _self.alternativeText
            : alternativeText // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class RichTextMathematicalExpression implements RichText {
  const RichTextMathematicalExpression({
    @JsonKey(name: 'type') this.type = RichTextType.mathematicalExpression,
    @JsonKey(name: 'expression') required this.expression,
  });
  factory RichTextMathematicalExpression.fromJson(Map<String, dynamic> json) =>
      _$RichTextMathematicalExpressionFromJson(json);

  /// Type of the rich text, always "mathematical_expression"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The expression in LaTeX format
  @JsonKey(name: 'expression')
  final String expression;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextMathematicalExpressionCopyWith<RichTextMathematicalExpression>
  get copyWith =>
      _$RichTextMathematicalExpressionCopyWithImpl<
        RichTextMathematicalExpression
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextMathematicalExpressionToJson(this);
  }

  @override
  String toString() {
    return 'RichText.mathematicalExpression(type: $type, expression: $expression)';
  }
}

/// @nodoc
abstract mixin class $RichTextMathematicalExpressionCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextMathematicalExpressionCopyWith(
    RichTextMathematicalExpression value,
    $Res Function(RichTextMathematicalExpression) _then,
  ) = _$RichTextMathematicalExpressionCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'expression') String expression,
  });
}

/// @nodoc
class _$RichTextMathematicalExpressionCopyWithImpl<$Res>
    implements $RichTextMathematicalExpressionCopyWith<$Res> {
  _$RichTextMathematicalExpressionCopyWithImpl(this._self, this._then);

  final RichTextMathematicalExpression _self;
  final $Res Function(RichTextMathematicalExpression) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? expression = null}) {
    return _then(
      RichTextMathematicalExpression(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
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
class RichTextUrl implements RichText {
  const RichTextUrl({
    @JsonKey(name: 'type') this.type = RichTextType.url,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'url') required this.url,
  });
  factory RichTextUrl.fromJson(Map<String, dynamic> json) =>
      _$RichTextUrlFromJson(json);

  /// Type of the rich text, always "url"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// URL of the link
  @JsonKey(name: 'url')
  final String url;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextUrlCopyWith<RichTextUrl> get copyWith =>
      _$RichTextUrlCopyWithImpl<RichTextUrl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextUrlToJson(this);
  }

  @override
  String toString() {
    return 'RichText.url(type: $type, text: $text, url: $url)';
  }
}

/// @nodoc
abstract mixin class $RichTextUrlCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextUrlCopyWith(
    RichTextUrl value,
    $Res Function(RichTextUrl) _then,
  ) = _$RichTextUrlCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'url') String url,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextUrlCopyWithImpl<$Res> implements $RichTextUrlCopyWith<$Res> {
  _$RichTextUrlCopyWithImpl(this._self, this._then);

  final RichTextUrl _self;
  final $Res Function(RichTextUrl) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null, Object? url = null}) {
    return _then(
      RichTextUrl(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        url: null == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextEmailAddress implements RichText {
  const RichTextEmailAddress({
    @JsonKey(name: 'type') this.type = RichTextType.emailAddress,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'email_address') required this.emailAddress,
  });
  factory RichTextEmailAddress.fromJson(Map<String, dynamic> json) =>
      _$RichTextEmailAddressFromJson(json);

  /// Type of the rich text, always "email_address"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// The email address
  @JsonKey(name: 'email_address')
  final String emailAddress;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextEmailAddressCopyWith<RichTextEmailAddress> get copyWith =>
      _$RichTextEmailAddressCopyWithImpl<RichTextEmailAddress>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextEmailAddressToJson(this);
  }

  @override
  String toString() {
    return 'RichText.emailAddress(type: $type, text: $text, emailAddress: $emailAddress)';
  }
}

/// @nodoc
abstract mixin class $RichTextEmailAddressCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextEmailAddressCopyWith(
    RichTextEmailAddress value,
    $Res Function(RichTextEmailAddress) _then,
  ) = _$RichTextEmailAddressCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'email_address') String emailAddress,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextEmailAddressCopyWithImpl<$Res>
    implements $RichTextEmailAddressCopyWith<$Res> {
  _$RichTextEmailAddressCopyWithImpl(this._self, this._then);

  final RichTextEmailAddress _self;
  final $Res Function(RichTextEmailAddress) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? emailAddress = null,
  }) {
    return _then(
      RichTextEmailAddress(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        emailAddress: null == emailAddress
            ? _self.emailAddress
            : emailAddress // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextPhoneNumber implements RichText {
  const RichTextPhoneNumber({
    @JsonKey(name: 'type') this.type = RichTextType.phoneNumber,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'phone_number') required this.phoneNumber,
  });
  factory RichTextPhoneNumber.fromJson(Map<String, dynamic> json) =>
      _$RichTextPhoneNumberFromJson(json);

  /// Type of the rich text, always "phone_number"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// The phone number
  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextPhoneNumberCopyWith<RichTextPhoneNumber> get copyWith =>
      _$RichTextPhoneNumberCopyWithImpl<RichTextPhoneNumber>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextPhoneNumberToJson(this);
  }

  @override
  String toString() {
    return 'RichText.phoneNumber(type: $type, text: $text, phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class $RichTextPhoneNumberCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextPhoneNumberCopyWith(
    RichTextPhoneNumber value,
    $Res Function(RichTextPhoneNumber) _then,
  ) = _$RichTextPhoneNumberCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'phone_number') String phoneNumber,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextPhoneNumberCopyWithImpl<$Res>
    implements $RichTextPhoneNumberCopyWith<$Res> {
  _$RichTextPhoneNumberCopyWithImpl(this._self, this._then);

  final RichTextPhoneNumber _self;
  final $Res Function(RichTextPhoneNumber) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? phoneNumber = null,
  }) {
    return _then(
      RichTextPhoneNumber(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        phoneNumber: null == phoneNumber
            ? _self.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextBankCardNumber implements RichText {
  const RichTextBankCardNumber({
    @JsonKey(name: 'type') this.type = RichTextType.bankCardNumber,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'bank_card_number') required this.bankCardNumber,
  });
  factory RichTextBankCardNumber.fromJson(Map<String, dynamic> json) =>
      _$RichTextBankCardNumberFromJson(json);

  /// Type of the rich text, always "bank_card_number"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// The bank card number
  @JsonKey(name: 'bank_card_number')
  final String bankCardNumber;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextBankCardNumberCopyWith<RichTextBankCardNumber> get copyWith =>
      _$RichTextBankCardNumberCopyWithImpl<RichTextBankCardNumber>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextBankCardNumberToJson(this);
  }

  @override
  String toString() {
    return 'RichText.bankCardNumber(type: $type, text: $text, bankCardNumber: $bankCardNumber)';
  }
}

/// @nodoc
abstract mixin class $RichTextBankCardNumberCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextBankCardNumberCopyWith(
    RichTextBankCardNumber value,
    $Res Function(RichTextBankCardNumber) _then,
  ) = _$RichTextBankCardNumberCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'bank_card_number') String bankCardNumber,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextBankCardNumberCopyWithImpl<$Res>
    implements $RichTextBankCardNumberCopyWith<$Res> {
  _$RichTextBankCardNumberCopyWithImpl(this._self, this._then);

  final RichTextBankCardNumber _self;
  final $Res Function(RichTextBankCardNumber) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? bankCardNumber = null,
  }) {
    return _then(
      RichTextBankCardNumber(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        bankCardNumber: null == bankCardNumber
            ? _self.bankCardNumber
            : bankCardNumber // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextMention implements RichText {
  const RichTextMention({
    @JsonKey(name: 'type') this.type = RichTextType.mention,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'username') required this.username,
  });
  factory RichTextMention.fromJson(Map<String, dynamic> json) =>
      _$RichTextMentionFromJson(json);

  /// Type of the rich text, always "mention"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// The username
  @JsonKey(name: 'username')
  final String username;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextMentionCopyWith<RichTextMention> get copyWith =>
      _$RichTextMentionCopyWithImpl<RichTextMention>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextMentionToJson(this);
  }

  @override
  String toString() {
    return 'RichText.mention(type: $type, text: $text, username: $username)';
  }
}

/// @nodoc
abstract mixin class $RichTextMentionCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextMentionCopyWith(
    RichTextMention value,
    $Res Function(RichTextMention) _then,
  ) = _$RichTextMentionCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'username') String username,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextMentionCopyWithImpl<$Res>
    implements $RichTextMentionCopyWith<$Res> {
  _$RichTextMentionCopyWithImpl(this._self, this._then);

  final RichTextMention _self;
  final $Res Function(RichTextMention) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? username = null,
  }) {
    return _then(
      RichTextMention(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        username: null == username
            ? _self.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextHashtag implements RichText {
  const RichTextHashtag({
    @JsonKey(name: 'type') this.type = RichTextType.hashtag,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'hashtag') required this.hashtag,
  });
  factory RichTextHashtag.fromJson(Map<String, dynamic> json) =>
      _$RichTextHashtagFromJson(json);

  /// Type of the rich text, always "hashtag"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// The hashtag
  @JsonKey(name: 'hashtag')
  final String hashtag;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextHashtagCopyWith<RichTextHashtag> get copyWith =>
      _$RichTextHashtagCopyWithImpl<RichTextHashtag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextHashtagToJson(this);
  }

  @override
  String toString() {
    return 'RichText.hashtag(type: $type, text: $text, hashtag: $hashtag)';
  }
}

/// @nodoc
abstract mixin class $RichTextHashtagCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextHashtagCopyWith(
    RichTextHashtag value,
    $Res Function(RichTextHashtag) _then,
  ) = _$RichTextHashtagCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'hashtag') String hashtag,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextHashtagCopyWithImpl<$Res>
    implements $RichTextHashtagCopyWith<$Res> {
  _$RichTextHashtagCopyWithImpl(this._self, this._then);

  final RichTextHashtag _self;
  final $Res Function(RichTextHashtag) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? hashtag = null,
  }) {
    return _then(
      RichTextHashtag(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        hashtag: null == hashtag
            ? _self.hashtag
            : hashtag // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextCashtag implements RichText {
  const RichTextCashtag({
    @JsonKey(name: 'type') this.type = RichTextType.cashtag,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'cashtag') required this.cashtag,
  });
  factory RichTextCashtag.fromJson(Map<String, dynamic> json) =>
      _$RichTextCashtagFromJson(json);

  /// Type of the rich text, always "cashtag"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// The cashtag
  @JsonKey(name: 'cashtag')
  final String cashtag;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextCashtagCopyWith<RichTextCashtag> get copyWith =>
      _$RichTextCashtagCopyWithImpl<RichTextCashtag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextCashtagToJson(this);
  }

  @override
  String toString() {
    return 'RichText.cashtag(type: $type, text: $text, cashtag: $cashtag)';
  }
}

/// @nodoc
abstract mixin class $RichTextCashtagCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextCashtagCopyWith(
    RichTextCashtag value,
    $Res Function(RichTextCashtag) _then,
  ) = _$RichTextCashtagCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'cashtag') String cashtag,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextCashtagCopyWithImpl<$Res>
    implements $RichTextCashtagCopyWith<$Res> {
  _$RichTextCashtagCopyWithImpl(this._self, this._then);

  final RichTextCashtag _self;
  final $Res Function(RichTextCashtag) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? cashtag = null,
  }) {
    return _then(
      RichTextCashtag(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        cashtag: null == cashtag
            ? _self.cashtag
            : cashtag // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextBotCommand implements RichText {
  const RichTextBotCommand({
    @JsonKey(name: 'type') this.type = RichTextType.botCommand,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'bot_command') required this.botCommand,
  });
  factory RichTextBotCommand.fromJson(Map<String, dynamic> json) =>
      _$RichTextBotCommandFromJson(json);

  /// Type of the rich text, always "bot_command"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// The bot command
  @JsonKey(name: 'bot_command')
  final String botCommand;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextBotCommandCopyWith<RichTextBotCommand> get copyWith =>
      _$RichTextBotCommandCopyWithImpl<RichTextBotCommand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextBotCommandToJson(this);
  }

  @override
  String toString() {
    return 'RichText.botCommand(type: $type, text: $text, botCommand: $botCommand)';
  }
}

/// @nodoc
abstract mixin class $RichTextBotCommandCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextBotCommandCopyWith(
    RichTextBotCommand value,
    $Res Function(RichTextBotCommand) _then,
  ) = _$RichTextBotCommandCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'bot_command') String botCommand,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextBotCommandCopyWithImpl<$Res>
    implements $RichTextBotCommandCopyWith<$Res> {
  _$RichTextBotCommandCopyWithImpl(this._self, this._then);

  final RichTextBotCommand _self;
  final $Res Function(RichTextBotCommand) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? botCommand = null,
  }) {
    return _then(
      RichTextBotCommand(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        botCommand: null == botCommand
            ? _self.botCommand
            : botCommand // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextAnchor implements RichText {
  const RichTextAnchor({
    @JsonKey(name: 'type') this.type = RichTextType.anchor,
    @JsonKey(name: 'name') required this.name,
  });
  factory RichTextAnchor.fromJson(Map<String, dynamic> json) =>
      _$RichTextAnchorFromJson(json);

  /// Type of the rich text, always "anchor"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The name of the anchor
  @JsonKey(name: 'name')
  final String name;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextAnchorCopyWith<RichTextAnchor> get copyWith =>
      _$RichTextAnchorCopyWithImpl<RichTextAnchor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextAnchorToJson(this);
  }

  @override
  String toString() {
    return 'RichText.anchor(type: $type, name: $name)';
  }
}

/// @nodoc
abstract mixin class $RichTextAnchorCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextAnchorCopyWith(
    RichTextAnchor value,
    $Res Function(RichTextAnchor) _then,
  ) = _$RichTextAnchorCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'name') String name,
  });
}

/// @nodoc
class _$RichTextAnchorCopyWithImpl<$Res>
    implements $RichTextAnchorCopyWith<$Res> {
  _$RichTextAnchorCopyWithImpl(this._self, this._then);

  final RichTextAnchor _self;
  final $Res Function(RichTextAnchor) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? name = null}) {
    return _then(
      RichTextAnchor(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
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
class RichTextAnchorLink implements RichText {
  const RichTextAnchorLink({
    @JsonKey(name: 'type') this.type = RichTextType.anchorLink,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'anchor_name') required this.anchorName,
  });
  factory RichTextAnchorLink.fromJson(Map<String, dynamic> json) =>
      _$RichTextAnchorLinkFromJson(json);

  /// Type of the rich text, always "anchor_link"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The link text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// The name of the anchor
  @JsonKey(name: 'anchor_name')
  final String anchorName;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextAnchorLinkCopyWith<RichTextAnchorLink> get copyWith =>
      _$RichTextAnchorLinkCopyWithImpl<RichTextAnchorLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextAnchorLinkToJson(this);
  }

  @override
  String toString() {
    return 'RichText.anchorLink(type: $type, text: $text, anchorName: $anchorName)';
  }
}

/// @nodoc
abstract mixin class $RichTextAnchorLinkCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextAnchorLinkCopyWith(
    RichTextAnchorLink value,
    $Res Function(RichTextAnchorLink) _then,
  ) = _$RichTextAnchorLinkCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'anchor_name') String anchorName,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextAnchorLinkCopyWithImpl<$Res>
    implements $RichTextAnchorLinkCopyWith<$Res> {
  _$RichTextAnchorLinkCopyWithImpl(this._self, this._then);

  final RichTextAnchorLink _self;
  final $Res Function(RichTextAnchorLink) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? anchorName = null,
  }) {
    return _then(
      RichTextAnchorLink(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        anchorName: null == anchorName
            ? _self.anchorName
            : anchorName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextReference implements RichText {
  const RichTextReference({
    @JsonKey(name: 'type') this.type = RichTextType.reference,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'name') required this.name,
  });
  factory RichTextReference.fromJson(Map<String, dynamic> json) =>
      _$RichTextReferenceFromJson(json);

  /// Type of the rich text, always "reference"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// Text of the reference
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// The name of the reference
  @JsonKey(name: 'name')
  final String name;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextReferenceCopyWith<RichTextReference> get copyWith =>
      _$RichTextReferenceCopyWithImpl<RichTextReference>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextReferenceToJson(this);
  }

  @override
  String toString() {
    return 'RichText.reference(type: $type, text: $text, name: $name)';
  }
}

/// @nodoc
abstract mixin class $RichTextReferenceCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextReferenceCopyWith(
    RichTextReference value,
    $Res Function(RichTextReference) _then,
  ) = _$RichTextReferenceCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'name') String name,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextReferenceCopyWithImpl<$Res>
    implements $RichTextReferenceCopyWith<$Res> {
  _$RichTextReferenceCopyWithImpl(this._self, this._then);

  final RichTextReference _self;
  final $Res Function(RichTextReference) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? text = null, Object? name = null}) {
    return _then(
      RichTextReference(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of RichText
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
class RichTextReferenceLink implements RichText {
  const RichTextReferenceLink({
    @JsonKey(name: 'type') this.type = RichTextType.referenceLink,
    @JsonKey(name: 'text') @RichTextConverter() required this.text,
    @JsonKey(name: 'reference_name') required this.referenceName,
  });
  factory RichTextReferenceLink.fromJson(Map<String, dynamic> json) =>
      _$RichTextReferenceLinkFromJson(json);

  /// Type of the rich text, always "reference_link"
  @override
  @JsonKey(name: 'type')
  final RichTextType type;

  /// The link text
  @JsonKey(name: 'text')
  @RichTextConverter()
  final RichText text;

  /// The name of the reference
  @JsonKey(name: 'reference_name')
  final String referenceName;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextReferenceLinkCopyWith<RichTextReferenceLink> get copyWith =>
      _$RichTextReferenceLinkCopyWithImpl<RichTextReferenceLink>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$RichTextReferenceLinkToJson(this);
  }

  @override
  String toString() {
    return 'RichText.referenceLink(type: $type, text: $text, referenceName: $referenceName)';
  }
}

/// @nodoc
abstract mixin class $RichTextReferenceLinkCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $RichTextReferenceLinkCopyWith(
    RichTextReferenceLink value,
    $Res Function(RichTextReferenceLink) _then,
  ) = _$RichTextReferenceLinkCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') RichTextType type,
    @JsonKey(name: 'text') @RichTextConverter() RichText text,
    @JsonKey(name: 'reference_name') String referenceName,
  });

  $RichTextCopyWith<$Res> get text;
}

/// @nodoc
class _$RichTextReferenceLinkCopyWithImpl<$Res>
    implements $RichTextReferenceLinkCopyWith<$Res> {
  _$RichTextReferenceLinkCopyWithImpl(this._self, this._then);

  final RichTextReferenceLink _self;
  final $Res Function(RichTextReferenceLink) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? referenceName = null,
  }) {
    return _then(
      RichTextReferenceLink(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RichTextType,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as RichText,
        referenceName: null == referenceName
            ? _self.referenceName
            : referenceName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<$Res> get text {
    return $RichTextCopyWith<$Res>(_self.text, (value) {
      return _then(_self.copyWith(text: value));
    });
  }
}
