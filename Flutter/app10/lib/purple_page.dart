import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("purple Page"),
        backgroundColor: Colors.purple.shade300,
      ),
      body: Center(
        child: ElevatedButton(
          style:
              ElevatedButton.styleFrom(backgroundColor: Colors.orange.shade500),
          onPressed: () {
            Navigator.of(context).pushNamed(
              "/orangePage",
            );
          },
          child: const Text("go Orange "),
        ),
      ),
    );
  }
}
