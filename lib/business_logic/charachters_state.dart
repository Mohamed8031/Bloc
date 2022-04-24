part of 'charachters_cubit.dart';

@immutable
abstract class CharachtersState {}

class CharachtersInitial extends CharachtersState {}

class CharactersLoaded extends CharachtersState {
  late final List<dynamic> characters;

  CharactersLoaded(this.characters);
}
