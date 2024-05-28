import 'package:flutter/material.dart';

class PokemonType {
  /// type id
  int id;

  /// slot number
  /// 순서에 따라 주속성 결정
  int slot;

  /// 타입 이름
  String name;

  /// 타입 색상
  Color color;

  PokemonType({
    required this.id,
    required this.slot,
    required this.name,
    required this.color,
  });
}
