import 'dart:convert';

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

import 'helpers/capture_transformer.dart';

const _user = {'id': 321, 'is_bot': false, 'first_name': 'Widget user'};
const _chat = {'id': 123, 'type': 'private'};
const _wallet = {'address': 'wallet-address', 'amount': '100'};

Map<String, dynamic> _widgetQuery(
  Map<String, dynamic> type, {
  String data = 'vote:yes',
  bool inline = false,
  String? widgetId,
}) => {
  'update_id': 1,
  'widget_query': {
    'id': 'query-1',
    'from': _user,
    if (inline) 'inline_message_id': 'inline-1' else 'chat': _chat,
    if (!inline) 'message_id': 42,
    'chat_instance': 'instance',
    'type': type,
    'data': data,
    'widget_id': ?widgetId,
  },
};

Map<String, dynamic> _sharedWidgetQuery(Map<String, dynamic> type) => {
  'update_id': 2,
  'shared_widget_query': {
    'id': 'shared-1',
    'from': _user,
    'type': type,
    'data': 'tx',
    'widget_id': 'shared-widget',
  },
};

Map<String, dynamic> _messageUpdate(Map<String, dynamic> fields) => {
  'update_id': 3,
  'message': {...CaptureTransformer.message, 'from': _user, ...fields},
};

const _dataType = {'type': 'data'};
const _signType = {'type': 'sign_data', 'wallet': _wallet, 'sign_data': '{}'};
const _txType = {
  'type': 'sent_transaction',
  'wallet': _wallet,
  'msg_hash': 'h',
};

