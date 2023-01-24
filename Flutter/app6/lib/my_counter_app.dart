import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
int _counter = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePage  build worked");

    return Scaffold(
      appBar: AppBar(title: const Text("app6")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "click counter",
            style: TextStyle(fontSize: 24),
          ),
          Text(
            _counter.toString(),
            style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: (() {
            debugPrint("button cliclked");
            counterInc();
          }),
          child: const Icon(Icons.add)),
    );
  }

  void counterInc() {
    // for widget go and we can see changes
    // without need to hotreleod
    setState(() {});
    _counter++;
  }
}
