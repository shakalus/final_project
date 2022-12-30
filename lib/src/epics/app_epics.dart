import 'package:final_project/src/actions/index.dart';
import 'package:final_project/src/data/character_api.dart';
import 'package:final_project/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class AppEpics {
  AppEpics(this._api);
  final CharacterApi _api;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetCharacterStart>(_getCharacterStart),
      TypedEpic<AppState, UpdateLikeStart>(_updateLikeStart),
    ]);
  }

  Stream<dynamic> _getCharacterStart(Stream<GetCharacterStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetCharacterStart action) => _api.getCharacter(store.state.page))
        .map((List<Character> characters) => GetCharacters.successful(characters))
        .onErrorReturnWith((Object error, StackTrace stacktrace) => GetCharacters.error(error, stacktrace));
  }

  Stream<dynamic> _updateLikeStart(Stream<UpdateLikeStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UpdateLikeStart action) {
      return _api
          .updateLike(action.id, like: action.like)
          .asStream()
          .map((_) => UpdateLike.successful(action.id, like: action.like))
          .onErrorReturnWith((Object error, StackTrace stacktrace) => UpdateLike.error(error, stacktrace));
    });
  }
}
