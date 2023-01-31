import 'package:flutter/material.dart';

class GridViewEx extends StatelessWidget {
  const GridViewEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View "),
      ),
      // GridViewCount() gridViewExtent()

      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          // gridViewContainer(index)
          return GestureDetector(
            child: gridViewContainer(index),
            onTap: () {
              debugPrint("$index rectangle clicked");
            },
            onDoubleTap: () {
              debugPrint("$index rectangle  double clicked");
            },
            onLongPress: () {
              debugPrint("$index rectangle longpress click");
            },
            onHorizontalDragStart: (details) {
              debugPrint("$index rectangle drag  clicked : $details");
            },
          );
        },
      ),
    );
  }

  Container gridViewContainer(int index) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        color: Colors.red[100 * ((index + 1) % 8)],
        gradient: const LinearGradient(
          colors: [Colors.green, Colors.blue],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Text("AAAAA : $index"),
    );
  }

  GridView gridViewExtent() {
    return GridView.extent(
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      scrollDirection: Axis.horizontal, // scroll horizontal
      primary: true,
      padding: const EdgeInsets.all(10),
      maxCrossAxisExtent: 200,

      // giving max size
      children: <Widget>[
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: const Text("AAAAA1"),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: const Text("AAAAA1"),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: const Text("AAAAA1"),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: const Text("AAAAA1"),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: const Text("AAAAA1"),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: const Text("AAAAA1"),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: const Text("AAAAA1"),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: const Text("AAAAA1"),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: const Text("AAAAA1"),
        ),
      ],
    );
  }

  GridView gridViewCount() {
    return GridView.count(
      // giving count
      crossAxisCount: 3,
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      scrollDirection: Axis.horizontal, // scroll horizontal
      primary: true,
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: const Text("AAAAA1"),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: const Text("AAAAA2"),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: const Text("AAAAA3"),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: const Text("AAAAA4"),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: const Text("AAAAA5"),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: const Text("AAAAA6"),
        ),
      ],
    );
  }
}
