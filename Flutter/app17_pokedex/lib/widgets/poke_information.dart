import 'package:app17_pokedex/constants/constants.dart';
import 'package:app17_pokedex/constants/ui_helper.dart';
import 'package:app17_pokedex/model/pokemon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeInfo extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeInfo({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.w)),
        color: Colors.white,
      ),
      child: Padding(
        padding: UiHelper.getIconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildInformationRow("Name:", pokemon.name),
            _buildInformationRow("Height:", pokemon.height),
            _buildInformationRow("Weight:", pokemon.weight),
            _buildInformationRow("Spawn Time:", pokemon.spawnTime),
            _buildInformationRow("Weakness:", pokemon.weaknesses),
            _buildInformationRow("Pre Evo:", pokemon.prevEvolution),
            _buildInformationRow("Next Evo:", pokemon.nextEvolution),
          ],
        ),
      ),
    );
  }

  _buildInformationRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Constants.getPokemonLabelTextStyle(),
        ),
        if (value is List && value.isNotEmpty)
          Text(
            value.join(" , "),
            style: Constants.getPokemonInfoTextStyle(),
          )
        else if (value.isEmpty)
          Text(
            "No Info",
            style: Constants.getPokemonInfoTextStyle(),
          )
        else
          Text(value)
      ],
    );
  }
}
