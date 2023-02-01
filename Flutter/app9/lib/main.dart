import 'package:app9/custom_scrolls_slivers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Slivers',
      home: Scaffold(
        body: CollapsableToolBar(),
      ),
    );
  }
}
