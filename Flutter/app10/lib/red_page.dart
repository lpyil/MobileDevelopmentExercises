import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RedPage extends StatelessWidget {
  RedPage({super.key});

  int _randomNumber = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        debugPrint("on will pop worked ");

        _randomNumber = Random().nextInt(100);
        Navigator.pop(context, _randomNumber);
        // no use because above
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("RedPage"),
          backgroundColor: Colors.red.shade300,
          automaticallyImplyLeading: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "RedPage",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _randomNumber = Random().nextInt(100);
                  debugPrint("Random number : $_randomNumber");
                  Navigator.of(context).pop(_randomNumber);
                },
                child: const Text("go back"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/greenPage");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade500),
                child: const Text("go green page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
