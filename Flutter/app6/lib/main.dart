// import 'package:app6/my_counter_app.dart';
import 'package:app6/image_widgets.dart';
import 'package:flutter/material.dart';

void main() {
  debugPrint("main worked");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("MyApp build worked");
    return MaterialApp(
      title: "MyApp6",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image examples"),
        ),
        body: const ImageExamples(),
      ), // start
    );
  }
}
