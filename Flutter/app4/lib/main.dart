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
          title: const Text("app4"),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          color: Colors.lightBlue.shade300,
          height: 64,
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: flexContainer // fixRox | expandedRowContainer
              ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("clicked");
          },
          backgroundColor: Colors.amber,
          child: const Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
// lets say we oversized row

  List<Widget> get fixRow {
    return const <Widget>[
      Icon(
        Icons.add_circle,
        size: 64,
        color: Colors.blue,
      ),
      Icon(
        Icons.circle_notifications,
        size: 64,
        color: Colors.green,
      ),
      Icon(
        Icons.circle,
        size: 64,
        color: Colors.yellow,
      ),
      Icon(
        Icons.circle_outlined,
        size: 64,
        color: Colors.purple,
      ),
    ];
  }

// with expanded fit all elements
  List<Widget> get expandedRowContainer {
    return <Widget>[
      Expanded(
        flex: 2, // default is 1 | int

        child: Container(color: Colors.red),
      ),
      Expanded(
        child: Container(color: Colors.blue),
      ),
      Expanded(
        child: Container(color: Colors.black),
      ),
      Expanded(
        child: Container(color: Colors.purple),
      ),
    ];
  }

// flexible but max value is width
// if neccs can be small
  List<Widget> get flexContainer {
    return <Widget>[
      Flexible(
        child: Container(
          color: Colors.black,
          width: 150,
        ),
      ),
      Flexible(
        child: Container(
          color: Colors.purple,
          width: 150,
        ),
      ),
    ];
  }
}
