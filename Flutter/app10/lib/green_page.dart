import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("green Page"),
        backgroundColor: Colors.green.shade300,
      ),
      body: const Center( 
        child: Text(
          "green Page",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
