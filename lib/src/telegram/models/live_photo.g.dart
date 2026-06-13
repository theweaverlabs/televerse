// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LivePhoto _$LivePhotoFromJson(Map<String, dynamic> json) => _LivePhoto(
  photo: (json['photo'] as List<dynamic>?)
      ?.map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
      .toList(),
  fileId: json['file_id'] as String,
  fileUniqueId: json['file_unique_id'] as String,
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  duration: (json['duration'] as num).toInt(),
  mimeType: json['mime_type'] as String?,
  fileSize: (json['file_size'] as num?)?.toInt(),
);

Map<String, dynamic> _$LivePhotoToJson(_LivePhoto instance) =>
    <String, dynamic>{
      'photo': ?instance.photo,
      'file_id': instance.fileId,
      'file_unique_id': instance.fileUniqueId,
      'width': instance.width,
      'height': instance.height,
      'duration': instance.duration,
      'mime_type': ?instance.mimeType,
      'file_size': ?instance.fileSize,
    };
