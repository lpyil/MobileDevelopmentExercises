import 'package:flutter/material.dart';

class ImageExamples extends StatelessWidget {
  const ImageExamples({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgUrl =
        "https://static.wikia.nocookie.net/darkestdungeon_gamepedia/images/a/a1/Inv_trinket-lucky_dice.png";

    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.indigo,
                        backgroundImage: NetworkImage(_imgUrl),
                        child: const Text(
                          "lp",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 30,
                    color: Colors.red,
                    child: Image(
                      image: NetworkImage(_imgUrl),
                    ),
                  ),
                ),
                const Expanded(
                  child: Image(
                    image: AssetImage('assets/images/car.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const Expanded(
                  child: Image(
                    image: AssetImage('assets/images/Battle_Ballad.webp'),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading.gif',
              image: _imgUrl,
              fit: BoxFit.scaleDown,
            ),
          ),
          const Expanded(
            child: Placeholder(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
