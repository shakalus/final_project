part of 'index.dart';

@freezed
class GetCharacters with _$GetCharacters {
  const factory GetCharacters() = GetCharacterStart;

  const factory GetCharacters.successful(List<Character> character) = GetCharactersSuccessful;

  const factory GetCharacters.error(Object error, StackTrace stackTrace) = GetCharactersError;
}
