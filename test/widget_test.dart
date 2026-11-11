import 'dart:convert';

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

import 'helpers/capture_transformer.dart';

const _user = {'id': 321, 'is_bot': false, 'first_name': 'Widget user'};
const _chat = {'id': 123, 'type': 'private'};
const _widget = {'html': '<button>Refresh</button>', 'id': 'widget-1'};
const _wallet = {
  'address': 'wallet-address',
  'amount': '9007199254740993',
  'public_key': '0123abcd',
  'state_init': 'ZXhhbXBsZQ==',
};
const _card = {
  'address': 'card-address',
  'amount': '9007199254740993',
  'stickers': [
    {
      'position': {
        'x_percentage': 20.0,
        'y_percentage': 30.0,
        'width_percentage': 40.0,
        'height_percentage': 45.0,
        'rotation_angle': 0.0,
        'corner_radius_percentage': 5.0,
      },
      'nft': {
        'address': 'nft-address',
        'index': '9007199254740994',
        'name': 'Example sticker',
        'description': 'A widget fixture',
        'attributes': [
          {'trait_type': 'Color', 'value': 'Blue'},
        ],
      },
    },
  ],
};
const _privateQuery = {
  'update_id': 1,
  'widget_query': {
    'id': 'private-query',
    'from': _user,
    'chat': _chat,
    'message_id': 42,
    'chat_instance': 'chat-instance',
    'type': {'type': 'data', 'wallet_card': _card},
    'data': 'refresh',
  },
};
const _inlineQuery = {
  'update_id': 2,
  'widget_query': {
    'id': 'inline-query',
    'from': _user,
    'inline_message_id': 'inline-message',
    'chat_instance': 'chat-instance',
    'chat_type': 'sender',
    'type': {
      'type': 'sign_data',
      'wallet': _wallet,
      'sign_data': '{"signed":true}',
    },
    'data': 'signature',
    'widget_id': 'widget-1',
  },
};
const _forwardedQuery = {
  'update_id': 3,
  'shared_widget_query': {
    'id': 'forwarded-query',
    'from': _user,
    'type': {'type': 'sent_transaction', 'wallet': _wallet, 'msg_hash': 'hash'},
    'data': 'transaction',
    'widget_id': 'widget-1',
  },
};

Context _context(Map<String, dynamic> json, RawAPI api) =>
    Context(Update.fromJson(json), api, const BotInfo(id: 999));

