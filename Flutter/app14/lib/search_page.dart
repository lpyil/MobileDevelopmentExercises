import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage(Key k, {required key}) : super(key: k);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 100,
      itemCount: 12,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.all(10),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(10),
            color: index % 2 == 0 ? Colors.tealAccent : Colors.indigo.shade300,
            child: Center(child: Text("$index")),
          ),
        );
      },
    );
  }
}
