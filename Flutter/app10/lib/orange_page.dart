import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("orange Page"),
        backgroundColor: Colors.orange.shade300,
      ),
      body: Center(
        child: ElevatedButton(
          style:
              ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade500),
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: const Text("Go home "),
        ),
      ),
    );
  }
}
