import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("app5"),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          color: Colors.red.shade200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              rowMake(),
              Expanded(child: columnMake()),
            ],
          ),
        ),
      ),
    );
  }

  Container containerMaker(String letter, Color clr) {
    return Container(
        width: 64,
        height: 64,
        alignment: Alignment.center,
        color: clr,
        child: Text(
          letter,
          style: const TextStyle(fontSize: 32),
        ));
  }

  Row rowMake() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerMaker("D", Colors.orange.shade100),
        containerMaker("A", Colors.orange.shade200),
        containerMaker("R", Colors.orange.shade300),
        containerMaker("T", Colors.orange.shade400),
      ],
    );
  }

  Column columnMake() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(child: containerMaker("E", Colors.orange.shade200)),
        Flexible(child: containerMaker("R", Colors.orange.shade300)),
        Flexible(child: containerMaker("S", Colors.orange.shade400)),
        Flexible(child: containerMaker("L", Colors.orange.shade500)),
        Flexible(child: containerMaker("E", Colors.orange.shade600)),
        Flexible(child: containerMaker("R", Colors.orange.shade700)),
        Flexible(child: containerMaker("I", Colors.orange.shade800)),
      ],
    );
  }
}
