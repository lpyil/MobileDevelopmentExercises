import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.teal,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.purple)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("app2"),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Container(
              alignment: Alignment.center ,
              margin: const EdgeInsets.all(20),
              width: 50,
              height: 50,
              color: Colors.blue,
              child: const Text("AAAAAAAA"),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("clicked");
          },
          backgroundColor: Colors.amber,
          child: const Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
