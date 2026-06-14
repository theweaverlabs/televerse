// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rich_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RichBlockParagraph _$RichBlockParagraphFromJson(Map<String, dynamic> json) =>
    RichBlockParagraph(
      type: json['type'] == null
          ? RichBlockType.paragraph
          : RichBlockType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
    );

Map<String, dynamic> _$RichBlockParagraphToJson(RichBlockParagraph instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
    };

RichBlockSectionHeading _$RichBlockSectionHeadingFromJson(
  Map<String, dynamic> json,
) => RichBlockSectionHeading(
  type: json['type'] == null
      ? RichBlockType.heading
      : RichBlockType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text']),
  size: (json['size'] as num).toInt(),
);

Map<String, dynamic> _$RichBlockSectionHeadingToJson(
  RichBlockSectionHeading instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': ?const RichTextConverter().toJson(instance.text),
  'size': instance.size,
};

RichBlockPreformatted _$RichBlockPreformattedFromJson(
  Map<String, dynamic> json,
) => RichBlockPreformatted(
  type: json['type'] == null
      ? RichBlockType.pre
      : RichBlockType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text']),
  language: json['language'] as String?,
);

Map<String, dynamic> _$RichBlockPreformattedToJson(
  RichBlockPreformatted instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': ?const RichTextConverter().toJson(instance.text),
  'language': ?instance.language,
};

RichBlockFooter _$RichBlockFooterFromJson(Map<String, dynamic> json) =>
    RichBlockFooter(
      type: json['type'] == null
          ? RichBlockType.footer
          : RichBlockType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
    );

Map<String, dynamic> _$RichBlockFooterToJson(RichBlockFooter instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
    };

