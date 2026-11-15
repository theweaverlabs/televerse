import 'dart:convert';

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

import 'helpers/capture_transformer.dart';

const _richQuote = [
  'First paragraph',
  [
    'Part of the second ',
    {'type': 'bold', 'text': 'paragraph'},
  ],
];

void main() {
  test('plain TON and bank card entities preserve UTF-16 offsets', () {
    const address = 'UQexample';
    const card = '0000 1111';
    const prefix = '\u{1F680} ';
    final json = {
      ...CaptureTransformer.message,
      'text': '$prefix$address $card',
      'entities': [
        {'type': 'ton_address', 'offset': 3, 'length': address.length},
        {
          'type': 'bank_card_number',
          'offset': 3 + address.length + 1,
          'length': card.length,
        },
      ],
    };

    final update = Update.fromJson({'update_id': 1, 'message': json});
    final ctx = Context(update, RawAPI('12345:TOKEN'), const BotInfo(id: 999));

    expect(update.message!.entities!.map((entity) => entity.type), [
      MessageEntityType.tonAddress,
      MessageEntityType.bankCardNumber,
    ]);
    expect(ctx.getAllEntitiesWithText(), {
      MessageEntityType.tonAddress: [address],
      MessageEntityType.bankCardNumber: [card],
    });
    expect(jsonDecode(jsonEncode(update.message)), json);
  });

  test('decodes a TON address in a rich message and preserves nested text', () {
    const wire = {
      'blocks': [
        {
          'type': 'paragraph',
          'text': {
            'type': 'ton_address',
            'text': [
              'Wallet ',
              {'type': 'bold', 'text': 'address'},
            ],
            'address': 'UQexample',
          },
        },
      ],
    };

    final message = RichMessage.fromJson(wire);
    final paragraph = message.blocks.single as RichBlockParagraph;
    final address = paragraph.text as RichTextTonAddress;
    expect(address.type, RichTextType.tonAddress);
    expect(address.address, 'UQexample');
    final label = address.text as RichTextCollection;
    expect((label.texts.first as RichTextPlain).text, 'Wallet ');
    expect(label.texts.last, isA<RichTextBold>());
    expect(jsonDecode(jsonEncode(message)), wire);
  });

  test('retains an incoming rich quote with empty plain text', () {
    final wire = {
      ...CaptureTransformer.message,
      'quote': {
        'text': '',
        'rich_texts': _richQuote,
        'position': 4,
        'is_manual': true,
      },
    };

    final quote = Message.fromJson(wire).quote!;
    expect(quote.text, isEmpty);
    expect(quote.position, 4);
    expect(quote.richTexts!.first, isA<RichTextPlain>());
    final nested = quote.richTexts!.last as RichTextCollection;
    expect(nested.texts.last, isA<RichTextBold>());
    expect(jsonDecode(jsonEncode(quote)), wire['quote']);
  });

  test('sends an outgoing rich quote with its Telegram JSON shape', () async {
    final capture = CaptureTransformer();
    final api = RawAPI('12345:TOKEN')..use(capture);
    const wire = {
      'message_id': 42,
      'quote_rich_texts': _richQuote,
      'quote_position': 4,
    };

    final decoded = ReplyParameters.fromJson(wire);
    expect(decoded.quoteRichTexts!.last, isA<RichTextCollection>());

    await api.sendMessage(
      ChatID(123),
      'Reply',
      replyParameters: ReplyParameters(
        messageId: 42,
        quoteRichTexts: decoded.quoteRichTexts,
        quotePosition: 4,
      ),
    );

    expect(capture.method, 'sendMessage');
    expect(capture.encoded('reply_parameters'), wire);
  });

  test('preserves a numeric or named chat ID for cross-chat rich quotes', () {
    for (final chatId in <Object>[123, '@example_group']) {
      final wire = {
        'message_id': 42,
        'chat_id': chatId,
        'quote_rich_texts': _richQuote,
      };
      final parameters = ReplyParameters.fromJson(wire);
      expect(parameters.chatId?.id, chatId);
      expect(jsonDecode(jsonEncode(parameters)), wire);
    }
  });

  test('preserves plain quotes and leaves absent rich text fields omitted', () {
    const plainQuote = {
      'text': 'Old quote',
      'position': 0,
      'entities': [
        {'type': 'bold', 'offset': 0, 'length': 3},
      ],
    };
    final incoming = TextQuote.fromJson(plainQuote);
    expect(incoming.richTexts, isNull);
    expect(jsonDecode(jsonEncode(incoming)), plainQuote);

    const plainReply = {
      'message_id': 42,
      'quote': 'Old quote',
      'quote_position': 0,
    };
    final outgoing = ReplyParameters.fromJson(plainReply);
    expect(outgoing.quoteRichTexts, isNull);
    expect(jsonDecode(jsonEncode(outgoing)), plainReply);
  });
}
