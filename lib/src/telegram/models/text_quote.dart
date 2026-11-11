// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'message_entity.dart';
import 'rich_text.dart';

part 'text_quote.freezed.dart';
part 'text_quote.g.dart';

/// Contains information about the quoted part of a message that is replied to
/// by the given message.
@freezed
abstract class TextQuote with _$TextQuote {
  /// Constructs a `TextQuote`.
  const factory TextQuote({
    /// Text of the quoted part. May be empty for a quote from a rich message.
    @JsonKey(name: 'text') required String text,

    /// Special entities that appear in the quote. Currently, only bold, italic,
    /// underline, strikethrough, spoiler, custom_emoji, and date_time entities
    /// are kept in quotes.
    @JsonKey(name: 'entities') List<MessageEntity>? entities,

    /// Rich text of the quote, when selected from a rich message.
    @JsonKey(name: 'rich_texts') @RichTextConverter() List<RichText>? richTexts,

    /// Approximate quote position in the original message in UTF-16 code units
    /// as specified by the sender. For rich messages, the position is measured
    /// in the plain text of all quotable texts joined by line feeds.
    @JsonKey(name: 'position') required int position,

    /// True, if the quote was chosen manually by the message sender. Otherwise,
    /// the quote was added automatically by the server.
    @JsonKey(name: 'is_manual') bool? isManual,
  }) = _TextQuote;

  /// Creates a `TextQuote` object from a JSON object.
  factory TextQuote.fromJson(Map<String, dynamic> json) =>
      _$TextQuoteFromJson(json);
}
