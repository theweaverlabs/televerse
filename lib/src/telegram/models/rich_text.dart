// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/televerse.dart';
import '../types/rich_text_type.dart';
import 'user.dart';

part 'rich_text.freezed.dart';
part 'rich_text.g.dart';

/// Interface to expose the `type` property on RichText
abstract interface class _WithRichTextType {
  /// Type of the rich text
  RichTextType get type;
}

/// This object represents a rich formatted text.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class RichText with _$RichText implements _WithRichTextType {
  /// Internal factory for plain text string representation
  const factory RichText.plain({
    @JsonKey(name: 'type') @Default(RichTextType.plain) RichTextType type,
    required String text,
  }) = RichTextPlain;

  /// Internal factory for collection array representation
  const factory RichText.collection({
    @JsonKey(name: 'type') @Default(RichTextType.collection) RichTextType type,
    required List<RichText> texts,
  }) = RichTextCollection;

  /// A bold text.
  const factory RichText.bold({
    /// Type of the rich text, always "bold"
    @JsonKey(name: 'type') @Default(RichTextType.bold) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,
  }) = RichTextBold;

  /// An italicized text.
  const factory RichText.italic({
    /// Type of the rich text, always "italic"
    @JsonKey(name: 'type') @Default(RichTextType.italic) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,
  }) = RichTextItalic;

  /// An underlined text.
  const factory RichText.underline({
    /// Type of the rich text, always "underline"
    @JsonKey(name: 'type') @Default(RichTextType.underline) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,
  }) = RichTextUnderline;

  /// A strikethrough text.
  const factory RichText.strikethrough({
    /// Type of the rich text, always "strikethrough"
    @JsonKey(name: 'type')
    @Default(RichTextType.strikethrough)
    RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,
  }) = RichTextStrikethrough;

  /// A text covered by a spoiler.
  const factory RichText.spoiler({
    /// Type of the rich text, always "spoiler"
    @JsonKey(name: 'type') @Default(RichTextType.spoiler) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,
  }) = RichTextSpoiler;

  /// Formatted date and time.
  const factory RichText.dateTime({
    /// Type of the rich text, always "date_time"
    @JsonKey(name: 'type') @Default(RichTextType.dateTime) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// The Unix time associated with the entity
    @JsonKey(name: 'unix_time') required int unixTime,

    /// The string that defines the formatting of the date and time.
    @JsonKey(name: 'date_time_format') required String dateTimeFormat,
  }) = RichTextDateTime;

  /// A mention of a Telegram user by their identifier.
  const factory RichText.textMention({
    /// Type of the rich text, always "text_mention"
    @JsonKey(name: 'type') @Default(RichTextType.textMention) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// The mentioned user
    @JsonKey(name: 'user') required User user,
  }) = RichTextTextMention;

  /// A subscript text.
  const factory RichText.subscript({
    /// Type of the rich text, always "subscript"
    @JsonKey(name: 'type') @Default(RichTextType.subscript) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,
  }) = RichTextSubscript;

  /// A superscript text.
  const factory RichText.superscript({
    /// Type of the rich text, always "superscript"
    @JsonKey(name: 'type') @Default(RichTextType.superscript) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,
  }) = RichTextSuperscript;

  /// A marked text.
  const factory RichText.marked({
    /// Type of the rich text, always "marked"
    @JsonKey(name: 'type') @Default(RichTextType.marked) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,
  }) = RichTextMarked;

  /// A monowidth text.
  const factory RichText.code({
    /// Type of the rich text, always "code"
    @JsonKey(name: 'type') @Default(RichTextType.code) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,
  }) = RichTextCode;

  /// A custom emoji.
  const factory RichText.customEmoji({
    /// Type of the rich text, always "custom_emoji"
    @JsonKey(name: 'type') @Default(RichTextType.customEmoji) RichTextType type,

    /// Unique identifier of the custom emoji
    @JsonKey(name: 'custom_emoji_id') required String customEmojiId,

    /// Alternative emoji for the custom emoji
    @JsonKey(name: 'alternative_text') required String alternativeText,
  }) = RichTextCustomEmoji;

  /// A mathematical expression.
  const factory RichText.mathematicalExpression({
    /// Type of the rich text, always "mathematical_expression"
    @JsonKey(name: 'type')
    @Default(RichTextType.mathematicalExpression)
    RichTextType type,

    /// The expression in LaTeX format
    @JsonKey(name: 'expression') required String expression,
  }) = RichTextMathematicalExpression;

  /// A text with a link.
  const factory RichText.url({
    /// Type of the rich text, always "url"
    @JsonKey(name: 'type') @Default(RichTextType.url) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// URL of the link
    @JsonKey(name: 'url') required String url,
  }) = RichTextUrl;

  /// A text with an email address.
  const factory RichText.emailAddress({
    /// Type of the rich text, always "email_address"
    @JsonKey(name: 'type')
    @Default(RichTextType.emailAddress)
    RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// The email address
    @JsonKey(name: 'email_address') required String emailAddress,
  }) = RichTextEmailAddress;

  /// A text with a phone number.
  const factory RichText.phoneNumber({
    /// Type of the rich text, always "phone_number"
    @JsonKey(name: 'type') @Default(RichTextType.phoneNumber) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// The phone number
    @JsonKey(name: 'phone_number') required String phoneNumber,
  }) = RichTextPhoneNumber;

  /// A text with a bank card number.
  const factory RichText.bankCardNumber({
    /// Type of the rich text, always "bank_card_number"
    @JsonKey(name: 'type')
    @Default(RichTextType.bankCardNumber)
    RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// The bank card number
    @JsonKey(name: 'bank_card_number') required String bankCardNumber,
  }) = RichTextBankCardNumber;

  /// A mention by a username.
  const factory RichText.mention({
    /// Type of the rich text, always "mention"
    @JsonKey(name: 'type') @Default(RichTextType.mention) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// The username
    @JsonKey(name: 'username') required String username,
  }) = RichTextMention;

  /// A hashtag.
  const factory RichText.hashtag({
    /// Type of the rich text, always "hashtag"
    @JsonKey(name: 'type') @Default(RichTextType.hashtag) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// The hashtag
    @JsonKey(name: 'hashtag') required String hashtag,
  }) = RichTextHashtag;

  /// A cashtag.
  const factory RichText.cashtag({
    /// Type of the rich text, always "cashtag"
    @JsonKey(name: 'type') @Default(RichTextType.cashtag) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// The cashtag
    @JsonKey(name: 'cashtag') required String cashtag,
  }) = RichTextCashtag;

  /// A bot command.
  const factory RichText.botCommand({
    /// Type of the rich text, always "bot_command"
    @JsonKey(name: 'type') @Default(RichTextType.botCommand) RichTextType type,

    /// The text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// The bot command
    @JsonKey(name: 'bot_command') required String botCommand,
  }) = RichTextBotCommand;

  /// An anchor.
  const factory RichText.anchor({
    /// Type of the rich text, always "anchor"
    @JsonKey(name: 'type') @Default(RichTextType.anchor) RichTextType type,

    /// The name of the anchor
    @JsonKey(name: 'name') required String name,
  }) = RichTextAnchor;

  /// A link to an anchor.
  const factory RichText.anchorLink({
    /// Type of the rich text, always "anchor_link"
    @JsonKey(name: 'type') @Default(RichTextType.anchorLink) RichTextType type,

    /// The link text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// The name of the anchor
    @JsonKey(name: 'anchor_name') required String anchorName,
  }) = RichTextAnchorLink;

  /// A reference.
  const factory RichText.reference({
    /// Type of the rich text, always "reference"
    @JsonKey(name: 'type') @Default(RichTextType.reference) RichTextType type,

    /// Text of the reference
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// The name of the reference
    @JsonKey(name: 'name') required String name,
  }) = RichTextReference;

  /// A link to a reference.
  const factory RichText.referenceLink({
    /// Type of the rich text, always "reference_link"
    @JsonKey(name: 'type')
    @Default(RichTextType.referenceLink)
    RichTextType type,

    /// The link text
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// The name of the reference
    @JsonKey(name: 'reference_name') required String referenceName,
  }) = RichTextReferenceLink;

  /// Creates a [RichText] object from JSON.
  factory RichText.fromJson(Map<String, dynamic> json) =>
      _$RichTextFromJson(json);
}

/// A converter that handles serialization/deserialization for RichText
class RichTextConverter implements JsonConverter<RichText, dynamic> {
  /// Creates a new [RichTextConverter] object.
  const RichTextConverter();

  @override
  RichText fromJson(dynamic json) {
    if (json is String) {
      return RichText.plain(text: json);
    }
    if (json is List) {
      return RichText.collection(
        texts: json.map((e) => const RichTextConverter().fromJson(e)).toList(),
      );
    }
    if (json is Map<String, dynamic>) {
      return RichText.fromJson(json);
    }
    throw TeleverseException(
      'Invalid RichText JSON',
      type: TeleverseExceptionType.invalidParameter,
    );
  }

  @override
  dynamic toJson(RichText object) {
    if (object is RichTextPlain) {
      return object.text;
    }
    if (object is RichTextCollection) {
      return object.texts
          .map((e) => const RichTextConverter().toJson(e))
          .toList();
    }
    return (object as dynamic).toJson();
  }
}
