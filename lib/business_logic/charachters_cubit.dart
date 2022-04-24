import 'package:bloc/bloc.dart';
import 'package:bloc_work/data/repository/characters_repository.dart';
import 'package:meta/meta.dart';

part 'charachters_state.dart';

class CharachtersCubit extends Cubit<CharachtersState> {
  final CharactersRepository charactersRepository;
  late List<dynamic> characters;

  CharachtersCubit(this.charactersRepository) : super(CharachtersInitial());

  List<dynamic> getAllCharacters(){
    charactersRepository.getAllCharacters().then((characters) {
      emit(CharactersLoaded(characters));
      this.characters = characters;
    });
    return characters;
  }

}
