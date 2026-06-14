/// Type of the rich text.
enum RichTextType {
  /// Plain text (Internal type used for String parsing)
  plain("plain"),

  /// Collection of RichText (Internal type used for List parsing)
  collection("collection"),

  /// A bold text.
  bold("bold"),

  /// An italicized text.
  italic("italic"),

  /// An underlined text.
  underline("underline"),

  /// A strikethrough text.
  strikethrough("strikethrough"),

  /// A text covered by a spoiler.
  spoiler("spoiler"),

  /// Formatted date and time.
  dateTime("date_time"),

  /// A mention of a Telegram user by their identifier.
  textMention("text_mention"),

  /// A subscript text.
  subscript("subscript"),

  /// A superscript text.
  superscript("superscript"),

  /// A marked text.
  marked("marked"),

  /// A monowidth text.
  code("code"),

  /// A custom emoji.
  customEmoji("custom_emoji"),

  /// A mathematical expression.
  mathematicalExpression("mathematical_expression"),

  /// A text with a link.
  url("url"),

  /// A text with an email address.
  emailAddress("email_address"),

  /// A text with a phone number.
  phoneNumber("phone_number"),

  /// A text with a bank card number.
  bankCardNumber("bank_card_number"),

  /// A mention by a username.
  mention("mention"),

  /// A hashtag.
  hashtag("hashtag"),

  /// A cashtag.
  cashtag("cashtag"),

  /// A bot command.
  botCommand("bot_command"),

  /// An anchor.
  anchor("anchor"),

  /// A link to an anchor.
  anchorLink("anchor_link"),

  /// A reference.
  reference("reference"),

  /// A link to a reference.
  referenceLink("reference_link");

  /// The value of the enum.
  final String value;

  /// Creates a new [RichTextType] object.
  const RichTextType(this.value);

  /// Creates a new [RichTextType] object from a string.
  factory RichTextType.fromJson(String value) {
    return RichTextType.values.firstWhere(
      (e) => e.value == value,
      orElse: () => RichTextType.plain,
    );
  }

  /// Converts a [RichTextType] to a string.
  String toJson() => value;
}
