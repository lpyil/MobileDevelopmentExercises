// import 'package:app7/basic_button_examples.dart';
// import 'package:app7/dropdown_button.dart';
import 'package:app7/popup_menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp7",
      theme: ThemeData(
        primarySwatch: Colors.teal,
        // for to all buttons
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(foregroundColor: Colors.black),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Buttons"),
        ),
        body: const PopUpMenu(), // BasicButtonExamples() DropDownButtons
      ),
    ); // start
  }
}