RichBlockDivider _$RichBlockDividerFromJson(Map<String, dynamic> json) =>
    RichBlockDivider(
      type: json['type'] == null
          ? RichBlockType.divider
          : RichBlockType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$RichBlockDividerToJson(RichBlockDivider instance) =>
    <String, dynamic>{'type': instance.type};

RichBlockMathematicalExpression _$RichBlockMathematicalExpressionFromJson(
  Map<String, dynamic> json,
) => RichBlockMathematicalExpression(
  type: json['type'] == null
      ? RichBlockType.mathematicalExpression
      : RichBlockType.fromJson(json['type'] as String),
  expression: json['expression'] as String,
);

Map<String, dynamic> _$RichBlockMathematicalExpressionToJson(
  RichBlockMathematicalExpression instance,
) => <String, dynamic>{
  'type': instance.type,
  'expression': instance.expression,
};

RichBlockAnchor _$RichBlockAnchorFromJson(Map<String, dynamic> json) =>
    RichBlockAnchor(
      type: json['type'] == null
          ? RichBlockType.anchor
          : RichBlockType.fromJson(json['type'] as String),
      name: json['name'] as String,
    );

Map<String, dynamic> _$RichBlockAnchorToJson(RichBlockAnchor instance) =>
    <String, dynamic>{'type': instance.type, 'name': instance.name};

RichBlockList _$RichBlockListFromJson(Map<String, dynamic> json) =>
    RichBlockList(
      type: json['type'] == null
          ? RichBlockType.list
          : RichBlockType.fromJson(json['type'] as String),
      items: (json['items'] as List<dynamic>)
          .map((e) => RichBlockListItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RichBlockListToJson(RichBlockList instance) =>
    <String, dynamic>{'type': instance.type, 'items': instance.items};

RichBlockBlockQuotation _$RichBlockBlockQuotationFromJson(
  Map<String, dynamic> json,
) => RichBlockBlockQuotation(
  type: json['type'] == null
      ? RichBlockType.blockquote
      : RichBlockType.fromJson(json['type'] as String),
  blocks: (json['blocks'] as List<dynamic>)
      .map((e) => RichBlock.fromJson(e as Map<String, dynamic>))
      .toList(),
  credit: const RichTextConverter().fromJson(json['credit']),
);

Map<String, dynamic> _$RichBlockBlockQuotationToJson(
  RichBlockBlockQuotation instance,
) => <String, dynamic>{
  'type': instance.type,
  'blocks': instance.blocks,
  'credit': ?_$JsonConverterToJson<dynamic, RichText>(
    instance.credit,
    const RichTextConverter().toJson,
  ),
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

RichBlockPullQuotation _$RichBlockPullQuotationFromJson(
  Map<String, dynamic> json,
) => RichBlockPullQuotation(
  type: json['type'] == null
      ? RichBlockType.pullquote
      : RichBlockType.fromJson(json['type'] as String),
  text: const RichTextConverter().fromJson(json['text']),
  credit: const RichTextConverter().fromJson(json['credit']),
);

Map<String, dynamic> _$RichBlockPullQuotationToJson(
  RichBlockPullQuotation instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': ?const RichTextConverter().toJson(instance.text),
  'credit': ?_$JsonConverterToJson<dynamic, RichText>(
    instance.credit,
    const RichTextConverter().toJson,
  ),
};

RichBlockCollage _$RichBlockCollageFromJson(Map<String, dynamic> json) =>
    RichBlockCollage(
      type: json['type'] == null
          ? RichBlockType.collage
          : RichBlockType.fromJson(json['type'] as String),
      blocks: (json['blocks'] as List<dynamic>)
          .map((e) => RichBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      caption: json['caption'] == null
          ? null
          : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RichBlockCollageToJson(RichBlockCollage instance) =>
    <String, dynamic>{
      'type': instance.type,
      'blocks': instance.blocks,
      'caption': ?instance.caption,
    };

RichBlockSlideshow _$RichBlockSlideshowFromJson(Map<String, dynamic> json) =>
    RichBlockSlideshow(
      type: json['type'] == null
          ? RichBlockType.slideshow
          : RichBlockType.fromJson(json['type'] as String),
      blocks: (json['blocks'] as List<dynamic>)
          .map((e) => RichBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      caption: json['caption'] == null
          ? null
          : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RichBlockSlideshowToJson(RichBlockSlideshow instance) =>
    <String, dynamic>{
      'type': instance.type,
      'blocks': instance.blocks,
      'caption': ?instance.caption,
    };

RichBlockTable _$RichBlockTableFromJson(Map<String, dynamic> json) =>
    RichBlockTable(
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
      caption: const RichTextConverter().fromJson(json['caption']),
    );

Map<String, dynamic> _$RichBlockTableToJson(RichBlockTable instance) =>
    <String, dynamic>{
      'type': instance.type,
      'cells': instance.cells,
      'is_bordered': ?instance.isBordered,
      'is_striped': ?instance.isStriped,
      'caption': ?_$JsonConverterToJson<dynamic, RichText>(
        instance.caption,
        const RichTextConverter().toJson,
      ),
    };

RichBlockDetails _$RichBlockDetailsFromJson(Map<String, dynamic> json) =>
    RichBlockDetails(
      type: json['type'] == null
          ? RichBlockType.details
          : RichBlockType.fromJson(json['type'] as String),
      summary: const RichTextConverter().fromJson(json['summary']),
      blocks: (json['blocks'] as List<dynamic>)
          .map((e) => RichBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      isOpen: json['is_open'] as bool?,
    );

Map<String, dynamic> _$RichBlockDetailsToJson(RichBlockDetails instance) =>
    <String, dynamic>{
      'type': instance.type,
      'summary': ?const RichTextConverter().toJson(instance.summary),
      'blocks': instance.blocks,
      'is_open': ?instance.isOpen,
    };

RichBlockMap _$RichBlockMapFromJson(Map<String, dynamic> json) => RichBlockMap(
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

Map<String, dynamic> _$RichBlockMapToJson(RichBlockMap instance) =>
    <String, dynamic>{
      'type': instance.type,
      'location': instance.location,
      'zoom': instance.zoom,
      'width': instance.width,
      'height': instance.height,
      'caption': ?instance.caption,
    };

RichBlockAnimation _$RichBlockAnimationFromJson(Map<String, dynamic> json) =>
    RichBlockAnimation(
      type: json['type'] == null
          ? RichBlockType.animation
          : RichBlockType.fromJson(json['type'] as String),
      animation: Animation.fromJson(json['animation'] as Map<String, dynamic>),
      hasSpoiler: json['has_spoiler'] as bool?,
      caption: json['caption'] == null
          ? null
          : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RichBlockAnimationToJson(RichBlockAnimation instance) =>
    <String, dynamic>{
      'type': instance.type,
      'animation': instance.animation,
      'has_spoiler': ?instance.hasSpoiler,
      'caption': ?instance.caption,
    };

RichBlockAudio _$RichBlockAudioFromJson(Map<String, dynamic> json) =>
    RichBlockAudio(
      type: json['type'] == null
          ? RichBlockType.audio
          : RichBlockType.fromJson(json['type'] as String),
      audio: Audio.fromJson(json['audio'] as Map<String, dynamic>),
      caption: json['caption'] == null
          ? null
          : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RichBlockAudioToJson(RichBlockAudio instance) =>
    <String, dynamic>{
      'type': instance.type,
      'audio': instance.audio,
      'caption': ?instance.caption,
    };

RichBlockPhoto _$RichBlockPhotoFromJson(Map<String, dynamic> json) =>
    RichBlockPhoto(
      type: json['type'] == null
          ? RichBlockType.photo
          : RichBlockType.fromJson(json['type'] as String),
      photo: (json['photo'] as List<dynamic>)
          .map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasSpoiler: json['has_spoiler'] as bool?,
      caption: json['caption'] == null
          ? null
          : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RichBlockPhotoToJson(RichBlockPhoto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'photo': instance.photo,
      'has_spoiler': ?instance.hasSpoiler,
      'caption': ?instance.caption,
    };

RichBlockVideo _$RichBlockVideoFromJson(Map<String, dynamic> json) =>
    RichBlockVideo(
      type: json['type'] == null
          ? RichBlockType.video
          : RichBlockType.fromJson(json['type'] as String),
      video: Video.fromJson(json['video'] as Map<String, dynamic>),
      hasSpoiler: json['has_spoiler'] as bool?,
      caption: json['caption'] == null
          ? null
          : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RichBlockVideoToJson(RichBlockVideo instance) =>
    <String, dynamic>{
      'type': instance.type,
      'video': instance.video,
      'has_spoiler': ?instance.hasSpoiler,
      'caption': ?instance.caption,
    };

RichBlockVoiceNote _$RichBlockVoiceNoteFromJson(Map<String, dynamic> json) =>
    RichBlockVoiceNote(
      type: json['type'] == null
          ? RichBlockType.voiceNote
          : RichBlockType.fromJson(json['type'] as String),
      voiceNote: Voice.fromJson(json['voice_note'] as Map<String, dynamic>),
      caption: json['caption'] == null
          ? null
          : RichBlockCaption.fromJson(json['caption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RichBlockVoiceNoteToJson(RichBlockVoiceNote instance) =>
    <String, dynamic>{
      'type': instance.type,
      'voice_note': instance.voiceNote,
      'caption': ?instance.caption,
    };

RichBlockThinking _$RichBlockThinkingFromJson(Map<String, dynamic> json) =>
    RichBlockThinking(
      type: json['type'] == null
          ? RichBlockType.thinking
          : RichBlockType.fromJson(json['type'] as String),
      text: const RichTextConverter().fromJson(json['text']),
    );

Map<String, dynamic> _$RichBlockThinkingToJson(RichBlockThinking instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': ?const RichTextConverter().toJson(instance.text),
    };
