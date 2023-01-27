import 'package:flutter/material.dart';

class BasicButtonExamples extends StatelessWidget {
  const BasicButtonExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            debugPrint("short");
          },
          onLongPress: () {
            debugPrint("long");
          },
          child: const Text("Text Button"),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text("Text button with icon"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.teal;
              }
              if (states.contains(MaterialState.hovered)) {
                return Colors.orange;
              } else {}
              return null;
            }),
            foregroundColor: MaterialStateProperty.all(Colors.purple),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red)),
          child: const Text("elevated button"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text("elevated button with icon"),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.red,
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text("outlined button"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text("outlined button with icon"),
          style: OutlinedButton.styleFrom(
            shape: const StadiumBorder(),
            side: const BorderSide(color: Colors.purple, width: 3),
          ),
        ),
      ],
    );
  }
}
