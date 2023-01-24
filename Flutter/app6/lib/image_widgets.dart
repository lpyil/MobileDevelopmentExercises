import 'package:flutter/material.dart';

class ImageExamples extends StatelessWidget {
  const ImageExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          Text("asd"),
          Image(image: AssetImage("assets/images/car.jpg")
          ),
        ],
      ),
    );
  }
}
