import 'dart:convert';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

void main() {
  group('InputMedia and LivePhoto 10.0 Standalone Classes Tests', () {
    test('InputMediaSticker JSON serialization', () {
      final media = InputFile.fromFileId('sticker_id_123');
      final stickerMedia = InputMediaSticker(media: media, emoji: '💡');

      final json = stickerMedia.toJson();
      expect(json['type'], equals('sticker'));
      expect(json['media'], equals('sticker_id_123'));
      expect(json['emoji'], equals('💡'));
    });

    test('InputMediaLocation JSON serialization', () {
      final locationMedia = InputMediaLocation(
        latitude: 12.34,
        longitude: 56.78,
        horizontalAccuracy: 15.0,
      );

      final json = locationMedia.toJson();
      expect(json['type'], equals('location'));
      expect(json['latitude'], equals(12.34));
      expect(json['longitude'], equals(56.78));
      expect(json['horizontal_accuracy'], equals(15.0));
    });

    test('InputMediaVenue JSON serialization', () {
      final venueMedia = InputMediaVenue(
        latitude: 12.34,
        longitude: 56.78,
        title: 'Central Park',
        address: 'New York, NY',
        foursquareId: 'four123',
        foursquareType: 'park',
        googlePlaceId: 'google123',
        googlePlaceType: 'park_type',
      );

      final json = venueMedia.toJson();
      expect(json['type'], equals('venue'));
      expect(json['latitude'], equals(12.34));
      expect(json['longitude'], equals(56.78));
      expect(json['title'], equals('Central Park'));
      expect(json['address'], equals('New York, NY'));
      expect(json['foursquare_id'], equals('four123'));
      expect(json['foursquare_type'], equals('park'));
      expect(json['google_place_id'], equals('google123'));
      expect(json['google_place_type'], equals('park_type'));
    });

    test('LivePhoto JSON serialization and deserialization', () {
      final livePhoto = LivePhoto(
        fileId: 'live_photo_file_id',
        fileUniqueId: 'live_photo_unique_id',
        width: 1920,
        height: 1080,
        duration: 5,
        mimeType: 'video/mp4',
        fileSize: 102400,
        photo: [
          PhotoSize(
            fileId: 'photo_file_id',
            fileUniqueId: 'photo_unique_id',
            width: 800,
            height: 600,
            fileSize: 45000,
          ),
        ],
      );

      // Perform a real JSON roundtrip to simulate network payload
      final json = livePhoto.toJson();
      final jsonString = jsonEncode(json);
      final decodedJson = jsonDecode(jsonString) as Map<String, dynamic>;

      expect(decodedJson['file_id'], equals('live_photo_file_id'));
      expect(decodedJson['file_unique_id'], equals('live_photo_unique_id'));
      expect(decodedJson['width'], equals(1920));
      expect(decodedJson['height'], equals(1080));
      expect(decodedJson['duration'], equals(5));
      expect(decodedJson['mime_type'], equals('video/mp4'));
      expect(decodedJson['file_size'], equals(102400));
      expect(decodedJson['photo'][0]['file_id'], equals('photo_file_id'));

      // Test deserialization
      final deserialized = LivePhoto.fromJson(decodedJson);
      expect(deserialized.fileId, equals('live_photo_file_id'));
      expect(deserialized.fileUniqueId, equals('live_photo_unique_id'));
      expect(deserialized.width, equals(1920));
      expect(deserialized.height, equals(1080));
      expect(deserialized.duration, equals(5));
      expect(deserialized.mimeType, equals('video/mp4'));
      expect(deserialized.fileSize, equals(102400));
      expect(deserialized.photo?.first.fileId, equals('photo_file_id'));
      expect(deserialized.durationTime, equals(Duration(seconds: 5)));
    });

    test('Link JSON serialization and deserialization', () {
      final link = Link(url: 'https://example.com');
      final json = link.toJson();
      expect(json['url'], equals('https://example.com'));

      final deserialized = Link.fromJson(json);
      expect(deserialized.url, equals('https://example.com'));
    });

    test('PollMedia JSON serialization and deserialization', () {
      final pollMedia = PollMedia(
        link: Link(url: 'https://example.com'),
        animation: Animation(
          fileId: 'anim_file_id',
          fileUniqueId: 'anim_unique_id',
          width: 320,
          height: 240,
          duration: 3,
        ),
      );

      final json = pollMedia.toJson();
      final jsonString = jsonEncode(json);
      final decodedJson = jsonDecode(jsonString) as Map<String, dynamic>;

      expect(decodedJson['link']['url'], equals('https://example.com'));
      expect(decodedJson['animation']['file_id'], equals('anim_file_id'));
      expect(decodedJson['animation']['duration'], equals(3));

      final deserialized = PollMedia.fromJson(decodedJson);
      expect(deserialized.link?.url, equals('https://example.com'));
      expect(deserialized.animation?.fileId, equals('anim_file_id'));
      expect(deserialized.animation?.duration, equals(3));
    });

    test('Poll JSON serialization and deserialization with media', () {
      final poll = Poll(
        id: 'poll_123',
        question: 'What is your favorite color?',
        options: [
          PollOption(
            text: 'Red',
            voterCount: 5,
            media: PollMedia(
              link: Link(url: 'https://example.com/red-details'),
            ),
          ),
          PollOption(text: 'Blue', voterCount: 10),
        ],
        totalVoterCount: 15,
        isClosed: false,
        isAnonymous: true,
        type: PollType.regular,
        allowsMultipleAnswers: false,
        media: PollMedia(link: Link(url: 'https://example.com/color-poll')),
        explanationMedia: PollMedia(
          link: Link(url: 'https://example.com/quiz-explanation'),
        ),
      );

      final json = poll.toJson();
      final jsonString = jsonEncode(json);
      final decodedJson = jsonDecode(jsonString) as Map<String, dynamic>;

      expect(decodedJson['id'], equals('poll_123'));
      expect(
        decodedJson['media']['link']['url'],
        equals('https://example.com/color-poll'),
      );
      expect(
        decodedJson['explanation_media']['link']['url'],
        equals('https://example.com/quiz-explanation'),
      );
      expect(
        decodedJson['options'][0]['media']['link']['url'],
        equals('https://example.com/red-details'),
      );

      final deserialized = Poll.fromJson(decodedJson);
      expect(deserialized.id, equals('poll_123'));
      expect(
        deserialized.media?.link?.url,
        equals('https://example.com/color-poll'),
      );
      expect(
        deserialized.explanationMedia?.link?.url,
        equals('https://example.com/quiz-explanation'),
      );
      expect(
        deserialized.options.first.media?.link?.url,
        equals('https://example.com/red-details'),
      );
    });

    test('InputMediaLivePhoto JSON serialization and interface check', () {
      final video = InputFile.fromFileId('video_file_id');
      final photo = InputFile.fromFileId('photo_file_id');
      final livePhoto = InputMediaLivePhoto(
        media: video,
        photo: photo,
        caption: 'Live photo caption',
        parseMode: ParseMode.markdown,
        hasSpoiler: true,
      );

      // Verify interface implementation
      expect(livePhoto, isA<InputPollMedia>());

      // Verify file collection
      final files = livePhoto.getInputFiles();
      expect(files, containsAll([video, photo]));

      // Verify JSON output
      final json = livePhoto.toJson();
      final jsonString = jsonEncode(json);
      final decodedJson = jsonDecode(jsonString) as Map<String, dynamic>;

      expect(decodedJson['type'], equals('live_photo'));
      expect(decodedJson['media'], equals('video_file_id'));
      expect(decodedJson['photo'], equals('photo_file_id'));
      expect(decodedJson['caption'], equals('Live photo caption'));
      expect(decodedJson['parse_mode'], equals('Markdown'));
      expect(decodedJson['has_spoiler'], isTrue);
    });

    test('InputMediaLink JSON serialization and interface check', () {
      final link = InputMediaLink(url: 'https://example.com/link-media');

      // Verify interface implementation
      expect(link, isA<InputPollOptionMedia>());

      // Verify file collection
      final files = link.getInputFiles();
      expect(files, isEmpty);

      // Verify JSON output
      final json = link.toJson();
      expect(json['type'], equals('link'));
      expect(json['url'], equals('https://example.com/link-media'));
    });

    test(
      'InputPollOption with media JSON serialization and interface check',
      () {
        final stickerFile = InputFile.fromFileId('sticker_file_id');
        final stickerMedia = InputMediaSticker(media: stickerFile, emoji: '🎉');

        final option = InputPollOption(
          text: 'Option with media',
          media: stickerMedia,
        );

        // Verify interface implementation
        expect(option.media, isA<InputPollOptionMedia>());
        expect(option.media, isA<InputMediaSticker>());

        // Verify serialization
        final json = option.toJson();
        final jsonString = jsonEncode(json);
        final decodedJson = jsonDecode(jsonString) as Map<String, dynamic>;

        expect(decodedJson['text'], equals('Option with media'));
        expect(decodedJson['media']['type'], equals('sticker'));
        expect(decodedJson['media']['media'], equals('sticker_file_id'));
        expect(decodedJson['media']['emoji'], equals('🎉'));
      },
    );
  });
}
