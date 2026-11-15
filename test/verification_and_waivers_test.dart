import 'dart:convert';

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

import 'helpers/capture_transformer.dart';

const _descriptionEntities = [
  MessageEntity(
    type: MessageEntityType.textLink,
    offset: 0,
    length: 8,
    url: 'https://example.com',
  ),
];

const _wireEntities = [
  {'type': 'text_link', 'offset': 0, 'length': 8, 'url': 'https://example.com'},
];

void main() {
  late CaptureTransformer capture;
  late RawAPI api;

  setUp(() {
    capture = CaptureTransformer()..result = true;
    api = RawAPI('12345:TOKEN')..use(capture);
  });

  test('verifyUser encodes each optional description format', () async {
    expect(
      await api.verifyUser(
        123,
        customDescription: '<a href="https://example.com">Verified</a>',
        customDescriptionParseMode: ParseMode.html,
      ),
      isTrue,
    );
    expect(capture.method, 'verifyUser');
    expect(jsonDecode(jsonEncode(capture.params)), {
      'user_id': 123,
      'custom_description': '<a href="https://example.com">Verified</a>',
      'custom_description_parse_mode': 'HTML',
    });

    await api.verifyUser(
      123,
      customDescription: 'Verified',
      customDescriptionEntities: _descriptionEntities,
    );
    expect(jsonDecode(jsonEncode(capture.params)), {
      'user_id': 123,
      'custom_description': 'Verified',
      'custom_description_entities': _wireEntities,
    });
  });

  test('verifyChat encodes each optional description format', () async {
    expect(
      await api.verifyChat(
        ChatID(-100123),
        customDescription: '[Verified](https://example.com)',
        customDescriptionParseMode: ParseMode.markdownV2,
      ),
      isTrue,
    );
    expect(capture.method, 'verifyChat');
    expect(jsonDecode(jsonEncode(capture.params)), {
      'chat_id': -100123,
      'custom_description': '[Verified](https://example.com)',
      'custom_description_parse_mode': 'MarkdownV2',
    });

    await api.verifyChat(
      ChatID(-100123),
      customDescription: 'Verified',
      customDescriptionEntities: _descriptionEntities,
    );
    expect(jsonDecode(jsonEncode(capture.params)), {
      'chat_id': -100123,
      'custom_description': 'Verified',
      'custom_description_entities': _wireEntities,
    });
  });

  test('existing verification calls omit the new options', () async {
    await api.verifyUser(123, customDescription: 'Verified');
    expect(capture.params, {'user_id': 123, 'custom_description': 'Verified'});

    await api.verifyChat(ChatID(-100123));
    expect(jsonDecode(jsonEncode(capture.params)), {'chat_id': -100123});
  });

  test('an empty paid-message waiver is decoded and classified as service', () {
    const json = {
      'update_id': 1,
      'message': {
        ...CaptureTransformer.message,
        'paid_messages_waived': <String, Object>{},
      },
    };

    final update = Update.fromJson(json);
    final ctx = Context(update, api, const BotInfo(id: 999));

    expect(ctx.msg?.paidMessagesWaived, isA<PaidMessagesWaived>());
    expect(ctx.isServiceMessage(), isTrue);
    expect(Filters<Context>().serviceMessage.matches(ctx), isTrue);
    expect(jsonDecode(jsonEncode(update)), json);
  });

  test('messages without a waiver are unchanged', () {
    const json = {
      'update_id': 2,
      'message': {...CaptureTransformer.message, 'text': 'Hello'},
    };

    final update = Update.fromJson(json);
    final ctx = Context(update, api, const BotInfo(id: 999));

    expect(ctx.msg?.paidMessagesWaived, isNull);
    expect(ctx.isServiceMessage(), isFalse);
    expect(Filters<Context>().serviceMessage.matches(ctx), isFalse);
    expect(jsonDecode(jsonEncode(update)), json);
  });
}
