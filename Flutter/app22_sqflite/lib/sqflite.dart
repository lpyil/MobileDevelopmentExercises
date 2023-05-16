import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteEx extends StatelessWidget {
  const SqfliteEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SqfLite"),
      ),
      body: const Text("a"),
    );
  }
}
