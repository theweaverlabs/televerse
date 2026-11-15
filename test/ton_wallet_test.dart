import 'dart:convert';

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

import 'helpers/capture_transformer.dart';

const _privateChatInfo = {
  'id': 123,
  'type': 'private',
  'max_reaction_count': 0,
  'accepted_gift_types': <String, Object>{},
};

void main() {
  late CaptureTransformer capture;
  late RawAPI api;

  setUp(() {
    capture = CaptureTransformer();
    api = RawAPI('12345:TOKEN')..use(capture);
  });

  test(
    'getChat decodes wallet card data and keeps decimal strings exact',
    () async {
      const chatInfo = {
        ..._privateChatInfo,
        'ton_wallet_card': {
          'address': 'wallet-address',
          'amount': '9007199254740993',
          'background_nft_address': 'nft-address',
          'stickers': [
            {
              'position': {
                'x_percentage': 20.5,
                'y_percentage': 30.0,
                'width_percentage': 40.0,
                'height_percentage': 45.0,
                'rotation_angle': 0.0,
                'corner_radius_percentage': 5.0,
              },
              'nft': {
                'address': 'nft-address',
                'collection_address': 'collection-address',
                'index': '9007199254740994',
                'name': 'Example sticker',
                'description': 'A wallet card fixture',
                'attributes': [
                  {'trait_type': 'Color', 'value': 'Blue'},
                ],
              },
            },
          ],
        },
      };
      capture.result = chatInfo;

      final result = await api.getChat(ChatID(123));
      final card = result.tonWalletCard!;
      final sticker = card.stickers.single;

      expect(capture.method, 'getChat');
      expect(capture.encoded('chat_id'), 123);
      expect(card.amount, '9007199254740993');
      expect(card.backgroundNftAddress, 'nft-address');
      expect(sticker.position.xPercentage, 20.5);
      expect(sticker.nft.index, '9007199254740994');
      expect(sticker.nft.attributes?.single.traitType, 'Color');
      expect(jsonDecode(jsonEncode(result)), chatInfo);
    },
  );

  test('getChat accepts a result without a wallet card', () async {
    capture.result = _privateChatInfo;

    final result = await api.getChat(ChatID(123));

    expect(result.tonWalletCard, isNull);
    expect(result.toJson(), isNot(contains('ton_wallet_card')));
  });

  test('a pending outgoing transfer is decoded and classified as service', () {
    const json = {
      'update_id': 1,
      'message': {
        ...CaptureTransformer.message,
        'ton_wallet_transfer': {
          'transaction_id': '',
          'peer_address': 'peer-address',
          'amount': '-9007199254740993',
        },
      },
    };

    final update = Update.fromJson(json);
    final ctx = Context(update, api, const BotInfo(id: 999));
    final transfer = ctx.msg!.tonWalletTransfer!;

    expect(transfer.transactionId, isEmpty);
    expect(transfer.peerAddress, 'peer-address');
    expect(transfer.amount, '-9007199254740993');
    expect(transfer.comment, isNull);
    expect(ctx.isServiceMessage(), isTrue);
    expect(Filters<Context>().serviceMessage.matches(ctx), isTrue);
    expect(jsonDecode(jsonEncode(update)), json);
  });

  test('a completed transfer preserves its plaintext comment', () {
    const json = {
      ...CaptureTransformer.message,
      'ton_wallet_transfer': {
        'transaction_id': 'transaction-123',
        'peer_address': 'peer-address',
        'amount': '1500000000',
        'comment': 'Example payment',
      },
    };

    final message = Message.fromJson(json);

    expect(message.tonWalletTransfer?.transactionId, 'transaction-123');
    expect(message.tonWalletTransfer?.comment, 'Example payment');
    expect(jsonDecode(jsonEncode(message)), json);
  });

  test('ordinary messages still do not match the service message checks', () {
    final update = Update.fromJson({
      'update_id': 2,
      'message': {...CaptureTransformer.message, 'text': 'Hello'},
    });
    final ctx = Context(update, api, const BotInfo(id: 999));

    expect(ctx.msg?.tonWalletTransfer, isNull);
    expect(ctx.isServiceMessage(), isFalse);
    expect(Filters<Context>().serviceMessage.matches(ctx), isFalse);
  });
}
