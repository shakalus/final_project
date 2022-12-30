// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Character$ _$$Character$FromJson(Map<String, dynamic> json) => _$Character$(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      type: json['type'] as String,
      gender: json['gender'] as String,
      created: json['created'] as String,
      mediumImage: json['image'] as String,
    );

Map<String, dynamic> _$$Character$ToJson(_$Character$ instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'created': instance.created,
      'image': instance.mediumImage,
    };

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      character: (json['character'] as List<dynamic>?)
              ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Character>[],
      liked: (json['liked'] as List<dynamic>?)?.map((e) => e as int).toList() ??
          const <int>[],
      isLoading: json['isLoading'] as bool? ?? true,
      selectedCharacter: json['selectedCharacter'] == null
          ? null
          : Character.fromJson(
              json['selectedCharacter'] as Map<String, dynamic>,),
      page: json['page'] as int? ?? 1,
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) =>
    <String, dynamic>{
      'character': instance.character,
      'liked': instance.liked,
      'isLoading': instance.isLoading,
      'selectedCharacter': instance.selectedCharacter,
      'page': instance.page,
    };
