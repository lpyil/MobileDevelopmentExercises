import 'package:flutter/material.dart';

class PopUpMenu extends StatefulWidget {
  const PopUpMenu({super.key});

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  String? _chosenColor;
  final List<String> renkler = ["mavi", "yeşil", "red", "sari"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String color) {
          setState(() {
            _chosenColor = color;
            debugPrint(_chosenColor);
          });
        },
        itemBuilder: (BuildContext context) {
          return renkler
              .map(
                (String renk) => PopupMenuItem(
                  value: renk,
                  child: Text(renk),
                ),
              )
              .toList();
        },
      ),
    );
  }
}
