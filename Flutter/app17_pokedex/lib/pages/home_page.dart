import 'package:app17_pokedex/widgets/pokemon_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
     body: const PokemonList());
  }
}
