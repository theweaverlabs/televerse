// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rich_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RichTextPlain _$RichTextPlainFromJson(Map<String, dynamic> json) =>
    RichTextPlain(
      type: json['type'] == null
          ? RichTextType.plain
          : RichTextType.fromJson(json['type'] as String),
      text: json['text'] as String,
    );

Map<String, dynamic> _$RichTextPlainToJson(RichTextPlain instance) =>
    <String, dynamic>{'type': instance.type, 'text': instance.text};

RichTextCollection _$RichTextCollectionFromJson(Map<String, dynamic> json) =>
    RichTextCollection(
      type: json['type'] == null
          ? RichTextType.collection
          : RichTextType.fromJson(json['type'] as String),
      texts: (json['texts'] as List<dynamic>)
          .map((e) => RichText.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RichTextCollectionToJson(RichTextCollection instance) =>
    <String, dynamic>{'type': instance.type, 'texts': instance.texts};

RichTextBold _$RichTextBoldFromJson(Map<String, dynamic> json) => RichTextBold(
  type: json['type'] == null
      ? RichTextType.bold
      : RichTextType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text']),
);

Map<String, dynamic> _$RichTextBoldToJson(RichTextBold instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
    };

RichTextItalic _$RichTextItalicFromJson(Map<String, dynamic> json) =>
    RichTextItalic(
      type: json['type'] == null
          ? RichTextType.italic
          : RichTextType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
    );

Map<String, dynamic> _$RichTextItalicToJson(RichTextItalic instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
    };

RichTextUnderline _$RichTextUnderlineFromJson(Map<String, dynamic> json) =>
    RichTextUnderline(
      type: json['type'] == null
          ? RichTextType.underline
          : RichTextType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
    );

Map<String, dynamic> _$RichTextUnderlineToJson(RichTextUnderline instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
    };

RichTextStrikethrough _$RichTextStrikethroughFromJson(
  Map<String, dynamic> json,
) => RichTextStrikethrough(
  type: json['type'] == null
      ? RichTextType.strikethrough
      : RichTextType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text']),
);

Map<String, dynamic> _$RichTextStrikethroughToJson(
  RichTextStrikethrough instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': ?const RichTextConverter().toJson(instance.text),
};

RichTextSpoiler _$RichTextSpoilerFromJson(Map<String, dynamic> json) =>
    RichTextSpoiler(
      type: json['type'] == null
          ? RichTextType.spoiler
          : RichTextType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
    );

Map<String, dynamic> _$RichTextSpoilerToJson(RichTextSpoiler instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
    };

RichTextDateTime _$RichTextDateTimeFromJson(Map<String, dynamic> json) =>
    RichTextDateTime(
      type: json['type'] == null
          ? RichTextType.dateTime
          : RichTextType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
      unixTime: (json['unix_time'] as num).toInt(),
      dateTimeFormat: json['date_time_format'] as String,
    );

Map<String, dynamic> _$RichTextDateTimeToJson(RichTextDateTime instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
      'unix_time': instance.unixTime,
      'date_time_format': instance.dateTimeFormat,
    };

RichTextTextMention _$RichTextTextMentionFromJson(Map<String, dynamic> json) =>
    RichTextTextMention(
      type: json['type'] == null
          ? RichTextType.textMention
          : RichTextType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RichTextTextMentionToJson(
  RichTextTextMention instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': ?const RichTextConverter().toJson(instance.text),
  'user': instance.user,
};

RichTextSubscript _$RichTextSubscriptFromJson(Map<String, dynamic> json) =>
    RichTextSubscript(
      type: json['type'] == null
          ? RichTextType.subscript
          : RichTextType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
    );

Map<String, dynamic> _$RichTextSubscriptToJson(RichTextSubscript instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
    };

RichTextSuperscript _$RichTextSuperscriptFromJson(Map<String, dynamic> json) =>
    RichTextSuperscript(
      type: json['type'] == null
          ? RichTextType.superscript
          : RichTextType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
    );

Map<String, dynamic> _$RichTextSuperscriptToJson(
  RichTextSuperscript instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': ?const RichTextConverter().toJson(instance.text),
};

RichTextMarked _$RichTextMarkedFromJson(Map<String, dynamic> json) =>
    RichTextMarked(
      type: json['type'] == null
          ? RichTextType.marked
          : RichTextType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
    );

Map<String, dynamic> _$RichTextMarkedToJson(RichTextMarked instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
    };

RichTextCode _$RichTextCodeFromJson(Map<String, dynamic> json) => RichTextCode(
  type: json['type'] == null
      ? RichTextType.code
      : RichTextType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text']),
);

Map<String, dynamic> _$RichTextCodeToJson(RichTextCode instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
    };

RichTextCustomEmoji _$RichTextCustomEmojiFromJson(Map<String, dynamic> json) =>
    RichTextCustomEmoji(
      type: json['type'] == null
          ? RichTextType.customEmoji
          : RichTextType.fromJson(json['type'] as String),
      customEmojiId: json['custom_emoji_id'] as String,
      alternativeText: json['alternative_text'] as String,
    );

Map<String, dynamic> _$RichTextCustomEmojiToJson(
  RichTextCustomEmoji instance,
) => <String, dynamic>{
  'type': instance.type,
  'custom_emoji_id': instance.customEmojiId,
  'alternative_text': instance.alternativeText,
};

RichTextMathematicalExpression _$RichTextMathematicalExpressionFromJson(
  Map<String, dynamic> json,
) => RichTextMathematicalExpression(
  type: json['type'] == null
      ? RichTextType.mathematicalExpression
      : RichTextType.fromJson(json['type'] as String),
  expression: json['expression'] as String,
);

Map<String, dynamic> _$RichTextMathematicalExpressionToJson(
  RichTextMathematicalExpression instance,
) => <String, dynamic>{
  'type': instance.type,
  'expression': instance.expression,
};

RichTextUrl _$RichTextUrlFromJson(Map<String, dynamic> json) => RichTextUrl(
  type: json['type'] == null
      ? RichTextType.url
      : RichTextType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text']),
  url: json['url'] as String,
);

Map<String, dynamic> _$RichTextUrlToJson(RichTextUrl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
      'url': instance.url,
    };

RichTextEmailAddress _$RichTextEmailAddressFromJson(
  Map<String, dynamic> json,
) => RichTextEmailAddress(
  type: json['type'] == null
      ? RichTextType.emailAddress
      : RichTextType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text']),
  emailAddress: json['email_address'] as String,
);

Map<String, dynamic> _$RichTextEmailAddressToJson(
  RichTextEmailAddress instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': ?const RichTextConverter().toJson(instance.text),
  'email_address': instance.emailAddress,
};

RichTextPhoneNumber _$RichTextPhoneNumberFromJson(Map<String, dynamic> json) =>
    RichTextPhoneNumber(
      type: json['type'] == null
          ? RichTextType.phoneNumber
          : RichTextType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
      phoneNumber: json['phone_number'] as String,
    );

Map<String, dynamic> _$RichTextPhoneNumberToJson(
  RichTextPhoneNumber instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': ?const RichTextConverter().toJson(instance.text),
  'phone_number': instance.phoneNumber,
};

RichTextBankCardNumber _$RichTextBankCardNumberFromJson(
  Map<String, dynamic> json,
) => RichTextBankCardNumber(
  type: json['type'] == null
      ? RichTextType.bankCardNumber
      : RichTextType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text']),
  bankCardNumber: json['bank_card_number'] as String,
);

Map<String, dynamic> _$RichTextBankCardNumberToJson(
  RichTextBankCardNumber instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': ?const RichTextConverter().toJson(instance.text),
  'bank_card_number': instance.bankCardNumber,
};

RichTextMention _$RichTextMentionFromJson(Map<String, dynamic> json) =>
    RichTextMention(
      type: json['type'] == null
          ? RichTextType.mention
          : RichTextType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
      username: json['username'] as String,
    );

Map<String, dynamic> _$RichTextMentionToJson(RichTextMention instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
      'username': instance.username,
    };

RichTextHashtag _$RichTextHashtagFromJson(Map<String, dynamic> json) =>
    RichTextHashtag(
      type: json['type'] == null
          ? RichTextType.hashtag
          : RichTextType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
      hashtag: json['hashtag'] as String,
    );

Map<String, dynamic> _$RichTextHashtagToJson(RichTextHashtag instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
      'hashtag': instance.hashtag,
    };

RichTextCashtag _$RichTextCashtagFromJson(Map<String, dynamic> json) =>
    RichTextCashtag(
      type: json['type'] == null
          ? RichTextType.cashtag
          : RichTextType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
      cashtag: json['cashtag'] as String,
    );

Map<String, dynamic> _$RichTextCashtagToJson(RichTextCashtag instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
      'cashtag': instance.cashtag,
    };

RichTextBotCommand _$RichTextBotCommandFromJson(Map<String, dynamic> json) =>
    RichTextBotCommand(
      type: json['type'] == null
          ? RichTextType.botCommand
          : RichTextType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
      botCommand: json['bot_command'] as String,
    );

Map<String, dynamic> _$RichTextBotCommandToJson(RichTextBotCommand instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
      'bot_command': instance.botCommand,
    };

RichTextAnchor _$RichTextAnchorFromJson(Map<String, dynamic> json) =>
    RichTextAnchor(
      type: json['type'] == null
          ? RichTextType.anchor
          : RichTextType.fromJson(json['type'] as String),
      name: json['name'] as String,
    );

Map<String, dynamic> _$RichTextAnchorToJson(RichTextAnchor instance) =>
    <String, dynamic>{'type': instance.type, 'name': instance.name};

RichTextAnchorLink _$RichTextAnchorLinkFromJson(Map<String, dynamic> json) =>
    RichTextAnchorLink(
      type: json['type'] == null
          ? RichTextType.anchorLink
          : RichTextType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
      anchorName: json['anchor_name'] as String,
    );

Map<String, dynamic> _$RichTextAnchorLinkToJson(RichTextAnchorLink instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
      'anchor_name': instance.anchorName,
    };

RichTextReference _$RichTextReferenceFromJson(Map<String, dynamic> json) =>
    RichTextReference(
      type: json['type'] == null
          ? RichTextType.reference
          : RichTextType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$RichTextReferenceToJson(RichTextReference instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
      'name': instance.name,
    };

RichTextReferenceLink _$RichTextReferenceLinkFromJson(
  Map<String, dynamic> json,
) => RichTextReferenceLink(
  type: json['type'] == null
      ? RichTextType.referenceLink
      : RichTextType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text']),
  referenceName: json['reference_name'] as String,
);

Map<String, dynamic> _$RichTextReferenceLinkToJson(
  RichTextReferenceLink instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': ?const RichTextConverter().toJson(instance.text),
  'reference_name': instance.referenceName,
};