void main() {
  late CaptureTransformer capture;
  late RawAPI api;

  setUp(() {
    capture = CaptureTransformer();
    api = RawAPI('12345:TOKEN')..use(capture);
  });

  test('retains widgets in messages and external replies', () {
    final json = {
      ...CaptureTransformer.message,
      'widget': _widget,
      'external_reply': {
        'origin': {'type': 'user', 'date': 1600000000, 'sender_user': _user},
        'widget': {'html': '<b>External</b>', 'public_data': 'visible'},
      },
    };

    final message = Message.fromJson(json);
    expect(message.widget?.id, 'widget-1');
    expect(message.externalReply?.widget?.publicData, 'visible');
    expect(jsonDecode(jsonEncode(message)), json);
  });

  test('decodes and preserves the three query variants', () {
    final direct = Update.fromJson(_privateQuery);
    final inline = Update.fromJson(_inlineQuery);
    final shared = Update.fromJson(_forwardedQuery);

    expect(direct.type.isWidgetQuery, isTrue);
    final card = (direct.widgetQuery!.type as WidgetQueryTypeData).walletCard!;
    expect(card.amount, '9007199254740993');
    expect(card.stickers.single.position.xPercentage, 20);
    expect(card.stickers.single.nft.index, '9007199254740994');
    expect(card.stickers.single.nft.attributes?.single.traitType, 'Color');

    expect(inline.type, UpdateType.widgetQuery);
    expect(inline.widgetQuery?.chatType, ChatType.sender);
    final signed = inline.widgetQuery!.type as WidgetQueryTypeSignData;
    expect(signed.signData, '{"signed":true}');
    expect(signed.wallet.stateInit, 'ZXhhbXBsZQ==');

    expect(shared.type.isSharedWidgetQuery, isTrue);
    expect(shared.sharedWidgetQuery?.widgetId, 'widget-1');
    final sent =
        shared.sharedWidgetQuery!.type as WidgetQueryTypeSentTransaction;
    expect(sent.msgHash, 'hash');
    expect(sent.wallet.amount, '9007199254740993');

    expect(jsonDecode(jsonEncode(direct)), _privateQuery);
    expect(jsonDecode(jsonEncode(inline)), _inlineQuery);
    expect(jsonDecode(jsonEncode(shared)), _forwardedQuery);
  });

  test('context exposes only identifiers present in the update', () {
    final direct = _context(_privateQuery, api);
    expect(direct.from?.id, 321);
    expect(direct.chat?.id, 123);
    expect(direct.update.chat?.id, 123);
    expect(direct.id, ChatID(123));
    expect(direct.messageId, 42);
    expect(direct.msg, isNull);

    final inline = _context(_inlineQuery, api);
    expect(inline.isInlineMessage(), isTrue);
    expect(inline.chat, isNull);
    expect(inline.messageId, isNull);

    final forwarded = _context(_forwardedQuery, api);
    expect(forwarded.from?.id, 321);
    expect(forwarded.update.from?.id, 321);
    expect(forwarded.chat, isNull);
    expect(forwarded.messageId, isNull);
    expect(forwarded.isInlineMessage(), isFalse);
  });

  test('routes original and forwarded queries to distinct handlers', () async {
    final bot = Bot<Context>('12345:TOKEN');
    final handled = <String>[];
    final Bot<Context> original = bot.onWidgetQuery((ctx) {
      handled.add(ctx.widgetQuery!.id);
    });
    final Bot<Context> shared = bot.onSharedWidgetQuery((ctx) {
      handled.add(ctx.sharedWidgetQuery!.id);
    });
    expect(original, same(bot));
    expect(shared, same(bot));

    final direct = _context(_privateQuery, api);
    final forwarded = _context(_forwardedQuery, api);
    final message = _context({
      'update_id': 4,
      'message': CaptureTransformer.message,
    }, api);

    expect(bot.filters.widgetQuery.matches(direct), isTrue);
    expect(bot.filters.sharedWidgetQuery.matches(direct), isFalse);
    expect(bot.filters.widgetQuery.matches(forwarded), isFalse);
    expect(bot.filters.sharedWidgetQuery.matches(forwarded), isTrue);
    expect(bot.filters.widgetQuery.matches(message), isFalse);
    expect(bot.filters.sharedWidgetQuery.matches(message), isFalse);

    await bot.handle(direct);
    await bot.handle(_context(_inlineQuery, api));
    await bot.handle(forwarded);
    await bot.handle(message);
    expect(handled, ['private-query', 'inline-query', 'forwarded-query']);
  });

  test('serializes both allowlist entries for polling and webhooks', () async {
    const allowed = [UpdateType.widgetQuery, UpdateType.sharedWidgetQuery];
    const wireNames = ['widget_query', 'shared_widget_query'];

    capture.result = [_privateQuery, _forwardedQuery];
    final updates = await api.getUpdates(allowedUpdates: allowed);
    expect(updates.map((update) => update.type), allowed);
    expect(capture.encoded('allowed_updates'), wireNames);

    capture.result = true;
    expect(
      await api.setWebhook('https://example.test/bot', allowedUpdates: allowed),
      isTrue,
    );
    expect(capture.encoded('allowed_updates'), wireNames);
  });

  test('webhook accepts both widget query types in its allowlist', () async {
    final fetcher = WebhookFetcher(
      config: const WebhookConfig.custom(
        allowedUpdates: [UpdateType.widgetQuery, UpdateType.sharedWidgetQuery],
      ),
    );
    addTearDown(fetcher.close);
    final received = fetcher.updates
        .take(2)
        .map((update) => update.type)
        .toList();
    await fetcher.start();

    expect(
      await fetcher.handleWebhookRequest(jsonEncode(_privateQuery)),
      isTrue,
    );
    expect(
      await fetcher.handleWebhookRequest(jsonEncode(_forwardedQuery)),
      isTrue,
    );
    expect(await received, [
      UpdateType.widgetQuery,
      UpdateType.sharedWidgetQuery,
    ]);
  });

  test(
    'sends new and existing widgets and parses the returned message',
    () async {
      capture.result = {...CaptureTransformer.message, 'widget': _widget};
      final sent = await api.sendWidget(
        ChatID(123),
        '<button>Refresh</button>',
        width: 240,
        height: 120,
        publicData: 'public',
        chatData: 'private',
        allowQueries: true,
        isShared: true,
        disableNotification: false,
      );
      expect(sent.widget?.id, 'widget-1');
      expect(capture.method, 'sendWidget');
      expect(jsonDecode(jsonEncode(capture.params)), {
        'chat_id': 123,
        'html': '<button>Refresh</button>',
        'width': 240,
        'height': 120,
        'public_data': 'public',
        'chat_data': 'private',
        'allow_queries': true,
        'is_shared': true,
        'disable_notification': false,
      });

      final resent = await api.sendSharedWidget(
        ChatID(123),
        'widget-1',
        chatData: 'new chat',
      );
      expect(resent.widget?.id, 'widget-1');
      expect(capture.method, 'sendSharedWidget');
      expect(jsonDecode(jsonEncode(capture.params)), {
        'chat_id': 123,
        'widget_id': 'widget-1',
        'chat_data': 'new chat',
      });
    },
  );

  test('answers either query with its own ID', () async {
    final direct = _context(_privateQuery, api);
    expect(await direct.answerWidgetQuery(data: 'updated'), isTrue);
    expect(capture.method, 'answerWidgetQuery');
    expect(capture.params, {
      'widget_query_id': 'private-query',
      'data': 'updated',
    });

    final forwarded = _context(_forwardedQuery, api);
    expect(await forwarded.answerWidgetQuery(), isTrue);
    expect(capture.method, 'answerWidgetQuery');
    expect(capture.params, {'widget_query_id': 'forwarded-query'});
  });

  test(
    'edits widget data while preserving omitted versus empty values',
    () async {
      expect(
        await api.editMessageWidgetData(
          chatId: ChatID(123),
          messageId: 42,
          chatData: '',
        ),
        isTrue,
      );
      expect(capture.method, 'editMessageWidgetData');
      expect(jsonDecode(jsonEncode(capture.params)), {
        'chat_id': 123,
        'message_id': 42,
        'chat_data': '',
      });

      expect(
        await api.editMessageWidgetData(
          inlineMessageId: 'inline-message',
          publicData: 'new',
        ),
        isTrue,
      );
      expect(capture.params, {
        'inline_message_id': 'inline-message',
        'public_data': 'new',
      });

      expect(
        await api.editSharedWidgetData('widget-1', '', cacheTime: 60),
        isTrue,
      );
      expect(capture.method, 'editSharedWidgetData');
      expect(capture.params, {
        'widget_id': 'widget-1',
        'public_data': '',
        'cache_time': 60,
      });
    },
  );

  test(
    'inline result content round-trips without a wire discriminator',
    () async {
      const fresh = {
        'type': 'article',
        'id': 'fresh',
        'title': 'New widget',
        'input_message_content': {
          'html': '<b>Fresh</b>',
          'allow_queries': true,
        },
      };
      const existing = {
        'type': 'article',
        'id': 'existing',
        'title': 'Shared widget',
        'input_message_content': {
          'widget_id': 'widget-1',
          'chat_data': 'private',
        },
      };

      final freshArticle = InlineQueryResultArticle.fromJson(fresh);
      final sharedArticle = InlineQueryResultArticle.fromJson(existing);
      expect(
        freshArticle.inputMessageContent,
        isA<InputWidgetMessageContent>(),
      );
      expect(
        sharedArticle.inputMessageContent,
        isA<InputSharedWidgetMessageContent>(),
      );

      await api.answerInlineQuery('inline-query-id', [
        freshArticle,
        sharedArticle,
      ]);
      expect(capture.encoded('results'), [fresh, existing]);
    },
  );
}
