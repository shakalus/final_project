import 'dart:convert';
import 'package:final_project/src/models/index.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CharacterApi {
  const CharacterApi(this._client, this._preferences);

  final Client _client;
  final SharedPreferences _preferences;

  Future<List<Character>> getCharacter(int page) async {
    final Response response = await _client.get(
      Uri.parse(
        'https://rickandmortyapi.com/api/character?page=$page',
      ),
    );

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;

    return (body['results'] as List<dynamic>)
        .map((dynamic item) => Character.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  Future<void> updateLike(int id, {required bool like}) async {
    final String key = '$id';
    if (like) {
      await _preferences.setInt(key, id);
    } else {
      await _preferences.remove(key);
    }
  }
}
