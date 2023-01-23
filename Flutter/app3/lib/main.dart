import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String _img1 =
      "https://static.wikia.nocookie.net/darkestdungeon_gamepedia/images/e/e0/Jester.png";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.teal,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.purple)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("app3"),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Container(
            color: Colors.blue,
            child: Center(
              widthFactor: 1.5, // 1.5x width for out container
              heightFactor: 1.5,
              child: Container(
                padding: const EdgeInsets.all(12),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    shape: BoxShape.rectangle,
                    border: Border.all(width: 6, color: Colors.black),
                    image: DecorationImage(image: NetworkImage(_img1)),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    /*  child: const FlutterLogo(
                  style: FlutterLogoStyle.horizontal,
                  textColor: Colors.black,*/
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(10, 10),
                          blurRadius: 20),
                    ]),
                child: const Text(
                  "lp",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ),
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
}
