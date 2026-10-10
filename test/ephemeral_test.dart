import 'dart:convert';
import 'dart:typed_data';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

import 'helpers/capture_transformer.dart';

void main() {
  group('Ephemeral fields tests', () {
    test('BotCommand supports is_ephemeral field', () {
      final command = BotCommand(
        command: 'help',
        description: 'Get help',
        isEphemeral: true,
      );

      expect(command.command, equals('help'));
      expect(command.description, equals('Get help'));
      expect(command.isEphemeral, isTrue);

      final json = command.toJson();
      expect(json['command'], equals('help'));
      expect(json['description'], equals('Get help'));
      expect(json['is_ephemeral'], isTrue);

      final decoded = BotCommand.fromJson(json);
      expect(decoded.isEphemeral, isTrue);
    });

    test('Message supports receiver_user and ephemeral_message_id fields', () {
      final rawJson = {
        'chat': {'id': 67890, 'type': 'private'},
        'message_id': 1,
        'date': 1600000000,
        'receiver_user': {'id': 12345, 'is_bot': false, 'first_name': 'John'},
        'ephemeral_message_id': 99,
      };

      final message = Message.fromJson(rawJson);
      expect(message.receiverUser?.id, equals(12345));
      expect(message.ephemeralMessageId, equals(99));

      final json = message.toJson();
      expect(json['receiver_user'], isNotNull);
      expect(json['ephemeral_message_id'], equals(99));
    });
  });

  group('EphemeralMessageParameters Tests', () {
    test('serializes and deserializes correctly', () {
      const parameters = EphemeralMessageParameters(
        receiverUserId: 456,
        callbackQueryId: 'cb_789',
        replaceCallbackQueryMessage: true,
      );

      final json = jsonDecode(jsonEncode(parameters)) as Map<String, dynamic>;
      expect(
        json,
        equals({
          'receiver_user_id': 456,
          'callback_query_id': 'cb_789',
          'replace_callback_query_message': true,
        }),
      );

      final decoded = EphemeralMessageParameters.fromJson(json);
      expect(decoded.receiverUserId, equals(456));
      expect(decoded.callbackQueryId, equals('cb_789'));
      expect(decoded.replaceCallbackQueryMessage, isTrue);
    });

    test('omits optional fields when null', () {
      const parameters = EphemeralMessageParameters(receiverUserId: 456);
      expect(
        jsonDecode(jsonEncode(parameters)),
        equals({'receiver_user_id': 456}),
      );
    });
  });

  group('Ephemeral RawAPI requests', () {
    late RawAPI api;
    late CaptureTransformer capture;

    setUp(() {
      capture = CaptureTransformer();
      api = RawAPI('TEST_TOKEN')..use(capture);
    });

    test('sendMessage sends ephemeral_message_parameters', () async {
      await api.sendMessage(
        ChatID(123),
        'Hello',
        ephemeralMessageParameters: const EphemeralMessageParameters(
          receiverUserId: 456,
          callbackQueryId: 'cb_789',
          replaceCallbackQueryMessage: true,
        ),
      );

      expect(capture.method, equals('sendMessage'));
      expect(
        capture.encoded('ephemeral_message_parameters'),
        equals({
          'receiver_user_id': 456,
          'callback_query_id': 'cb_789',
          'replace_callback_query_message': true,
        }),
      );
      expect(capture.params.containsKey('receiver_user_id'), isFalse);
      expect(capture.params.containsKey('callback_query_id'), isFalse);
    });

    test('sendRichMessage sends ephemeral_message_parameters', () async {
      await api.sendRichMessage(
        ChatID(123),
        const InputRichMessage(markdown: '*Hi*'),
        ephemeralMessageParameters: const EphemeralMessageParameters(
          receiverUserId: 456,
        ),
      );

      expect(capture.method, equals('sendRichMessage'));
      expect(
        capture.encoded('ephemeral_message_parameters'),
        equals({'receiver_user_id': 456}),
      );
    });

    test('editEphemeralMessageMedia uploads new files', () async {
      final photo = InputFile.fromBytes(Uint8List.fromList([1, 2, 3]));
      await api.editEphemeralMessageMedia(
        ChatID(123),
        456,
        7,
        InputMedia.photo(media: photo),
      );

      expect(capture.method, equals('editEphemeralMessageMedia'));
      final files = capture.payload!.files!;
      expect(files.length, equals(1));
      expect(
        capture.encoded('media')['media'],
        equals('attach://${files.keys.single}'),
      );
    });

    test('editEphemeralMessageText supports rich messages', () async {
      final photo = InputFile.fromBytes(Uint8List.fromList([1, 2, 3]));
      await api.editEphemeralMessageText(
        ChatID(123),
        456,
        7,
        null,
        richMessage: InputRichMessage(
          blocks: [
            InputRichBlock.photo(
              photo: InputMedia.photo(media: photo) as InputMediaPhoto,
            ),
          ],
        ),
      );

      expect(capture.method, equals('editEphemeralMessageText'));
      expect(capture.params.containsKey('text'), isFalse);
      expect(capture.params['receiver_user_id'], equals(456));
      expect(capture.params['ephemeral_message_id'], equals(7));

      final files = capture.payload!.files!;
      expect(files.length, equals(1));
      final richMessage = capture.encoded('rich_message');
      expect(
        richMessage['blocks'][0]['photo']['media'],
        equals('attach://${files.keys.single}'),
      );
    });

    test('editEphemeralMessageText still accepts plain text', () async {
      await api.editEphemeralMessageText(ChatID(123), 456, 7, 'Updated');

      expect(capture.params['text'], equals('Updated'));
      expect(capture.params.containsKey('rich_message'), isFalse);
      expect(capture.payload!.files, isEmpty);
    });

    test(
      'editEphemeralMessageCaption sends show_caption_above_media',
      () async {
        await api.editEphemeralMessageCaption(
          ChatID(123),
          456,
          7,
          caption: 'New caption',
          showCaptionAboveMedia: true,
        );

        expect(capture.method, equals('editEphemeralMessageCaption'));
        expect(capture.params['caption'], equals('New caption'));
        expect(capture.params['show_caption_above_media'], isTrue);
      },
    );

    test('promoteChatMember sends can_send_welcome_messages', () async {
      await api.promoteChatMember(
        ChatID(123),
        456,
        canSendWelcomeMessages: true,
      );

      expect(capture.method, equals('promoteChatMember'));
      expect(capture.params['can_send_welcome_messages'], isTrue);
    });
  });

  group('Administrator rights Tests', () {
    test('ChatAdministratorRights parses welcome messages and topics', () {
      final json = {
        'is_anonymous': false,
        'can_manage_chat': true,
        'can_delete_messages': true,
        'can_manage_video_chats': false,
        'can_restrict_members': true,
        'can_promote_members': false,
        'can_change_info': false,
        'can_invite_users': true,
        'can_manage_topics': true,
        'can_send_welcome_messages': true,
      };

      final rights = ChatAdministratorRights.fromJson(json);
      expect(rights.canManageForum, isTrue);
      expect(rights.canSendWelcomeMessages, isTrue);

      final encoded = rights.toJson();
      expect(encoded['can_manage_topics'], isTrue);
      expect(encoded.containsKey('can_manage_forum'), isFalse);
      expect(encoded['can_send_welcome_messages'], isTrue);
    });

    test('ChatMemberAdministrator parses can_send_welcome_messages', () {
      final json = {
        'status': 'administrator',
        'user': {'id': 1, 'is_bot': false, 'first_name': 'Admin'},
        'can_be_edited': false,
        'is_anonymous': false,
        'can_manage_chat': true,
        'can_delete_messages': true,
        'can_manage_video_chats': false,
        'can_restrict_members': true,
        'can_promote_members': false,
        'can_change_info': false,
        'can_invite_users': true,
        'can_post_stories': false,
        'can_edit_stories': false,
        'can_delete_stories': false,
        'can_send_welcome_messages': true,
      };

      final member = ChatMember.fromJson(json);
      expect(member, isA<ChatMemberAdministrator>());
      expect(
        (member as ChatMemberAdministrator).canSendWelcomeMessages,
        isTrue,
      );
      expect(member.toJson()['can_send_welcome_messages'], isTrue);
    });

    test('can_send_welcome_messages is optional when parsing', () {
      final rights = ChatAdministratorRights.fromJson({
        'is_anonymous': false,
        'can_manage_chat': true,
        'can_delete_messages': false,
        'can_manage_video_chats': false,
        'can_restrict_members': false,
        'can_promote_members': false,
        'can_change_info': false,
        'can_invite_users': false,
      });
      expect(rights.canSendWelcomeMessages, isNull);
    });
  });
}
