import 'dart:convert';

import 'package:app17_pokedex/model/pokemon_model.dart';
import 'package:dio/dio.dart';

class PokeApi {
  static const String _url =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  static Future<List<PokemonModel>> getPokemonData() async {
    List<PokemonModel> list = [];
    var result = await Dio().get(_url);

    var pokeList = jsonDecode(result.data)["pokemon"];

    if (pokeList is List) {
      list = pokeList.map((e) => PokemonModel.fromJson(e)).toList();
    } else {
      return [];
    }
    return list;
  }
}
