part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<Character>[]) List<Character> character,
    @Default(<int>[]) List<int> liked,
    @Default(true) bool isLoading,
    Character? selectedCharacter,
    @Default(1) int page,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
