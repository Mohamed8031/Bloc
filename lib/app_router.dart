import 'package:bloc_work/business_logic/charachters_cubit.dart';
import 'package:bloc_work/data/repository/characters_repository.dart';
import 'package:bloc_work/data/web_servese/character_web_serves.dart';
import 'package:bloc_work/presentation/screens/character_details_screen.dart';
import 'package:bloc_work/presentation/screens/characters.dart';
import 'package:flutter/material.dart';

import 'constants/strings.dart';

class AppRouter{

  late CharactersRepository charactersRepository;
  late CharachtersCubit charachtersCubit;

  AppRouter(){
    charactersRepository = CharactersRepository(CharacterWebServes());
    charachtersCubit = CharachtersCubit(charactersRepository);
  }


  Route? generateRoute(RouteSettings settings){
    switch(settings.name) {
      case characterScreen:
        return MaterialPageRoute(builder: (_) => CharacterScreen());

      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
      
  }
}