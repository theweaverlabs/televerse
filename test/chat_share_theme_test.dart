import 'dart:convert';

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

import 'helpers/capture_transformer.dart';

const _chatInfo = {
  'id': 123,
  'type': 'private',
  'max_reaction_count': 0,
  'accepted_gift_types': <String, Object>{},
};
const _colors = {
  'center_color': 0x123456,
  'edge_color': 0x234567,
  'symbol_color': 0x345678,
  'text_color': 0x456789,
};
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

  test(
    'getChat decodes an emoji theme with regular and custom emoji',
    () async {
      const json = {
        ..._chatInfo,
        'share_theme': {
          'type': 'emoji',
          'emojis': [
            {'type': 'emoji', 'emoji': '\u{1F31F}'},
            {'type': 'custom_emoji', 'custom_emoji_id': '9007199254740993'},
          ],
          'background_backdrop_id': 7,
        },
      };
      capture.result = json;

      final chat = await api.getChat(ChatID(123));
      final theme = chat.shareTheme as ChatShareThemeEmoji;

      expect(capture.method, 'getChat');
      expect(theme.backgroundBackdropId, 7);
      expect((theme.emojis.first as EmojiTypeEmoji).emoji, '\u{1F31F}');
      expect(
        (theme.emojis.last as EmojiTypeCustomEmoji).customEmojiId,
        '9007199254740993',
      );
      expect(jsonDecode(jsonEncode(chat)), json);
    },
  );

  test('emoji themes accept an empty list and omit the default backdrop', () {
    const json = {
      ..._chatInfo,
      'share_theme': {'type': 'emoji', 'emojis': <Object>[]},
    };

    final chat = ChatFullInfo.fromJson(json);
    final theme = chat.shareTheme as ChatShareThemeEmoji;

    expect(theme.emojis, isEmpty);
    expect(theme.backgroundBackdropId, isNull);
    expect(jsonDecode(jsonEncode(chat)), json);
  });

  test('getChat accepts chat info without a share theme', () async {
    capture.result = _chatInfo;

    final chat = await api.getChat(ChatID(123));

    expect(chat.shareTheme, isNull);
    expect(jsonDecode(jsonEncode(chat)), _chatInfo);
  });

  test('a unique gift theme decodes its existing gift model', () {
    const json = {
      ..._chatInfo,
      'share_theme': {
        'type': 'unique_gift',
        'gift': {
          'gift_id': 'gift-id',
          'base_name': 'Example Gift',
          'name': 'ExampleGift-1',
          'number': 1,
          'model': {
            'name': 'Model',
            'sticker': _sticker,
            'rarity_per_mille': 10,
          },
          'symbol': {
            'name': 'Symbol',
            'sticker': _sticker,
            'rarity_per_mille': 20,
          },
          'backdrop': {
            'name': 'Backdrop',
            'colors': _colors,
            'rarity_per_mille': 30,
          },
        },
      },
    };

    final chat = ChatFullInfo.fromJson(json);
    final theme = chat.shareTheme as ChatShareThemeUniqueGift;

    expect(theme.gift.name, 'ExampleGift-1');
    expect(theme.gift.backdrop.colors.centerColor, 0x123456);
    expect(jsonDecode(jsonEncode(chat)), json);
  });

  test('getChatShareThemeBackdrops decodes a parameterless request', () async {
    const json = {
      'backdrops': [
        {'id': 7, 'name': 'Example backdrop', 'colors': _colors},
      ],
    };
    capture.result = json;

    final result = await api.getChatShareThemeBackdrops();
    final backdrop = result.backdrops.single;

    expect(capture.method, 'getChatShareThemeBackdrops');
    expect(capture.payload?.params ?? const <String, Object>{}, isEmpty);
    expect(backdrop.id, 7);
    expect(backdrop.name, 'Example backdrop');
    expect(backdrop.colors.textColor, 0x456789);
    expect(jsonDecode(jsonEncode(result)), json);
  });
}
