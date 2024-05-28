import 'package:pokeflutter/model/stat.dart';
import 'package:pokeflutter/model/type.dart';

class Pokemon {
  /// 포켓몬 id(고유번호)
  int id;

  /// 포켓몬 이름
  String name;

  /// 포켓몬 무게
  int weight;

  /// 포켓몬 키
  int height;

  /// 포켓몬 타입 리스트
  List<PokemonType> types;

  /// 포켓몬 스탯 리스트
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
