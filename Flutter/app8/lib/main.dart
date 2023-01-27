// import 'package:app8/card_listtile.dart';
import 'package:app8/list_view_use.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: ListViewEx(), // CardandListtile
    );
  }
}
