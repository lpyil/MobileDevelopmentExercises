import 'package:flutter/material.dart';

class ImageExamples extends StatelessWidget {
  const ImageExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text("AAA"),
          Image(
            image: AssetImage('assets/images/car.jpg'),
          ),
          Image(image: AssetImage('assets/images/Battle_Ballad.webp')),
        ],
      ),
    );
  }
}
