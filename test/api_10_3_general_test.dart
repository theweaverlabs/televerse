import 'dart:convert';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

import 'helpers/capture_transformer.dart';

Context _context(Update update) =>
    Context(update, RawAPI('12345:TOKEN'), const BotInfo(id: 999));

Map<String, dynamic> _sticker() => {
  'file_id': 'sticker_id',
  'file_unique_id': 'sticker_unique',
  'type': 'regular',
  'width': 512,
  'height': 512,
  'is_animated': false,
  'is_video': false,
};

void main() {
  group('MessageGenerationStopped Tests', () {
    final json = {
      'update_id': 100,
      'stopped_message_generation': {
        'chat': {'id': 67890, 'type': 'private'},
        'message_thread_id': 12,
        'draft_id': 42,
      },
    };

    test('Update parses stopped_message_generation', () {
      final update = Update.fromJson(json);

      expect(update.type, equals(UpdateType.stoppedMessageGeneration));
      expect(update.type.isStoppedMessageGeneration, isTrue);
      final stopped = update.stoppedMessageGeneration!;
      expect(stopped.chat.id, equals(67890));
      expect(stopped.messageThreadId, equals(12));
      expect(stopped.draftId, equals(42));
      expect(update.chat?.id, equals(67890));

      expect(jsonDecode(jsonEncode(update)), equals(json));
    });

    test('Context exposes the update and its chat', () {
      final ctx = _context(Update.fromJson(json));

      expect(ctx.stoppedMessageGeneration?.draftId, equals(42));
      expect(ctx.chat?.id, equals(67890));
      expect(ctx.id, equals(ChatID(67890)));
      expect(MessageGenerationStoppedFilter().matches(ctx), isTrue);
      expect(Filters<Context>().stoppedMessageGeneration.matches(ctx), isTrue);
    });

    test('Filter does not match other updates', () {
      final ctx = _context(
        Update.fromJson({
          'update_id': 101,
          'message': {
            'message_id': 1,
            'date': 1600000000,
            'chat': {'id': 67890, 'type': 'private'},
            'text': 'hi',
          },
        }),
      );

      expect(ctx.stoppedMessageGeneration, isNull);
      expect(MessageGenerationStoppedFilter().matches(ctx), isFalse);
    });

    test('onMessageGenerationStopped handler runs', () async {
      final composer = Composer<Context>();
      int? stoppedDraftId;
      var messageHandlerRan = false;
      composer
        ..onMessageGenerationStopped((ctx) async {
          stoppedDraftId = ctx.stoppedMessageGeneration?.draftId;
        })
        ..onText((ctx) async {
          messageHandlerRan = true;
        });

      await composer.handle(_context(Update.fromJson(json)));

      expect(stoppedDraftId, equals(42));
      expect(messageHandlerRan, isFalse);
    });
  });

  group('CommunityChatJoined Tests', () {
    Map<String, dynamic> serviceMessage(String key, Object value) => {
      'message_id': 5,
      'date': 1600000000,
      'chat': {'id': -100123, 'type': 'supergroup'},
      key: value,
    };

    test('Message parses community_chat_joined', () {
      final json = serviceMessage('community_chat_joined', {
        'community': {'id': 77, 'name': 'Dart Devs'},
      });

      final message = Message.fromJson(json);
      expect(message.communityChatJoined?.community.id, equals(77));
      expect(message.communityChatJoined?.community.name, equals('Dart Devs'));
      expect(jsonDecode(jsonEncode(message)), equals(json));
    });

    test('Community service messages are service messages', () {
      final payloads = {
        'community_chat_added': {
          'community': {'id': 77, 'name': 'Dart Devs'},
        },
        'community_chat_joined': {
          'community': {'id': 77, 'name': 'Dart Devs'},
        },
        'community_chat_removed': <String, dynamic>{},
      };

      for (final MapEntry(:key, :value) in payloads.entries) {
        final ctx = _context(
          Update.fromJson({
            'update_id': 1,
            'message': serviceMessage(key, value),
          }),
        );
        expect(ctx.isServiceMessage(), isTrue, reason: key);
      }
    });
  });

  group('UniqueGiftInfo Tests', () {
    test('parses text, entities and is_private', () {
      final json = {
        'gift': {
          'gift_id': 'gift_1',
          'base_name': 'Plush Pepe',
          'name': 'PlushPepe-1',
          'number': 1,
          'model': {
            'name': 'Model',
            'sticker': _sticker(),
            'rarity_per_mille': 10,
          },
          'symbol': {
            'name': 'Symbol',
            'sticker': _sticker(),
            'rarity_per_mille': 20,
          },
          'backdrop': {
            'name': 'Backdrop',
            'colors': {
              'center_color': 1,
              'edge_color': 2,
              'symbol_color': 3,
              'text_color': 4,
            },
            'rarity_per_mille': 30,
          },
        },
        'origin': 'transfer',
        'text': 'Happy birthday!',
        'entities': [
          {'type': 'bold', 'offset': 0, 'length': 5},
        ],
        'is_private': true,
      };

      final info = UniqueGiftInfo.fromJson(json);
      expect(info.text, equals('Happy birthday!'));
      expect(info.entities?.single.type, equals(MessageEntityType.bold));
      expect(info.isPrivate, isTrue);

      final encoded = jsonDecode(jsonEncode(info)) as Map<String, dynamic>;
      expect(encoded['text'], equals('Happy birthday!'));
      expect(encoded['entities'], equals(json['entities']));
      expect(encoded['is_private'], isTrue);
    });
  });

  group('Reply markup Tests', () {
    test('InlineKeyboardButton supports disabled', () {
      const button = InlineKeyboardButton(
        text: 'Sold out',
        disabled: DisabledButton(),
      );
      final json = jsonDecode(jsonEncode(button)) as Map<String, dynamic>;
      expect(json, equals({'text': 'Sold out', 'disabled': {}}));
      expect(
        InlineKeyboardButton.fromJson(json).disabled,
        isA<DisabledButton>(),
      );

      expect(
        jsonDecode(jsonEncode(InlineKeyboard.buttonDisabled('Sold out'))),
        equals(json),
      );
      expect(
        jsonDecode(jsonEncode(InlineKeyboard().disabled('Sold out'))),
        equals({
          'inline_keyboard': [
            [json],
          ],
        }),
      );
    });

    test('InlineKeyboard serializes force_reply', () {
      final keyboard = InlineKeyboard().text('A', 'a');
      expect(keyboard.toJson().containsKey('force_reply'), isFalse);

      final forced = keyboard.makeForceReply().row().text('B', 'b');
      final json = jsonDecode(jsonEncode(forced)) as Map<String, dynamic>;
      expect(json['force_reply'], isTrue);
      expect((json['inline_keyboard'] as List).length, equals(2));
    });

    test('Incoming inline keyboard parses force_reply', () {
      final message = Message.fromJson({
        'message_id': 1,
        'date': 1600000000,
        'chat': {'id': 123, 'type': 'private'},
        'reply_markup': {
          'inline_keyboard': [
            [
              {'text': 'A', 'callback_data': 'a'},
            ],
          ],
          'force_reply': true,
        },
      });

      expect(message.replyMarkup?.forceReply, isTrue);
    });

    test('Keyboard serializes force_reply', () {
      final keyboard = Keyboard().text('A');
      expect(keyboard.toJson().containsKey('force_reply'), isFalse);
      expect(keyboard.makeForceReply().toJson()['force_reply'], isTrue);
    });

    test('Menus serialize force_reply', () {
      final inlineMenu = InlineMenu<Context>().makeForceReply();
      expect(inlineMenu.forceReply, isTrue);
      expect(inlineMenu.toJson()['force_reply'], isTrue);

      final keyboardMenu = KeyboardMenu<Context>().makeForceReply();
      expect(keyboardMenu.forceReply, isTrue);
      expect(keyboardMenu.toJson()['force_reply'], isTrue);

      expect(
        InlineMenu<Context>().toJson().containsKey('force_reply'),
        isFalse,
      );
    });
  });

  group('Draft requests', () {
    late RawAPI api;
    late CaptureTransformer capture;

    setUp(() {
      capture = CaptureTransformer();
      api = RawAPI('TEST_TOKEN')..use(capture);
    });

    test('sendMessageDraft sends can_stop and keep_on_stop', () async {
      final result = await api.sendMessageDraft(
        ChatID(123),
        5,
        text: 'Thinking',
        canStop: true,
        keepOnStop: true,
      );

      expect(result, isTrue);
      expect(capture.method, equals('sendMessageDraft'));
      expect(capture.params['can_stop'], isTrue);
      expect(capture.params['keep_on_stop'], isTrue);
    });

    test('sendRichMessageDraft sends can_stop and keep_on_stop', () async {
      final result = await api.sendRichMessageDraft(
        ChatID(123),
        5,
        const InputRichMessage(markdown: '*Thinking*'),
        canStop: true,
        keepOnStop: false,
      );

      expect(result, isTrue);
      expect(capture.method, equals('sendRichMessageDraft'));
      expect(capture.params['can_stop'], isTrue);
      expect(capture.params['keep_on_stop'], isFalse);
    });

    test('draft params are omitted when not set', () async {
      await api.sendMessageDraft(ChatID(123), 5, text: 'Thinking');

      expect(capture.params.containsKey('can_stop'), isFalse);
      expect(capture.params.containsKey('keep_on_stop'), isFalse);
    });
  });
}