void main() {
  late CaptureTransformer capture;
  late RawAPI api;

  Context ctxOf(Map<String, dynamic> json) =>
      Context(Update.fromJson(json), api, const BotInfo(id: 999));

  Future<bool> fires(
    Map<String, dynamic> update,
    void Function(Composer<Context> c, UpdateHandler<Context> h) register,
  ) async {
    var fired = false;
    final composer = Composer<Context>();
    register(composer, (ctx) async => fired = true);
    await composer.handle(ctxOf(update));
    return fired;
  }

  setUp(() {
    capture = CaptureTransformer();
    api = RawAPI('12345:TOKEN')..use(capture);
  });

  group('union type discriminators', () {
    test('WidgetQueryType exposes and round-trips its type', () {
      final cases = {
        _dataType: WidgetQueryTypeType.data,
        _signType: WidgetQueryTypeType.signData,
        _txType: WidgetQueryTypeType.sentTransaction,
      };
      cases.forEach((json, type) {
        final parsed = WidgetQueryType.fromJson(json);
        expect(parsed.type, type);
        expect(jsonDecode(jsonEncode(parsed)), json);
      });
    });

    test('ChatShareTheme and EmojiType expose and round-trip their types', () {
      const json = {
        'type': 'emoji',
        'emojis': [
          {'type': 'emoji', 'emoji': '🔥'},
          {'type': 'custom_emoji', 'custom_emoji_id': '5368324170671202286'},
        ],
        'background_backdrop_id': 7,
      };
      final theme = ChatShareTheme.fromJson(json) as ChatShareThemeEmoji;
      expect(theme.type, ChatShareThemeType.emoji);
      expect(theme.emojis.map((e) => e.type), [
        EmojiTypeType.emoji,
        EmojiTypeType.customEmoji,
      ]);
      expect(jsonDecode(jsonEncode(theme)), json);
    });

    test('StoryAreaPosition remains a deprecated alias of AreaPosition', () {
      // ignore: deprecated_member_use
      const StoryAreaPosition legacy = AreaPosition(
        xPercentage: 1,
        yPercentage: 2,
        widthPercentage: 3,
        heightPercentage: 4,
        rotationAngle: 0,
        cornerRadiusPercentage: 0,
      );
      expect(legacy, isA<AreaPosition>());
    });

    test('inline message content never sends the Freezed discriminator', () {
      const converter = InputMessageContentConverter();
      final json = converter.toJson(
        const InputMessageContent.text(messageText: 'hello'),
      );
      expect(json.containsKey('runtimeType'), isFalse);
      expect(json['message_text'], 'hello');
    });
  });

  group('widget query handlers', () {
    test('widgetQuery matches exact strings and exposes RegExp matches', () {
      final ctx = ctxOf(_widgetQuery(_dataType));
      expect(
        const WidgetQueryFilter<Context>(data: 'vote:yes').matches(ctx),
        isTrue,
      );
      expect(
        const WidgetQueryFilter<Context>(data: 'vote').matches(ctx),
        isFalse,
      );

      final regex = WidgetQueryFilter<Context>(data: RegExp(r'^vote:(\w+)$'));
      expect(regex.matches(ctx), isTrue);
      expect(ctx.matches.single.group(1), 'yes');
    });

    test('data handlers fire only for their own query kind', () async {
      expect(
        await fires(
          _widgetQuery(_dataType),
          (c, h) => c.widgetQuery('vote:yes', h),
        ),
        isTrue,
      );
      expect(
        await fires(
          _widgetQuery(_dataType),
          (c, h) => c.widgetQuery('nope', h),
        ),
        isFalse,
      );
      expect(
        await fires(
          _sharedWidgetQuery(_txType),
          (c, h) => c.sharedWidgetQuery('tx', h),
        ),
        isTrue,
      );
      expect(
        await fires(
          _sharedWidgetQuery(_txType),
          (c, h) => c.widgetQuery('tx', h),
        ),
        isFalse,
      );
    });

    test('type handlers cover widget and shared widget queries', () async {
      expect(
        await fires(_widgetQuery(_signType), (c, h) => c.onWidgetSignData(h)),
        isTrue,
      );
      expect(
        await fires(
          _sharedWidgetQuery(_signType),
          (c, h) => c.onWidgetSignData(h),
        ),
        isTrue,
      );
      expect(
        await fires(_widgetQuery(_dataType), (c, h) => c.onWidgetSignData(h)),
        isFalse,
      );
      expect(
        await fires(
          _sharedWidgetQuery(_txType),
          (c, h) => c.onWidgetSentTransaction(h),
        ),
        isTrue,
      );
      expect(
        await fires(
          _widgetQuery(_signType),
          (c, h) => c.onWidgetSentTransaction(h),
        ),
        isFalse,
      );
    });

    test('Bot handler methods return the bot for chaining', () {
      final bot = Bot<Context>('12345:TOKEN');
      Future<void> h(Context ctx) async {}
      expect(bot.widgetQuery('x', h), same(bot));
      expect(bot.sharedWidgetQuery('x', h), same(bot));
      expect(bot.onWidgetSignData(h), same(bot));
      expect(bot.onWidgetSentTransaction(h), same(bot));
      expect(bot.onWidget(h), same(bot));
      expect(bot.onTonWalletTransfer(h), same(bot));
      expect(bot.onPaidMessagesWaived(h), same(bot));
      expect(bot.onTonAddress(h), same(bot));
      expect(bot.onBankCardNumber(h), same(bot));
    });
  });

  group('message handlers', () {
    final cases =
        <
          String,
          (
            Map<String, dynamic>,
            void Function(Composer<Context>, UpdateHandler<Context>),
          )
        >{
          'widget': (
            _messageUpdate({
              'widget': {'html': '<b>hi</b>'},
            }),
            (c, h) => c.onWidget(h),
          ),
          'tonWalletTransfer': (
            _messageUpdate({
              'ton_wallet_transfer': {
                'transaction_id': 'tx',
                'peer_address': 'peer',
                'amount': '-5',
              },
            }),
            (c, h) => c.onTonWalletTransfer(h),
          ),
          'paidMessagesWaived': (
            _messageUpdate({'paid_messages_waived': <String, dynamic>{}}),
            (c, h) => c.onPaidMessagesWaived(h),
          ),
          'tonAddress': (
            _messageUpdate({
              'text': 'EQD...',
              'entities': [
                {'type': 'ton_address', 'offset': 0, 'length': 6},
              ],
            }),
            (c, h) => c.onTonAddress(h),
          ),
          'bankCardNumber': (
            _messageUpdate({
              'text': '4111 1111 1111 1111',
              'entities': [
                {'type': 'bank_card_number', 'offset': 0, 'length': 19},
              ],
            }),
            (c, h) => c.onBankCardNumber(h),
          ),
        };

    cases.forEach((name, testCase) {
      final (update, register) = testCase;
      test('$name handler matches its message and nothing else', () async {
        expect(await fires(update, register), isTrue);
        expect(
          await fires(_messageUpdate({'text': 'plain'}), register),
          isFalse,
        );
      });
    });

    test('serviceMessage includes the new service messages', () {
      final filters = Bot<Context>('12345:TOKEN').filters;
      expect(
        filters.serviceMessage.matches(
          ctxOf(_messageUpdate({'paid_messages_waived': <String, dynamic>{}})),
        ),
        isTrue,
      );
      expect(
        filters.serviceMessage.matches(
          ctxOf(
            _messageUpdate({
              'ton_wallet_transfer': {
                'transaction_id': '',
                'peer_address': 'peer',
                'amount': '1',
              },
            }),
          ),
        ),
        isTrue,
      );
    });
  });

  group('Context widget helpers', () {
    test('exposes query data, type and widget identifier', () {
      final query = ctxOf(_widgetQuery(_signType, widgetId: 'w-1'));
      expect(query.widgetQueryData, 'vote:yes');
      expect(query.widgetQueryType, isA<WidgetQueryTypeSignData>());
      expect(query.widgetId, 'w-1');

      final shared = ctxOf(_sharedWidgetQuery(_txType));
      expect(shared.widgetQueryData, 'tx');
      expect(shared.widgetQueryType?.type, WidgetQueryTypeType.sentTransaction);
      expect(shared.widgetId, 'shared-widget');

      final message = ctxOf(
        _messageUpdate({
          'widget': {'html': '<b>hi</b>', 'id': 'msg-widget'},
        }),
      );
      expect(message.widgetQueryData, isNull);
      expect(message.widgetId, 'msg-widget');
    });

    test('replyWithWidget sends to the current chat', () async {
      final ctx = ctxOf(_messageUpdate({'text': 'show'}));
      await ctx.replyWithWidget('<b>hi</b>', height: 120, allowQueries: true);
      expect(capture.method, 'sendWidget');
      expect(jsonDecode(jsonEncode(capture.params)), {
        'chat_id': 123,
        'html': '<b>hi</b>',
        'height': 120,
        'allow_queries': true,
      });
    });

    test('replyWithSharedWidget defaults to the current widget ID', () async {
      final ctx = ctxOf(_widgetQuery(_dataType, widgetId: 'w-1'));
      await ctx.replyWithSharedWidget(chatData: 'x');
      expect(capture.method, 'sendSharedWidget');
      expect(jsonDecode(jsonEncode(capture.params)), {
        'chat_id': 123,
        'widget_id': 'w-1',
        'chat_data': 'x',
      });

      final noWidget = ctxOf(_messageUpdate({'text': 'x'}));
      expect(
        () => noWidget.replyWithSharedWidget(),
        throwsA(isA<TeleverseException>()),
      );
    });

    test('editWidgetData edits chat and inline widget messages', () async {
      await ctxOf(_widgetQuery(_dataType)).editWidgetData(chatData: '');
      expect(capture.method, 'editMessageWidgetData');
      expect(jsonDecode(jsonEncode(capture.params)), {
        'chat_id': 123,
        'message_id': 42,
        'chat_data': '',
      });

      await ctxOf(
        _widgetQuery(_dataType, inline: true),
      ).editWidgetData(publicData: 'p');
      expect(capture.method, 'editMessageWidgetData');
      expect(capture.params, {
        'inline_message_id': 'inline-1',
        'public_data': 'p',
      });

      expect(
        () => ctxOf(_sharedWidgetQuery(_txType)).editWidgetData(chatData: 'x'),
        throwsA(isA<TeleverseException>()),
      );
    });

    test('editSharedWidgetData defaults to the current widget ID', () async {
      await ctxOf(
        _sharedWidgetQuery(_txType),
      ).editSharedWidgetData('public', cacheTime: 30);
      expect(capture.method, 'editSharedWidgetData');
      expect(capture.params, {
        'widget_id': 'shared-widget',
        'public_data': 'public',
        'cache_time': 30,
      });

      expect(
        () => ctxOf(_widgetQuery(_dataType)).editSharedWidgetData('x'),
        throwsA(isA<TeleverseException>()),
      );
    });
  });
}
