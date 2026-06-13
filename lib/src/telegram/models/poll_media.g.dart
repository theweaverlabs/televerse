// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PollMedia _$PollMediaFromJson(Map<String, dynamic> json) => _PollMedia(
  animation: json['animation'] == null
      ? null
      : Animation.fromJson(json['animation'] as Map<String, dynamic>),
  audio: json['audio'] == null
      ? null
      : Audio.fromJson(json['audio'] as Map<String, dynamic>),
  document: json['document'] == null
      ? null
      : Document.fromJson(json['document'] as Map<String, dynamic>),
  link: json['link'] == null
      ? null
      : Link.fromJson(json['link'] as Map<String, dynamic>),
  livePhoto: json['live_photo'] == null
      ? null
      : LivePhoto.fromJson(json['live_photo'] as Map<String, dynamic>),
  location: json['location'] == null
      ? null
      : Location.fromJson(json['location'] as Map<String, dynamic>),
  photo: (json['photo'] as List<dynamic>?)
      ?.map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
      .toList(),
  sticker: json['sticker'] == null
      ? null
      : Sticker.fromJson(json['sticker'] as Map<String, dynamic>),
  venue: json['venue'] == null
      ? null
      : Venue.fromJson(json['venue'] as Map<String, dynamic>),
  video: json['video'] == null
      ? null
      : Video.fromJson(json['video'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PollMediaToJson(_PollMedia instance) =>
    <String, dynamic>{
      'animation': ?instance.animation,
      'audio': ?instance.audio,
      'document': ?instance.document,
      'link': ?instance.link,
      'live_photo': ?instance.livePhoto,
      'location': ?instance.location,
      'photo': ?instance.photo,
      'sticker': ?instance.sticker,
      'venue': ?instance.venue,
      'video': ?instance.video,
    };
