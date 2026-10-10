import 'dart:convert';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

import 'helpers/capture_transformer.dart';

const _user = {'id': 111, 'is_bot': false, 'first_name': 'Alice'};
const _group = {'id': -100777, 'type': 'supergroup', 'title': 'Group'};

/// Builds a [Context] whose API calls are captured instead of being sent.
(Context, CaptureTransformer) _context(Map<String, dynamic> update) {
  final capture = CaptureTransformer();
  final api = RawAPI('TEST_TOKEN')..use(capture);
  return (
    Context(Update.fromJson(update), api, const BotInfo(id: 999)),
    capture,
  );
}

Map<String, dynamic> _message(Map<String, dynamic> fields) => {
  'message_id': 10,
  'date': 1600000000,
  'chat': _group,
  'from': _user,
  ...fields,
};

Map<String, dynamic> _messageUpdate(Map<String, dynamic> fields) => {
  'update_id': 1,
  'message': _message(fields),
};

Map<String, dynamic> _callbackUpdate({bool ephemeral = false}) => {
  'update_id': 2,
  'callback_query': {
    'id': 'cbq_1',
    'from': _user,
    'chat_instance': 'instance',
    'data': 'refresh',
    'message': _message({
      if (ephemeral) ...{
        'message_id': 0,
        'ephemeral_message_id': 7,
        'receiver_user': _user,
      },
      'from': {'id': 999, 'is_bot': true, 'first_name': 'Bot'},
      'text': 'Pick one',
    }),
  },
};

const _stoppedUpdate = {
  'update_id': 3,
  'stopped_message_generation': {
    'chat': {'id': 555, 'type': 'private'},
    'message_thread_id': 12,
    'draft_id': 42,
  },
};

