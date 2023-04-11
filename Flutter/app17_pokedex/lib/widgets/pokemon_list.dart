import 'package:app17_pokedex/widgets/pokelist_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/pokemon_model.dart';
import '../services/pokedex_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokemonList;

  @override
  void initState() {
    super.initState();
    _pokemonList = PokeApi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: _pokemonList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> myList = snapshot.data!;

          return GridView.builder(
            itemCount: myList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  ScreenUtil().orientation == Orientation.portrait ? 2 : 3,
            ),
            itemBuilder: (BuildContext context, int index) =>
                PokeListItem(pokemon: myList[index]),
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("boom"),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
