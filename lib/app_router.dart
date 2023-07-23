import 'package:bloc_with_breakingbad_api/presentation/screens/characters_details.dart';
import 'package:bloc_with_breakingbad_api/presentation/screens/characters_screen.dart';
import 'package:flutter/material.dart';
import 'constants/strings.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => CharactersScreen());
      case charactersDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharactersDetailsScreen());
    }
  }
}
