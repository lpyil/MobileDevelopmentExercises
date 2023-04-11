import 'package:app17_pokedex/constants/constants.dart';
import 'package:app17_pokedex/constants/ui_helper.dart';
import 'package:app17_pokedex/model/pokemon_model.dart';
import 'package:app17_pokedex/pages/dateil_page.dart';
import 'package:app17_pokedex/widgets/poke_img_and_ball.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeListItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPage(pokemon: pokemon),
        ));
      },
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
        elevation: 3,
        shadowColor: Colors.white,
        color: UiHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UiHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name ?? "N/A ",
                style: Constants.getPokemonNameTextStyle(),
              ),
              Chip(
                  label: Text(
                pokemon.type![0],
                style: Constants.getPokemonTypeChipTextStyle(),
              )),
              Expanded(child: PokeImgAndBall(pokemon: pokemon))
            ],
          ),
        ),
      ),
    );
  }
}
