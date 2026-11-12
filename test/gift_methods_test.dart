import 'dart:convert';

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

import 'helpers/capture_transformer.dart';

const _sticker = {
  'file_id': 'sticker-id',
  'file_unique_id': 'sticker-unique',
  'type': 'regular',
  'width': 512,
  'height': 512,
  'is_animated': false,
  'is_video': false,
};

void main() {
  late CaptureTransformer capture;
  late RawAPI api;

  setUp(() {
    capture = CaptureTransformer();
    api = RawAPI('12345:TOKEN')..use(capture);
  });

  test('getUniqueGift sends the name and decodes the gift', () async {
    const json = {
      'gift_id': 'gift-id',
      'base_name': 'Example Gift',
      'name': 'ExampleGift-42',
      'number': 42,
      'model': {'name': 'Model', 'sticker': _sticker, 'rarity_per_mille': 10},
      'symbol': {'name': 'Symbol', 'sticker': _sticker, 'rarity_per_mille': 20},
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
    };
    capture.result = json;

    final UniqueGift gift = await api.getUniqueGift('ExampleGift-42');

    expect(capture.method, 'getUniqueGift');
    expect(capture.params, {'name': 'ExampleGift-42'});
    expect(gift.name, 'ExampleGift-42');
    expect(gift.model.sticker.fileId, 'sticker-id');
    expect(gift.backdrop.colors.textColor, 4);
    expect(jsonDecode(jsonEncode(gift)), json);
  });

  test(
    'deleteBusinessAccountGift sends both identifiers and returns true',
    () async {
      capture.result = true;

      final bool deleted = await api.deleteBusinessAccountGift(
        'business-connection',
        'owned-gift',
      );

      expect(capture.method, 'deleteBusinessAccountGift');
      expect(capture.params, {
        'business_connection_id': 'business-connection',
        'owned_gift_id': 'owned-gift',
      });
      expect(deleted, isTrue);
    },
  );
}
