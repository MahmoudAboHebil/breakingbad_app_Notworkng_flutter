import 'package:bloc_with_breakingbad_api/data/web_services/characters_web_services.dart';
import 'package:bloc_with_breakingbad_api/data/models/characters.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;
  CharactersRepository(this.charactersWebServices);

  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters.map((char) => Character.fromJson(char)).toList();
  }
}
