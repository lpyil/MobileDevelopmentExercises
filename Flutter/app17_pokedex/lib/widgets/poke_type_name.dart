import 'package:app17_pokedex/constants/constants.dart';
import 'package:app17_pokedex/model/pokemon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeNameType extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeNameType({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  pokemon.name ?? "",
                  style: Constants.getPokemonNameTextStyle(),
                ),
              ),
              Text(
                "#${pokemon.num}",
                style: Constants.getPokemonNameTextStyle(),
              ),
            ],
          ),
          SizedBox(
            height: 0.2.sh,
          ),
          Chip(
              label: Text(
            pokemon.type?.join(" , ") ?? "",
            style: Constants.getPokemonTypeChipTextStyle(),
          )),
        ],
      ),
    );
  }
}
