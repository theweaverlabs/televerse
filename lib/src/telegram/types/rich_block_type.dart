/// Type of the rich block.
enum RichBlockType {
  /// A text paragraph, corresponding to the HTML tag <p>.
  paragraph("paragraph"),

  /// A section heading, corresponding to the HTML tags <h1>, <h2>, <h3>, <h4>, <h5>, or <h6>.
  heading("heading"),

  /// A preformatted text block, corresponding to the nested HTML tags <pre> and <code>.
  pre("pre"),

  /// A footer, corresponding to the HTML tag <footer>.
  footer("footer"),

  /// A divider, corresponding to the HTML tag <hr/>.
  divider("divider"),

  /// A block with a mathematical expression in LaTeX format, corresponding to the custom HTML tag &lt;tg-math-block&gt;.
  mathematicalExpression("mathematical_expression"),

  /// A block with an anchor, corresponding to the HTML tag <a> with the attribute name.
  anchor("anchor"),

  /// A list of blocks, corresponding to the HTML tag <ul> or <ol> with multiple nested tags <li>.
  list("list"),

  /// A block quotation, corresponding to the HTML tag &lt;blockquote&gt;.
  blockquote("blockquote"),

  /// A quotation with centered text, loosely corresponding to the HTML tag &lt;aside&gt;.
  pullquote("pullquote"),

  /// A collage, corresponding to the custom HTML tag &lt;tg-collage&gt;.
  collage("collage"),

  /// A slideshow, corresponding to the custom HTML tag &lt;tg-slideshow&gt;.
  slideshow("slideshow"),

  /// A table, corresponding to the HTML tag &lt;table&gt;.
  table("table"),

  /// An expandable block for details disclosure, corresponding to the HTML tag &lt;details&gt;.
  details("details"),

  /// A block with a map, corresponding to the custom HTML tag &lt;tg-map&gt;.
  map("map"),

  /// A block with an animation, corresponding to the HTML tag &lt;video&gt;.
  animation("animation"),

  /// A block with a music file, corresponding to the HTML tag &lt;audio&gt;.
  audio("audio"),

  /// A block with a photo, corresponding to the HTML tag &lt;photo&gt;.
  photo("photo"),

  /// A block with a video, corresponding to the HTML tag &lt;video&gt;.
  video("video"),

  /// A block with a voice note, corresponding to the HTML tag &lt;audio&gt;.
  voiceNote("voice_note"),

  /// A block with a “Thinking…” placeholder, corresponding to the custom HTML tag &lt;tg-thinking&gt;.
  thinking("thinking");

  /// The value of the enum.
  final String value;

  /// Creates a new [RichBlockType] object.
  const RichBlockType(this.value);

  /// Creates a new [RichBlockType] object from a string.
  factory RichBlockType.fromJson(String value) {
    return RichBlockType.values.firstWhere(
      (e) => e.value == value,
      orElse: () => RichBlockType.paragraph,
    );
  }

  /// Converts a [RichBlockType] to a string.
  String toJson() => value;
}
