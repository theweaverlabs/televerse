// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_rich_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputRichBlockParagraph _$InputRichBlockParagraphFromJson(
  Map<String, dynamic> json,
) => InputRichBlockParagraph(
  type: json['type'] == null
      ? RichBlockType.paragraph
      : RichBlockType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text'] as Object),
);

Map<String, dynamic> _$InputRichBlockParagraphToJson(
  InputRichBlockParagraph instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': const RichTextConverter().toJson(instance.text),
};

InputRichBlockSectionHeading _$InputRichBlockSectionHeadingFromJson(
  Map<String, dynamic> json,
) => InputRichBlockSectionHeading(
  type: json['type'] == null
      ? RichBlockType.heading
      : RichBlockType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text'] as Object),
  size: (json['size'] as num).toInt(),
);

Map<String, dynamic> _$InputRichBlockSectionHeadingToJson(
  InputRichBlockSectionHeading instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': const RichTextConverter().toJson(instance.text),
  'size': instance.size,
};

InputRichBlockPreformatted _$InputRichBlockPreformattedFromJson(
  Map<String, dynamic> json,
) => InputRichBlockPreformatted(
  type: json['type'] == null
      ? RichBlockType.pre
      : RichBlockType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text'] as Object),
  language: json['language'] as String?,
);

Map<String, dynamic> _$InputRichBlockPreformattedToJson(
  InputRichBlockPreformatted instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': const RichTextConverter().toJson(instance.text),
  'language': ?instance.language,
};

InputRichBlockFooter _$InputRichBlockFooterFromJson(
  Map<String, dynamic> json,
) => InputRichBlockFooter(
  type: json['type'] == null
      ? RichBlockType.footer
      : RichBlockType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text'] as Object),
);

Map<String, dynamic> _$InputRichBlockFooterToJson(
  InputRichBlockFooter instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': const RichTextConverter().toJson(instance.text),
};

InputRichBlockDivider _$InputRichBlockDividerFromJson(
  Map<String, dynamic> json,
) => InputRichBlockDivider(
  type: json['type'] == null
      ? RichBlockType.divider
      : RichBlockType.fromJson(json['type'] as String),
);

Map<String, dynamic> _$InputRichBlockDividerToJson(
  InputRichBlockDivider instance,
) => <String, dynamic>{'type': instance.type};

InputRichBlockMathematicalExpression
_$InputRichBlockMathematicalExpressionFromJson(Map<String, dynamic> json) =>
    InputRichBlockMathematicalExpression(
      type: json['type'] == null
          ? RichBlockType.mathematicalExpression
          : RichBlockType.fromJson(json['type'] as String),
      expression: json['expression'] as String,
    );

Map<String, dynamic> _$InputRichBlockMathematicalExpressionToJson(
  InputRichBlockMathematicalExpression instance,
) => <String, dynamic>{
  'type': instance.type,
  'expression': instance.expression,
};

InputRichBlockAnchor _$InputRichBlockAnchorFromJson(
  Map<String, dynamic> json,
) => InputRichBlockAnchor(
  type: json['type'] == null
      ? RichBlockType.anchor
      : RichBlockType.fromJson(json['type'] as String),
  name: json['name'] as String,
);

Map<String, dynamic> _$InputRichBlockAnchorToJson(
  InputRichBlockAnchor instance,
) => <String, dynamic>{'type': instance.type, 'name': instance.name};

