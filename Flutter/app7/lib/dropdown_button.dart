import 'package:flutter/material.dart';

class DropDownButtons extends StatefulWidget {
  const DropDownButtons({super.key});

  @override
  State<DropDownButtons> createState() => _DropDownButtonsState();
}

class _DropDownButtonsState extends State<DropDownButtons> {
  String? _chosenCity;
  final List<String> _allCities = ["Ankara", "Bursa", "Adana", "Izmir"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        hint: const Text("choose city "),
        icon: const Icon(Icons.arrow_downward),
        underline: Container(
          height: 4,
          color: Colors.purple,
        ),
        style: const TextStyle(
          color: Colors.black,
        ),
        items: _allCities
            .map(
              (String indexCity) => DropdownMenuItem(
                value: indexCity,
                child: Text(
                  indexCity,
                ),
              ),
            )
            .toList(),
        value: _chosenCity,
        onChanged: (String? newC) {
          setState(
            () {
              _chosenCity = newC.toString();
            },
          );
        },
      ),
    );
  }
}
