import 'package:flutter/material.dart';
import 'package:pokeflutter/models/stat.dart';

class Pokemon {
  /// 포켓몬 id(고유번호)
  int id;

  /// 포켓몬 이름
  String name;

  /// 포켓몬 무게
  int weight;

  /// 포켓몬 키
  int height;

  /// 포켓몬 이미지 url
  String imageUrl;

  /// 포켓몬 타입 리스트
  List<PokemonType> types;

  /// 포켓몬 스탯 리스트
  List<Stat> stats;

  /// 포켓몬 스킬 리스트
  List<String> skills;

  Pokemon({
    required this.id,
    required this.name,
    required this.weight,
    required this.height,
    required this.imageUrl,
    required this.types,
    required this.stats,
    required this.skills,
  });
}

enum PokemonType {
  normal(
    id: 1,
    name: 'normal',
    color: Color(0xFFA8A77A),
    imageUrl: 'asset/pokemon_type/Normal.png',
  ),
  fighting(
    id: 2,
    name: 'fighting',
    color: Color(0xFFC22E28),
    imageUrl: 'asset/pokemon_type/Fighting.png',
  ),
  flying(
    id: 3,
    name: 'flying',
    color: Color(0xFFA98FF3),
    imageUrl: 'asset/pokemon_type/Flying.png',
  ),
  poison(
    id: 4,
    name: 'poison',
    color: Color(0xFFA33EA1),
    imageUrl: 'asset/pokemon_type/Poison.png',
  ),
  ground(
    id: 5,
    name: 'ground',
    color: Color(0xFFE2BF65),
    imageUrl: 'asset/pokemon_type/Ground.png',
  ),
  rock(
    id: 6,
    name: 'rock',
    color: Color(0xFFB6A136),
    imageUrl: 'asset/pokemon_type/Rock.png',
  ),
  bug(
    id: 7,
    name: 'bug',
    color: Color(0xFFA6B91A),
    imageUrl: 'asset/pokemon_type/Bug.png',
  ),
  ghost(
    id: 8,
    name: 'ghost',
    color: Color(0xFF735797),
    imageUrl: 'asset/pokemon_type/Ghost.png',
  ),
  steel(
    id: 9,
    name: 'steel',
    color: Color(0xFFB7B7CE),
    imageUrl: 'asset/pokemon_type/Steel.png',
  ),
  fire(
    id: 10,
    name: 'fire',
    color: Color(0xFFEE8130),
    imageUrl: 'asset/pokemon_type/Fire.png',
  ),
  water(
    id: 11,
    name: 'water',
    color: Color(0xFF6390F0),
    imageUrl: 'asset/pokemon_type/Water.png',
  ),
  grass(
    id: 12,
    name: 'grass',
    color: Color(0xFF7AC74C),
    imageUrl: 'asset/pokemon_type/Grass.png',
  ),
  electric(
    id: 13,
    name: 'electric',
    color: Color(0xFFF7D02C),
    imageUrl: 'asset/pokemon_type/Electric.png',
  ),
  psychic(
    id: 14,
    name: 'psychic',
    color: Color(0xFFF95587),
    imageUrl: 'asset/pokemon_type/Psychic.png',
  ),
  ice(
    id: 15,
    name: 'ice',
    color: Color(0xFF96D9D6),
    imageUrl: 'asset/pokemon_type/Ice.png',
  ),
  dragon(
    id: 16,
    name: 'dragon',
    color: Color(0xFF6F35FC),
    imageUrl: 'asset/pokemon_type/Dragon.png',
  ),
  dark(
    id: 17,
    name: 'dark',
    color: Color(0xFF705746),
    imageUrl: 'asset/pokemon_type/Dark.png',
  ),
  fairy(
    id: 18,
    name: 'fairy',
    color: Color(0xFFD685AD),
    imageUrl: 'asset/pokemon_type/Fairy.png',
  ),
  stellar(
    id: 19,
    name: 'stellar',
    color: Color(0xFFA4A4A4),
    imageUrl: 'asset/pokemon_type/Stellar.png',
  ),
  unknown(
    id: 20,
    name: 'unknown',
    color: Color(0xFF000000),
    imageUrl: 'asset/pokemon_type/Unknown.png',
  );

  const PokemonType({
    required this.id,
    required this.name,
    required this.color,
    required this.imageUrl,
  });

  final int id;
  final String name;
  final Color color;
  final String imageUrl;
}

extension PokemonTypeExtension on PokemonType {
  static PokemonType fromJson(Map<String, dynamic> json) {
    switch (json['name']) {
      case 'normal':
        return PokemonType.normal;
      case 'fighting':
        return PokemonType.fighting;
      case 'flying':
        return PokemonType.flying;
      case 'poison':
        return PokemonType.poison;
      case 'ground':
        return PokemonType.ground;
      case 'rock':
        return PokemonType.rock;
      case 'bug':
        return PokemonType.bug;
      case 'ghost':
        return PokemonType.ghost;
      case 'steel':
        return PokemonType.steel;
      case 'fire':
        return PokemonType.fire;
      case 'water':
        return PokemonType.water;
      case 'grass':
        return PokemonType.grass;
      case 'electric':
        return PokemonType.electric;
      case 'psychic':
        return PokemonType.psychic;
      case 'ice':
        return PokemonType.ice;
      case 'dragon':
        return PokemonType.dragon;
      case 'dark':
        return PokemonType.dark;
      case 'fairy':
        return PokemonType.fairy;
      case 'stellar':
        return PokemonType.stellar;
      case 'unknown':
        return PokemonType.unknown;
      default:
        throw Exception('Unknown PokemonType: ${json['name']}');
    }
  }
}