InputRichBlockList _$InputRichBlockListFromJson(Map<String, dynamic> json) =>
    InputRichBlockList(
      type: json['type'] == null
          ? RichBlockType.list
          : RichBlockType.fromJson(json['type'] as String),
      items: (json['items'] as List<dynamic>)
          .map(
            (e) => InputRichBlockListItem.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$InputRichBlockListToJson(InputRichBlockList instance) =>
    <String, dynamic>{'type': instance.type, 'items': instance.items};

InputRichBlockBlockQuotation _$InputRichBlockBlockQuotationFromJson(
  Map<String, dynamic> json,
) => InputRichBlockBlockQuotation(
  type: json['type'] == null
      ? RichBlockType.blockquote
      : RichBlockType.fromJson(json['type'] as String),
  blocks: (json['blocks'] as List<dynamic>)
      .map((e) => InputRichBlock.fromJson(e as Map<String, dynamic>))
      .toList(),
  credit: _$JsonConverterFromJson<Object, RichText>(
    json['credit'],
    const RichTextConverter().fromJson,
  ),
);

Map<String, dynamic> _$InputRichBlockBlockQuotationToJson(
  InputRichBlockBlockQuotation instance,
) => <String, dynamic>{
  'type': instance.type,
  'blocks': instance.blocks,
  'credit': ?_$JsonConverterToJson<Object, RichText>(
    instance.credit,
    const RichTextConverter().toJson,
  ),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

InputRichBlockPullQuotation _$InputRichBlockPullQuotationFromJson(
  Map<String, dynamic> json,
) => InputRichBlockPullQuotation(
  type: json['type'] == null
      ? RichBlockType.pullquote
      : RichBlockType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text'] as Object),
  credit: _$JsonConverterFromJson<Object, RichText>(
    json['credit'],
    const RichTextConverter().fromJson,
  ),
);

Map<String, dynamic> _$InputRichBlockPullQuotationToJson(
  InputRichBlockPullQuotation instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': const RichTextConverter().toJson(instance.text),
  'credit': ?_$JsonConverterToJson<Object, RichText>(
    instance.credit,
    const RichTextConverter().toJson,
  ),
};

InputRichBlockCollage _$InputRichBlockCollageFromJson(
  Map<String, dynamic> json,
) => InputRichBlockCollage(
  type: json['type'] == null
      ? RichBlockType.collage
      : RichBlockType.fromJson(json['type'] as String),
  blocks: (json['blocks'] as List<dynamic>)
      .map((e) => InputRichBlock.fromJson(e as Map<String, dynamic>))
      .toList(),
  caption: json['caption'] == null
      ? null
      : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
);

Map<String, dynamic> _$InputRichBlockCollageToJson(
  InputRichBlockCollage instance,
) => <String, dynamic>{
  'type': instance.type,
  'blocks': instance.blocks,
  'caption': ?instance.caption,
};

InputRichBlockSlideshow _$InputRichBlockSlideshowFromJson(
  Map<String, dynamic> json,
) => InputRichBlockSlideshow(
  type: json['type'] == null
      ? RichBlockType.slideshow
      : RichBlockType.fromJson(json['type'] as String),
  blocks: (json['blocks'] as List<dynamic>)
      .map((e) => InputRichBlock.fromJson(e as Map<String, dynamic>))
      .toList(),
  caption: json['caption'] == null
      ? null
      : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
);

Map<String, dynamic> _$InputRichBlockSlideshowToJson(
  InputRichBlockSlideshow instance,
) => <String, dynamic>{
  'type': instance.type,
  'blocks': instance.blocks,
  'caption': ?instance.caption,
};

InputRichBlockTable _$InputRichBlockTableFromJson(Map<String, dynamic> json) =>
    InputRichBlockTable(
      type: json['type'] == null
          ? RichBlockType.table
          : RichBlockType.fromJson(json['type'] as String),
      cells: (json['cells'] as List<dynamic>)
          .map(
            (e) => (e as List<dynamic>)
                .map(
                  (e) => RichBlockTableCell.fromJson(e as Map<String, dynamic>),
                )
                .toList(),
          )
          .toList(),
      isBordered: json['is_bordered'] as bool?,
      isStriped: json['is_striped'] as bool?,
      isCompact: json['is_compact'] as bool?,
      caption: _$JsonConverterFromJson<Object, RichText>(
        json['caption'],
        const RichTextConverter().fromJson,
      ),
    );

Map<String, dynamic> _$InputRichBlockTableToJson(
  InputRichBlockTable instance,
) => <String, dynamic>{
  'type': instance.type,
  'cells': instance.cells,
  'is_bordered': ?instance.isBordered,
  'is_striped': ?instance.isStriped,
  'is_compact': ?instance.isCompact,
  'caption': ?_$JsonConverterToJson<Object, RichText>(
    instance.caption,
    const RichTextConverter().toJson,
  ),
};

InputRichBlockDetails _$InputRichBlockDetailsFromJson(
  Map<String, dynamic> json,
) => InputRichBlockDetails(
  type: json['type'] == null
      ? RichBlockType.details
      : RichBlockType.fromJson(json['type'] as String),
  summary: const RichTextConverter().fromJson(json['summary'] as Object),
  blocks: (json['blocks'] as List<dynamic>)
      .map((e) => InputRichBlock.fromJson(e as Map<String, dynamic>))
      .toList(),
  isOpen: json['is_open'] as bool?,
);

Map<String, dynamic> _$InputRichBlockDetailsToJson(
  InputRichBlockDetails instance,
) => <String, dynamic>{
  'type': instance.type,
  'summary': const RichTextConverter().toJson(instance.summary),
  'blocks': instance.blocks,
  'is_open': ?instance.isOpen,
};

InputRichBlockMap _$InputRichBlockMapFromJson(Map<String, dynamic> json) =>
    InputRichBlockMap(
      type: json['type'] == null
          ? RichBlockType.map
          : RichBlockType.fromJson(json['type'] as String),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      zoom: (json['zoom'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      caption: json['caption'] == null
          ? null
          : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputRichBlockMapToJson(InputRichBlockMap instance) =>
    <String, dynamic>{
      'type': instance.type,
      'location': instance.location,
      'zoom': instance.zoom,
      'width': instance.width,
      'height': instance.height,
      'caption': ?instance.caption,
    };

InputRichBlockAnimation _$InputRichBlockAnimationFromJson(
  Map<String, dynamic> json,
) => InputRichBlockAnimation(
  type: json['type'] == null
      ? RichBlockType.animation
      : RichBlockType.fromJson(json['type'] as String),
  animation: InputMediaAnimation.fromJson(
    json['animation'] as Map<String, dynamic>,
  ),
  caption: json['caption'] == null
      ? null
      : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
);

Map<String, dynamic> _$InputRichBlockAnimationToJson(
  InputRichBlockAnimation instance,
) => <String, dynamic>{
  'type': instance.type,
  'animation': instance.animation,
  'caption': ?instance.caption,
};

InputRichBlockAudio _$InputRichBlockAudioFromJson(Map<String, dynamic> json) =>
    InputRichBlockAudio(
      type: json['type'] == null
          ? RichBlockType.audio
          : RichBlockType.fromJson(json['type'] as String),
      audio: InputMediaAudio.fromJson(json['audio'] as Map<String, dynamic>),
      caption: json['caption'] == null
          ? null
          : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputRichBlockAudioToJson(
  InputRichBlockAudio instance,
) => <String, dynamic>{
  'type': instance.type,
  'audio': instance.audio,
  'caption': ?instance.caption,
};

InputRichBlockPhoto _$InputRichBlockPhotoFromJson(Map<String, dynamic> json) =>
    InputRichBlockPhoto(
      type: json['type'] == null
          ? RichBlockType.photo
          : RichBlockType.fromJson(json['type'] as String),
      photo: InputMediaPhoto.fromJson(json['photo'] as Map<String, dynamic>),
      caption: json['caption'] == null
          ? null
          : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputRichBlockPhotoToJson(
  InputRichBlockPhoto instance,
) => <String, dynamic>{
  'type': instance.type,
  'photo': instance.photo,
  'caption': ?instance.caption,
};

InputRichBlockVideo _$InputRichBlockVideoFromJson(Map<String, dynamic> json) =>
    InputRichBlockVideo(
      type: json['type'] == null
          ? RichBlockType.video
          : RichBlockType.fromJson(json['type'] as String),
      video: InputMediaVideo.fromJson(json['video'] as Map<String, dynamic>),
      caption: json['caption'] == null
          ? null
          : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputRichBlockVideoToJson(
  InputRichBlockVideo instance,
) => <String, dynamic>{
  'type': instance.type,
  'video': instance.video,
  'caption': ?instance.caption,
};

InputRichBlockVoiceNote _$InputRichBlockVoiceNoteFromJson(
  Map<String, dynamic> json,
) => InputRichBlockVoiceNote(
  type: json['type'] == null
      ? RichBlockType.voiceNote
      : RichBlockType.fromJson(json['type'] as String),
  voiceNote: InputMediaVoiceNote.fromJson(
    json['voice_note'] as Map<String, dynamic>,
  ),
  caption: json['caption'] == null
      ? null
      : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
);

Map<String, dynamic> _$InputRichBlockVoiceNoteToJson(
  InputRichBlockVoiceNote instance,
) => <String, dynamic>{
  'type': instance.type,
  'voice_note': instance.voiceNote,
  'caption': ?instance.caption,
};

InputRichBlockThinking _$InputRichBlockThinkingFromJson(
  Map<String, dynamic> json,
) => InputRichBlockThinking(
  type: json['type'] == null
      ? RichBlockType.thinking
      : RichBlockType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text'] as Object),
);

Map<String, dynamic> _$InputRichBlockThinkingToJson(
  InputRichBlockThinking instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': const RichTextConverter().toJson(instance.text),
};

InputRichBlockButtons _$InputRichBlockButtonsFromJson(
  Map<String, dynamic> json,
) => InputRichBlockButtons(
  type: json['type'] == null
      ? RichBlockType.buttons
      : RichBlockType.fromJson(json['type'] as String),
  buttons: (json['buttons'] as List<dynamic>)
      .map((e) => RichMessageButton.fromJson(e as Map<String, dynamic>))
      .toList(),
  align: json['align'] as String?,
);

Map<String, dynamic> _$InputRichBlockButtonsToJson(
  InputRichBlockButtons instance,
) => <String, dynamic>{
  'type': instance.type,
  'buttons': instance.buttons,
  'align': ?instance.align,
};

InputRichBlockExpandableBlockQuotation
_$InputRichBlockExpandableBlockQuotationFromJson(Map<String, dynamic> json) =>
    InputRichBlockExpandableBlockQuotation(
      type: json['type'] == null
          ? RichBlockType.expandableBlockquote
          : RichBlockType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text'] as Object),
      credit: _$JsonConverterFromJson<Object, RichText>(
        json['credit'],
        const RichTextConverter().fromJson,
      ),
    );

Map<String, dynamic> _$InputRichBlockExpandableBlockQuotationToJson(
  InputRichBlockExpandableBlockQuotation instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': const RichTextConverter().toJson(instance.text),
  'credit': ?_$JsonConverterToJson<Object, RichText>(
    instance.credit,
    const RichTextConverter().toJson,
  ),
};

InputRichBlockDocument _$InputRichBlockDocumentFromJson(
  Map<String, dynamic> json,
) => InputRichBlockDocument(
  type: json['type'] == null
      ? RichBlockType.document
      : RichBlockType.fromJson(json['type'] as String),
  document: InputMediaDocument.fromJson(
    json['document'] as Map<String, dynamic>,
  ),
  caption: json['caption'] == null
      ? null
      : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
);

Map<String, dynamic> _$InputRichBlockDocumentToJson(
  InputRichBlockDocument instance,
) => <String, dynamic>{
  'type': instance.type,
  'document': instance.document,
  'caption': ?instance.caption,
};
