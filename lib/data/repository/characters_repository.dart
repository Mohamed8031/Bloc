import 'package:bloc_work/data/web_servese/character_web_serves.dart';

class CharactersRepository {
  final CharacterWebServes characterWebServes;

  CharactersRepository(this.characterWebServes);

  Future<List<dynamic>> getAllCharacters() async {
    final characters = await characterWebServes.getAllCharacters();
    return characters.map((character) => character.fromJson(character)).toList();
  }
}
