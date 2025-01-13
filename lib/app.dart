import 'package:flutter/material.dart';
import 'package:pokeflutter/screens/home/home_screen.dart';
import 'package:pokeflutter/screens/pokemon_detail/pokemon_detail_screen.dart';
import 'package:pokeflutter/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PokéDex",
      theme: ThemeConfig.light,
      home: const HomeScreen(),
      routes: {
        '/pokemon_detail': (context) {
          final routeSettings = ModalRoute.of(context)?.settings;
          if (routeSettings == null) {
            throw Exception('Route settings not found');
          }
          return PokemonDetailScreen(
            id: routeSettings.arguments as int,
          );
        },
      },
    );
  }
}
