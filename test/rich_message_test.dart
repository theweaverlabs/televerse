import 'dart:convert';
import 'dart:typed_data';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

void main() {
  group('RichMessageButton Tests', () {
    test('RichMessageButton serializes and deserializes correctly', () {
      const button = RichMessageButton(
        text: RichText.plain(text: 'Open'),
        style: StyleType.link,
        callbackData: 'open_cb',
      );

      final json = jsonDecode(jsonEncode(button)) as Map<String, dynamic>;
      expect(json['text'], equals('Open'));
      expect(json['style'], equals('link'));
      expect(json['callback_data'], equals('open_cb'));
      expect(json.containsKey('url'), isFalse);
      expect(json.containsKey('disabled'), isFalse);

      final decoded = RichMessageButton.fromJson(json);
      expect(jsonEncode(decoded), equals(jsonEncode(button)));
      expect(decoded.style, equals(StyleType.link));
    });

    test('RichMessageButton with disabled serializes to empty object', () {
      const button = RichMessageButton(
        text: RichText.plain(text: 'Nope'),
        disabled: DisabledButton(),
      );

      final json = jsonDecode(jsonEncode(button)) as Map<String, dynamic>;
      expect(json['disabled'], equals(<String, dynamic>{}));

      final decoded = RichMessageButton.fromJson(json);
      expect(decoded.disabled, isA<DisabledButton>());
    });

    test('RichMessageButton supports rich text with entities', () {
      final json = {
        'text': [
          {
            'type': 'custom_emoji',
            'custom_emoji_id': '5368324170671202286',
            'alternative_text': '👍',
          },
          ' Like',
        ],
        'url': 'https://example.com',
        'copy_text': {'text': 'copied'},
      };

      final button = RichMessageButton.fromJson(json);
      expect(button.text, isA<RichTextCollection>());
      final texts = (button.text as RichTextCollection).texts;
      expect(texts.first, isA<RichTextCustomEmoji>());
      expect((texts.last as RichTextPlain).text, equals(' Like'));
      expect(button.url, equals('https://example.com'));
      expect(button.copyText?.text, equals('copied'));

      final encoded = jsonDecode(jsonEncode(button)) as Map<String, dynamic>;
      expect(encoded, equals(json));
    });
  });

  group('RichTextButton Tests', () {
    test('RichText.button round trips through RichTextConverter', () {
      final json = [
        'Press ',
        {
          'type': 'button',
          'button': {'text': 'here', 'callback_data': 'cb'},
        },
      ];

      final text = const RichTextConverter().fromJson(json);
      expect(text, isA<RichTextCollection>());
      final button = (text as RichTextCollection).texts.last;
      expect(button, isA<RichTextButton>());
      expect(button.type, equals(RichTextType.button));
      expect((button as RichTextButton).button.callbackData, equals('cb'));

      final encoded = jsonDecode(
        jsonEncode(const RichTextConverter().toJson(text)),
      );
      expect(encoded, equals(json));
    });
  });

  group('RichBlock Tests', () {
    test('RichMessage parses new Bot API 10.3 blocks', () {
      final json = {
        'blocks': [
          {
            'type': 'buttons',
            'buttons': [
              {'text': 'Yes', 'callback_data': 'yes', 'style': 'success'},
              {'text': 'No', 'callback_data': 'no', 'style': 'danger'},
            ],
            'align': 'center',
          },
          {
            'type': 'expandable_blockquote',
            'text': 'A long quotation',
            'credit': {'type': 'italic', 'text': 'Someone'},
          },
          {
            'type': 'document',
            'document': {
              'file_id': 'doc_id',
              'file_unique_id': 'doc_unique',
              'file_name': 'report.pdf',
              'mime_type': 'application/pdf',
            },
            'caption': {'text': 'The report'},
          },
          {
            'type': 'table',
            'cells': [
              [
                {'text': 'A', 'align': 'left', 'valign': 'top'},
              ],
            ],
            'is_compact': true,
          },
        ],
      };

      final message = RichMessage.fromJson(json);
      expect(message.blocks.length, equals(4));

      final buttons = message.blocks[0];
      expect(buttons, isA<RichBlockButtons>());
      expect(buttons.type, equals(RichBlockType.buttons));
      buttons as RichBlockButtons;
      expect(buttons.align, equals('center'));
      expect(buttons.buttons.length, equals(2));
      expect(buttons.buttons.first.style, equals(StyleType.success));
      expect(buttons.buttons.last.callbackData, equals('no'));

      final quote = message.blocks[1];
      expect(quote, isA<RichBlockExpandableBlockQuotation>());
      expect(quote.type, equals(RichBlockType.expandableBlockquote));
      quote as RichBlockExpandableBlockQuotation;
      expect((quote.text as RichTextPlain).text, equals('A long quotation'));
      expect(quote.credit, isA<RichTextItalic>());

      final document = message.blocks[2];
      expect(document, isA<RichBlockDocument>());
      expect(document.type, equals(RichBlockType.document));
      document as RichBlockDocument;
      expect(document.document.fileId, equals('doc_id'));
      expect(document.document.fileName, equals('report.pdf'));
      expect(document.caption?.credit, isNull);
      expect(
        (document.caption?.text as RichTextPlain).text,
        equals('The report'),
      );

      final table = message.blocks[3];
      expect(table, isA<RichBlockTable>());
      table as RichBlockTable;
      expect(table.isCompact, isTrue);
      expect(table.isBordered, isNull);

      final encoded = jsonDecode(jsonEncode(message)) as Map<String, dynamic>;
      expect(encoded, equals(json));
    });

    test('Optional RichText fields may be omitted', () {
      final json = {
        'blocks': [
          {'type': 'expandable_blockquote', 'text': 'No credit'},
          {'type': 'blockquote', 'blocks': <dynamic>[]},
          {'type': 'pullquote', 'text': 'No credit either'},
          {
            'type': 'table',
            'cells': [
              [
                {'align': 'left', 'valign': 'top'},
              ],
            ],
          },
        ],
      };

      final message = RichMessage.fromJson(json);
      final quote = message.blocks[0] as RichBlockExpandableBlockQuotation;
      expect(quote.credit, isNull);
      expect((message.blocks[1] as RichBlockBlockQuotation).credit, isNull);
      expect((message.blocks[2] as RichBlockPullQuotation).credit, isNull);
      final table = message.blocks[3] as RichBlockTable;
      expect(table.caption, isNull);
      expect(table.cells.single.single.text, isNull);

      final encoded = jsonDecode(jsonEncode(message)) as Map<String, dynamic>;
      expect(encoded, equals(json));
    });
  });

  group('InputRichBlock Tests', () {
    test('InputRichBlock.buttons serializes correctly', () {
      const block = InputRichBlock.buttons(
        buttons: [
          RichMessageButton(
            text: RichText.plain(text: 'Site'),
            url: 'https://example.com',
          ),
          RichMessageButton(
            text: RichText.plain(text: 'More'),
            callbackData: 'more',
            style: StyleType.link,
          ),
        ],
        align: 'right',
      );

      final json = jsonDecode(jsonEncode(block)) as Map<String, dynamic>;
      expect(json['type'], equals('buttons'));
      expect(json['align'], equals('right'));
      expect((json['buttons'] as List).length, equals(2));
      expect((json['buttons'] as List).last['style'], equals('link'));

      final decoded = InputRichBlock.fromJson(json);
      expect(decoded, isA<InputRichBlockButtons>());
      expect(jsonEncode(decoded), equals(jsonEncode(block)));
      expect(block.getInputFiles(), isEmpty);
    });

    test('InputRichBlock.expandableBlockquote serializes correctly', () {
      const block = InputRichBlock.expandableBlockquote(
        text: RichText.plain(text: 'Quote'),
        credit: RichText.plain(text: 'Author'),
      );

      final json = jsonDecode(jsonEncode(block)) as Map<String, dynamic>;
      expect(json['type'], equals('expandable_blockquote'));
      expect(json['text'], equals('Quote'));
      expect(json['credit'], equals('Author'));

      final decoded = InputRichBlock.fromJson(json);
      expect(decoded, isA<InputRichBlockExpandableBlockQuotation>());
      expect(jsonEncode(decoded), equals(jsonEncode(block)));
      expect(block.getInputFiles(), isEmpty);
    });

    test('InputRichBlock.table serializes is_compact only when set', () {
      const cells = [
        [RichBlockTableCell(align: 'left', valign: 'top')],
      ];

      final compact = jsonDecode(
        jsonEncode(const InputRichBlock.table(cells: cells, isCompact: true)),
      );
      expect(compact['type'], equals('table'));
      expect(compact['is_compact'], isTrue);

      final regular = jsonDecode(
        jsonEncode(const InputRichBlock.table(cells: cells)),
      );
      expect((regular as Map).containsKey('is_compact'), isFalse);
    });

    test('InputRichBlock.document serializes with a file ID', () {
      final block = InputRichBlock.document(
        document:
            InputMedia.document(media: InputFile.fromFileId('doc_file_id'))
                as InputMediaDocument,
        caption: const RichBlockCaption(text: RichText.plain(text: 'Doc')),
      );

      final json = jsonDecode(jsonEncode(block)) as Map<String, dynamic>;
      expect(json['type'], equals('document'));
      expect(json['document']['type'], equals('document'));
      expect(json['document']['media'], equals('doc_file_id'));
      expect(json['caption']['text'], equals('Doc'));

      final files = block.getInputFiles().whereType<InputFile>();
      expect(files.length, equals(1));
      expect(files.first.getValue(), equals('doc_file_id'));
    });

    test('InputRichBlock.document exposes uploaded files to the request', () {
      final media = InputFile.fromBytes(
        Uint8List.fromList([1, 2, 3]),
        name: 'report.pdf',
      );
      final thumbnail = InputFile.fromBytes(
        Uint8List.fromList([4, 5, 6]),
        name: 'thumb.jpg',
      );
      final document = InputRichBlock.document(
        document:
            InputMedia.document(media: media, thumbnail: thumbnail)
                as InputMediaDocument,
      );

      final message = InputRichMessage(
        blocks: [
          InputRichBlock.details(
            summary: const RichText.plain(text: 'Attachments'),
            blocks: [document],
          ),
          InputRichBlock.list(
            items: [
              InputRichBlockListItem(blocks: [document]),
            ],
          ),
        ],
      );

      final files = message.getInputFiles().whereType<InputFile>().toList();
      expect(files, equals([media, thumbnail, media, thumbnail]));
    });
  });

  group('InputRichMessageMedia Tests', () {
    test('InputRichMessageMedia supports tg://document links', () {
      final message = InputRichMessage(
        markdown: '[Report](tg://document?id=report)',
        media: [
          InputRichMessageMedia(
            id: 'report',
            media: InputMedia.document(media: InputFile.fromFileId('doc_id')),
          ),
        ],
      );

      final json = jsonDecode(jsonEncode(message)) as Map<String, dynamic>;
      final media = (json['media'] as List).single as Map<String, dynamic>;
      expect(media['id'], equals('report'));
      expect(media['media']['type'], equals('document'));
      expect(media['media']['media'], equals('doc_id'));

      final files = message.getInputFiles().whereType<InputFile>();
      expect(files.single.getValue(), equals('doc_id'));
    });
  });
}
