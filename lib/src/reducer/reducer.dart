import 'package:final_project/src/actions/index.dart';
import 'package:final_project/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetCharactersSuccessful>(_getCharactersSuccessful),
  TypedReducer<AppState, GetCharacterStart>(_getCharacterStart),
  TypedReducer<AppState, GetCharactersError>(_getCharactersError),
  TypedReducer<AppState, SetSelectedCharacter>(_setSelectedCharacters),
  TypedReducer<AppState, UpdateLikeSuccessful>(_updateLikeSuccessful),
]);
AppState _getCharactersSuccessful(AppState state, GetCharactersSuccessful action) {
  return state.copyWith(
    isLoading: false,
    page: state.page + 1,
    character: <Character>[
      if (state.page != 1) ...state.character,
      ...action.character,
    ],
  );
}

AppState _getCharacterStart(AppState state, GetCharacterStart action) {
  return state.copyWith(
    isLoading: true,
  );
}

AppState _getCharactersError(AppState state, GetCharactersError action) {
  return state.copyWith(
    isLoading: false,
  );
}

AppState _setSelectedCharacters(AppState state, SetSelectedCharacter action) {
  return state.copyWith(
    selectedCharacter: action.character,
  );
}

AppState _updateLikeSuccessful(AppState state, UpdateLikeSuccessful action) {
  final List<int> liked = <int>[...state.liked, if (action.like) action.id];
  if (!action.like) {
    liked.remove(action.id);
  }
  return state.copyWith(
    liked: liked,
  );
}
