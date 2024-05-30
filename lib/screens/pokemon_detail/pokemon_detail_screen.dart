import 'package:flutter/material.dart';

class PokemonDetailScreen extends StatefulWidget {
  final int id;
  const PokemonDetailScreen({
    super.key,
    required this.id,
  });

  @override
  State<PokemonDetailScreen> createState() => _PokemonDetailScreenState();
}

class _PokemonDetailScreenState extends State<PokemonDetailScreen> {
  late int id;

  void onPrevButtonPressed() {
    if (id > 1) {
      id--;
    }
    setState(() {});
  }

  void onNextButtonPressed() {
    id++;
    setState(() {});
  }

  @override
  void initState() {
    id = widget.id;
    super.initState();
  }

  /// TODO: id가 바뀔 때 api 재호출

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onPrevButtonPressed,
            icon: const Icon(Icons.arrow_left_outlined),
          ),
          Text('$id'),
          IconButton(
            onPressed: onNextButtonPressed,
            icon: const Icon(Icons.arrow_right_outlined),
          ),
        ],
      ),
    );
  }
}
