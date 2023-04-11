import 'package:app17_pokedex/widgets/app_title.dart';
import 'package:app17_pokedex/widgets/pokemon_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return Column(
            children: const [
              AppTitle(),
              Expanded(child: PokemonList()),
            ],
          );
        },
      ),
    );
  }
}
