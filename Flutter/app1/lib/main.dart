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
            ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
      ),
      home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: const Text("AAAAAAAAAA"),
            backgroundColor: Colors.teal,
          ),
          // if empty go up take every space

          body: Center(
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              constraints: const BoxConstraints(maxHeight: 120, maxWidth: 120),
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.fromLTRB(10, 20, 3, 2),
              child: const Text(
                "HEWP ", /*textAlign: TextAlign.center*/
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("clicked");
            },
            child: const Icon(
              Icons.nightlight,
              color: Colors.black,
            ),
          )),
    );
  }
}