void main() {
  group('Stop-generation helpers', () {
    test(
      'ctx.reply targets the chat and thread of the stopped draft',
      () async {
        final (ctx, capture) = _context(_stoppedUpdate);
        await ctx.reply('Stopped.');

        expect(capture.method, equals('sendMessage'));
        expect(capture.params['chat_id'], equals(ChatID(555)));
        expect(capture.params['message_thread_id'], equals(12));
      },
    );

    test('ctx.sendMessageDraft sends draft parameters', () async {
      final (ctx, capture) = _context(_stoppedUpdate);
      await ctx.sendMessageDraft(5, text: 'Thinking…', canStop: true);

      expect(capture.method, equals('sendMessageDraft'));
      expect(capture.params['chat_id'], equals(ChatID(555)));
      expect(capture.params['draft_id'], equals(5));
      expect(capture.params['text'], equals('Thinking…'));
      expect(capture.params['message_thread_id'], equals(12));
      expect(capture.params['can_stop'], isTrue);
      expect(capture.params.containsKey('keep_on_stop'), isFalse);
    });

    test('ctx.sendRichMessageDraft sends draft parameters', () async {
      final (ctx, capture) = _context(_stoppedUpdate);
      await ctx.sendRichMessageDraft(
        5,
        const InputRichMessage(markdown: '*Thinking*'),
        keepOnStop: true,
      );

      expect(capture.method, equals('sendRichMessageDraft'));
      expect(capture.params['draft_id'], equals(5));
      expect(
        capture.encoded('rich_message'),
        equals({'markdown': '*Thinking*'}),
      );
      expect(capture.params['keep_on_stop'], isTrue);
    });

    test('ctx.replyWithRichMessage sends the rich message', () async {
      final (ctx, capture) = _context(_stoppedUpdate);
      await ctx.replyWithRichMessage(
        const InputRichMessage(markdown: '# Done'),
      );

      expect(capture.method, equals('sendRichMessage'));
      expect(capture.params['chat_id'], equals(ChatID(555)));
      expect(capture.encoded('rich_message'), equals({'markdown': '# Done'}));
    });
  });

  group('Ephemeral helpers', () {
    test('ephemeralParameters uses the sender and callback query', () {
      final (ctx, _) = _context(_callbackUpdate());

      expect(ctx.isEphemeral, isFalse);
      expect(
        jsonDecode(jsonEncode(ctx.ephemeralParameters())),
        equals({'receiver_user_id': 111, 'callback_query_id': 'cbq_1'}),
      );
    });

    test('replyEphemeral can replace the callback query message', () async {
      final (ctx, capture) = _context(_callbackUpdate());
      await ctx.replyEphemeral('Only you', replaceCallbackQueryMessage: true);

      expect(capture.method, equals('sendMessage'));
      expect(capture.params['chat_id'], equals(ChatID(-100777)));
      expect(
        capture.encoded('ephemeral_message_parameters'),
        equals({
          'receiver_user_id': 111,
          'callback_query_id': 'cbq_1',
          'replace_callback_query_message': true,
        }),
      );
    });

    test('ephemeralParameters works for messages and explicit users', () {
      final (ctx, _) = _context(_messageUpdate({'text': 'hi'}));

      expect(
        jsonDecode(jsonEncode(ctx.ephemeralParameters())),
        equals({'receiver_user_id': 111}),
      );
      expect(
        ctx.ephemeralParameters(receiverUserId: 222).receiverUserId,
        equals(222),
      );
      expect(
        () => ctx.ephemeralParameters(replaceCallbackQueryMessage: true),
        throwsA(isA<TeleverseException>()),
      );
    });

    test('ephemeralParameters throws without a user', () {
      final (ctx, _) = _context(_stoppedUpdate);
      expect(
        () => ctx.ephemeralParameters(),
        throwsA(isA<TeleverseException>()),
      );
    });

    group('callback query from an ephemeral message', () {
      test('is detected', () {
        final (ctx, _) = _context(_callbackUpdate(ephemeral: true));

        expect(ctx.isEphemeral, isTrue);
        expect(ctx.ephemeralMessageId, equals(7));
        expect(
          () => ctx.ephemeralParameters(replaceCallbackQueryMessage: true),
          throwsA(isA<TeleverseException>()),
        );
      });

      test('editEphemeralMessageText resolves all identifiers', () async {
        final (ctx, capture) = _context(_callbackUpdate(ephemeral: true));
        await ctx.editEphemeralMessageText('Refreshed');

        expect(capture.method, equals('editEphemeralMessageText'));
        expect(capture.params['chat_id'], equals(ChatID(-100777)));
        expect(capture.params['receiver_user_id'], equals(111));
        expect(capture.params['ephemeral_message_id'], equals(7));
        expect(capture.params['text'], equals('Refreshed'));
      });

      test('other edit helpers and delete resolve identifiers', () async {
        final (ctx, capture) = _context(_callbackUpdate(ephemeral: true));

        await ctx.editEphemeralMessageCaption(
          caption: 'New',
          showCaptionAboveMedia: true,
        );
        expect(capture.method, equals('editEphemeralMessageCaption'));
        expect(capture.params['ephemeral_message_id'], equals(7));
        expect(capture.params['show_caption_above_media'], isTrue);

        await ctx.editEphemeralMessageMedia(
          InputMedia.photo(media: InputFile.fromFileId('photo_id')),
        );
        expect(capture.method, equals('editEphemeralMessageMedia'));
        expect(capture.params['receiver_user_id'], equals(111));

        await ctx.editEphemeralMessageReplyMarkup(
          replyMarkup: InlineKeyboard().text('A', 'a'),
        );
        expect(capture.method, equals('editEphemeralMessageReplyMarkup'));
        expect(capture.params['ephemeral_message_id'], equals(7));

        await ctx.deleteEphemeralMessage();
        expect(capture.method, equals('deleteEphemeralMessage'));
        expect(capture.params['chat_id'], equals(ChatID(-100777)));
        expect(capture.params['receiver_user_id'], equals(111));
        expect(capture.params['ephemeral_message_id'], equals(7));
      });
    });

    test('ephemeral edit helpers throw for regular messages', () {
      final (ctx, capture) = _context(_callbackUpdate());

      expect(
        () => ctx.editEphemeralMessageText('x'),
        throwsA(isA<TeleverseException>()),
      );
      expect(
        () => ctx.deleteEphemeralMessage(),
        throwsA(isA<TeleverseException>()),
      );
      expect(capture.method, isNull);
    });
  });

  group('Listeners', () {
    Future<List<String>> dispatch(Map<String, dynamic> update) async {
      final fired = <String>[];
      Future<void> Function(Context) record(String name) =>
          (ctx) async => fired.add(name);

      final composer = Composer<Context>()
        ..onGuestMessage(record('guestMessage'))
        ..onManagedBot(record('managedBot'))
        ..onRichMessage(record('richMessage'))
        ..onLivePhoto(record('livePhoto'))
        ..onEphemeralMessage(record('ephemeralMessage'))
        ..onCommunityChatAdded(record('communityChatAdded'))
        ..onCommunityChatJoined(record('communityChatJoined'))
        ..onCommunityChatRemoved(record('communityChatRemoved'));

      final (ctx, _) = _context(update);
      await composer.handle(ctx);
      return fired;
    }

    const community = {
      'community': {'id': 77, 'name': 'Dart Devs'},
    };

    final cases = <String, Map<String, dynamic>>{
      'guestMessage': {
        'update_id': 1,
        'guest_message': _message({'text': 'hi', 'guest_query_id': 'gq_1'}),
      },
      'managedBot': {
        'update_id': 1,
        'managed_bot': {
          'user': _user,
          'bot': {'id': 4242, 'is_bot': true, 'first_name': 'Managed'},
        },
      },
      'richMessage': _messageUpdate({
        'rich_message': {
          'blocks': [
            {'type': 'paragraph', 'text': 'Hello'},
          ],
        },
      }),
      'livePhoto': _messageUpdate({
        'live_photo': {
          'file_id': 'live_id',
          'file_unique_id': 'live_unique',
          'width': 1080,
          'height': 1920,
          'duration': 3,
        },
      }),
      'ephemeralMessage': _messageUpdate({
        'message_id': 0,
        'ephemeral_message_id': 8,
        'text': '/secret',
      }),
      'communityChatAdded': _messageUpdate({'community_chat_added': community}),
      'communityChatJoined': _messageUpdate({
        'community_chat_joined': community,
      }),
      'communityChatRemoved': _messageUpdate({
        'community_chat_removed': <String, dynamic>{},
      }),
    };

    for (final MapEntry(key: name, value: update) in cases.entries) {
      test('on${name[0].toUpperCase()}${name.substring(1)} fires', () async {
        expect(await dispatch(update), equals([name]));
      });
    }

    test('onEphemeralMessage ignores callbacks from ephemeral messages', () {
      expect(dispatch(_callbackUpdate(ephemeral: true)), completion(isEmpty));
    });

    test('serviceMessage filter matches community service messages', () {
      final filters = Filters<Context>();
      for (final name in [
        'communityChatAdded',
        'communityChatJoined',
        'communityChatRemoved',
      ]) {
        final (ctx, _) = _context(cases[name]!);
        expect(filters.serviceMessage.matches(ctx), isTrue, reason: name);
      }

      final (plain, _) = _context(_messageUpdate({'text': 'hi'}));
      expect(filters.serviceMessage.matches(plain), isFalse);
    });

    test('ctx.from resolves for managed bot updates', () {
      final (ctx, _) = _context(cases['managedBot']!);
      expect(ctx.from?.id, equals(111));
    });
  });

  group('Other helpers', () {
    test('ctx.replyWithLivePhoto sends both files', () async {
      final (ctx, capture) = _context(_messageUpdate({'text': 'hi'}));
      await ctx.replyWithLivePhoto(
        InputFile.fromFileId('live_id'),
        InputFile.fromFileId('photo_id'),
        caption: 'Live',
      );

      expect(capture.method, equals('sendLivePhoto'));
      expect(capture.params['chat_id'], equals(ChatID(-100777)));
      expect(capture.encoded('live_photo'), equals('live_id'));
      expect(capture.encoded('photo'), equals('photo_id'));
      expect(capture.params['caption'], equals('Live'));
    });

    test('ctx.editMessageText supports rich messages', () async {
      final (ctx, capture) = _context(_callbackUpdate());
      capture.result = CaptureTransformer.message;
      await ctx.editMessageText(
        null,
        richMessage: const InputRichMessage(markdown: '# Updated'),
      );

      expect(capture.method, equals('editMessageText'));
      expect(capture.params['message_id'], equals(10));
      expect(capture.params.containsKey('text'), isFalse);
      expect(
        capture.encoded('rich_message'),
        equals({'markdown': '# Updated'}),
      );
    });
  });
}
