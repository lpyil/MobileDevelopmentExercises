import 'package:flutter/material.dart';

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
    return  FutureBuilder<List<PokemonModel>>(
        future: _pokemonList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<PokemonModel> _myList = snapshot.data!;
            return ListView.builder(
              itemCount: _myList.length,
              itemBuilder: (BuildContext context, int index) {
                var currentPokemon = _myList[index];
                return ListTile(
                  title: Text(currentPokemon.name.toString()),
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("boom "),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      );
  }
}