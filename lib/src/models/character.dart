part of 'index.dart';

@freezed
class Character with _$Character {
  const factory Character({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required String created,
    @JsonKey(name: 'image') required String mediumImage,
  }) = Character$;

  factory Character.fromJson(Map<dynamic, dynamic> json) => _$CharacterFromJson(Map<String, dynamic>.from(json));
}
