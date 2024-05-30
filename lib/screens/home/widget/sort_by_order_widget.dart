import 'package:flutter/material.dart';

class SortByOrderWidget extends StatelessWidget {
  const SortByOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                // navigate to PokemonDetailScreen
                Navigator.pushNamed(context, '/pokemon_detail', arguments: 2);
              },
              child: const Text('go detail')),
        ));
  }
}
