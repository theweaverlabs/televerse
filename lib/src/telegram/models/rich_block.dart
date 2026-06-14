// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import '../types/rich_block_type.dart';
import 'rich_text.dart';
import 'rich_block_caption.dart';
import 'rich_block_list_item.dart';
import 'rich_block_table_cell.dart';
import 'location.dart';
import 'animation.dart';
import 'audio.dart';
import 'photo_size.dart';
import 'video.dart';
import 'voice.dart';

part 'rich_block.freezed.dart';
part 'rich_block.g.dart';

/// Interface to expose the `type` property on RichBlock
abstract interface class _WithRichBlockType {
  /// Type of the rich block
  RichBlockType get type;
}

/// This object represents a block in a rich formatted message.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class RichBlock with _$RichBlock implements _WithRichBlockType {
  /// A text paragraph, corresponding to the HTML tag &lt;p&gt;.
  const factory RichBlock.paragraph({
    /// Type of the block, always "paragraph"
    @JsonKey(name: 'type') @Default(RichBlockType.paragraph) RichBlockType type,

    /// Text of the block
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,
  }) = RichBlockParagraph;

  /// A section heading, corresponding to the HTML tags &lt;h1&gt;, &lt;h2&gt;, &lt;h3&gt;, &lt;h4&gt;, &lt;h5&gt;, or &lt;h6&gt;.
  const factory RichBlock.heading({
    /// Type of the block, always "heading"
    @JsonKey(name: 'type') @Default(RichBlockType.heading) RichBlockType type,

    /// Text of the block
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// Relative size of the text font; 1-6, 1 is the largest, 6 is the smallest
    @JsonKey(name: 'size') required int size,
  }) = RichBlockSectionHeading;

  /// A preformatted text block, corresponding to the nested HTML tags &lt;pre&gt; and &lt;code&gt;.
  const factory RichBlock.pre({
    /// Type of the block, always "pre"
    @JsonKey(name: 'type') @Default(RichBlockType.pre) RichBlockType type,

    /// Text of the block
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// Optional. The programming language of the text
    @JsonKey(name: 'language') String? language,
  }) = RichBlockPreformatted;

  /// A footer, corresponding to the HTML tag &lt;footer&gt;.
  const factory RichBlock.footer({
    /// Type of the block, always "footer"
    @JsonKey(name: 'type') @Default(RichBlockType.footer) RichBlockType type,

    /// Text of the block
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,
  }) = RichBlockFooter;

  /// A divider, corresponding to the HTML tag &lt;hr/&gt;.
  const factory RichBlock.divider({
    /// Type of the block, always "divider"
    @JsonKey(name: 'type') @Default(RichBlockType.divider) RichBlockType type,
  }) = RichBlockDivider;

  /// A block with a mathematical expression in LaTeX format, corresponding to the custom HTML tag &lt;tg-math-block&gt;.
  const factory RichBlock.mathematicalExpression({
    /// Type of the block, always "mathematical_expression"
    @JsonKey(name: 'type')
    @Default(RichBlockType.mathematicalExpression)
    RichBlockType type,

    /// The mathematical expression in LaTeX format
    @JsonKey(name: 'expression') required String expression,
  }) = RichBlockMathematicalExpression;

  /// A block with an anchor, corresponding to the HTML tag &lt;a&gt; with the attribute name.
  const factory RichBlock.anchor({
    /// Type of the block, always "anchor"
    @JsonKey(name: 'type') @Default(RichBlockType.anchor) RichBlockType type,

    /// The name of the anchor
    @JsonKey(name: 'name') required String name,
  }) = RichBlockAnchor;

  /// A list of blocks, corresponding to the HTML tag &lt;ul&gt; or &lt;ol&gt; with multiple nested tags &lt;li&gt;.
  const factory RichBlock.list({
    /// Type of the block, always "list"
    @JsonKey(name: 'type') @Default(RichBlockType.list) RichBlockType type,

    /// Items of the list
    @JsonKey(name: 'items') required List<RichBlockListItem> items,
  }) = RichBlockList;

  /// A block quotation, corresponding to the HTML tag <blockquote>.
  const factory RichBlock.blockquote({
    /// Type of the block, always "blockquote"
    @JsonKey(name: 'type')
    @Default(RichBlockType.blockquote)
    RichBlockType type,

    /// Content of the block
    @JsonKey(name: 'blocks') required List<RichBlock> blocks,

    /// Optional. Credit of the block
    @JsonKey(name: 'credit') @RichTextConverter() RichText? credit,
  }) = RichBlockBlockQuotation;

  /// A quotation with centered text, loosely corresponding to the HTML tag <aside>.
  const factory RichBlock.pullquote({
    /// Type of the block, always "pullquote"
    @JsonKey(name: 'type') @Default(RichBlockType.pullquote) RichBlockType type,

    /// Text of the block
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,

    /// Optional. Credit of the block
    @JsonKey(name: 'credit') @RichTextConverter() RichText? credit,
  }) = RichBlockPullQuotation;

  /// A collage, corresponding to the custom HTML tag &lt;tg-collage&gt;.
  const factory RichBlock.collage({
    /// Type of the block, always "collage"
    @JsonKey(name: 'type') @Default(RichBlockType.collage) RichBlockType type,

    /// Elements of the collage
    @JsonKey(name: 'blocks') required List<RichBlock> blocks,

    /// Optional. Caption of the block
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  }) = RichBlockCollage;

  /// A slideshow, corresponding to the custom HTML tag &lt;tg-slideshow&gt;.
  const factory RichBlock.slideshow({
    /// Type of the block, always "slideshow"
    @JsonKey(name: 'type') @Default(RichBlockType.slideshow) RichBlockType type,

    /// Elements of the slideshow
    @JsonKey(name: 'blocks') required List<RichBlock> blocks,

    /// Optional. Caption of the block
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  }) = RichBlockSlideshow;

  /// A table, corresponding to the HTML tag &lt;table&gt;.
  const factory RichBlock.table({
    /// Type of the block, always "table"
    @JsonKey(name: 'type') @Default(RichBlockType.table) RichBlockType type,

    /// Cells of the table
    @JsonKey(name: 'cells') required List<List<RichBlockTableCell>> cells,

    /// Optional. True, if the table has borders
    @JsonKey(name: 'is_bordered') bool? isBordered,

    /// Optional. True, if the table is striped
    @JsonKey(name: 'is_striped') bool? isStriped,

    /// Optional. Caption of the table
    @JsonKey(name: 'caption') @RichTextConverter() RichText? caption,
  }) = RichBlockTable;

  /// An expandable block for details disclosure, corresponding to the HTML tag &lt;details&gt;.
  const factory RichBlock.details({
    /// Type of the block, always "details"
    @JsonKey(name: 'type') @Default(RichBlockType.details) RichBlockType type,

    /// Always shown summary of the block
    @JsonKey(name: 'summary') @RichTextConverter() required RichText summary,

    /// Content of the block
    @JsonKey(name: 'blocks') required List<RichBlock> blocks,

    /// Optional. True, if the content of the block is visible by default
    @JsonKey(name: 'is_open') bool? isOpen,
  }) = RichBlockDetails;

  /// A block with a map, corresponding to the custom HTML tag &lt;tg-map&gt;.
  const factory RichBlock.map({
    /// Type of the block, always "map"
    @JsonKey(name: 'type') @Default(RichBlockType.map) RichBlockType type,

    /// Location of the center of the map
    @JsonKey(name: 'location') required Location location,

    /// Map zoom level; 13-20
    @JsonKey(name: 'zoom') required int zoom,

    /// Expected width of the map
    @JsonKey(name: 'width') required int width,

    /// Expected height of the map
    @JsonKey(name: 'height') required int height,

    /// Optional. Caption of the block
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  }) = RichBlockMap;

  /// A block with an animation, corresponding to the HTML tag &lt;video&gt;.
  const factory RichBlock.animation({
    /// Type of the block, always "animation"
    @JsonKey(name: 'type') @Default(RichBlockType.animation) RichBlockType type,

    /// The animation
    @JsonKey(name: 'animation') required Animation animation,

    /// Optional. True, if the media preview is covered by a spoiler animation
    @JsonKey(name: 'has_spoiler') bool? hasSpoiler,

    /// Optional. Caption of the block
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  }) = RichBlockAnimation;

  /// A block with a music file, corresponding to the HTML tag &lt;audio&gt;.
  const factory RichBlock.audio({
    /// Type of the block, always "audio"
    @JsonKey(name: 'type') @Default(RichBlockType.audio) RichBlockType type,

    /// The audio
    @JsonKey(name: 'audio') required Audio audio,

    /// Optional. Caption of the block
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  }) = RichBlockAudio;

  /// A block with a photo, corresponding to the HTML tag &lt;photo&gt;.
  const factory RichBlock.photo({
    /// Type of the block, always "photo"
    @JsonKey(name: 'type') @Default(RichBlockType.photo) RichBlockType type,

    /// Available sizes of the photo
    @JsonKey(name: 'photo') required List<PhotoSize> photo,

    /// Optional. True, if the media preview is covered by a spoiler animation
    @JsonKey(name: 'has_spoiler') bool? hasSpoiler,

    /// Optional. Caption of the block
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  }) = RichBlockPhoto;

  /// A block with a video, corresponding to the HTML tag &lt;video&gt;.
  const factory RichBlock.video({
    /// Type of the block, always "video"
    @JsonKey(name: 'type') @Default(RichBlockType.video) RichBlockType type,

    /// The video
    @JsonKey(name: 'video') required Video video,

    /// Optional. True, if the media preview is covered by a spoiler animation
    @JsonKey(name: 'has_spoiler') bool? hasSpoiler,

    /// Optional. Caption of the block
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  }) = RichBlockVideo;

  /// A block with a voice note, corresponding to the HTML tag &lt;audio&gt;.
  const factory RichBlock.voiceNote({
    /// Type of the block, always "voice_note"
    @JsonKey(name: 'type') @Default(RichBlockType.voiceNote) RichBlockType type,

    /// The voice note
    @JsonKey(name: 'voice_note') required Voice voiceNote,

    /// Optional. Caption of the block
    @JsonKey(name: 'caption') RichBlockCaption? caption,
  }) = RichBlockVoiceNote;

  /// A block with a “Thinking…” placeholder, corresponding to the custom HTML tag &lt;tg-thinking&gt;.
  const factory RichBlock.thinking({
    /// Type of the block, always "thinking"
    @JsonKey(name: 'type') @Default(RichBlockType.thinking) RichBlockType type,

    /// Text of the block
    @JsonKey(name: 'text') @RichTextConverter() required RichText text,
  }) = RichBlockThinking;

  /// Creates a [RichBlock] object from JSON.
  factory RichBlock.fromJson(Map<String, dynamic> json) =>
      _$RichBlockFromJson(json);
}
