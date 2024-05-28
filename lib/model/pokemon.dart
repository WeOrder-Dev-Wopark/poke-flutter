import 'package:pokeflutter/model/stat.dart';
import 'package:pokeflutter/model/type.dart';

class Pokemon {
  int id;
  String name;
  int weight;
  int height;
  List<PokemonType> types;
  List<Stat> stats;

  Pokemon({
    required this.id,
    required this.name,
    required this.weight,
    required this.height,
    required this.types,
    required this.stats,
  });
}
