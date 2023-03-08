import 'package:flutter/material.dart';

class OtherFormElements extends StatefulWidget {
  const OtherFormElements({Key? key}) : super(key: key);

  @override
  State<OtherFormElements> createState() => _OtherFormElementsState();
}

class _OtherFormElementsState extends State<OtherFormElements> {
  bool checkBoxState = false;
  String city = "";
  bool switchState = false;
  double sliderValue = 10;
  String chosenColor = "red";

  List<String> cities = ["adana", "izmir", "ist", "ankara"];
  String chosenCity = "adana";

  // from my bf chatgpt
  Widget buildRadioTile(String value, BuildContext context) {
    return RadioListTile<String>(
      value: value,
      groupValue: city,
      onChanged: (newValue) {
        setState(() {
          city = newValue!;
        });
      },
      title: Text(value),
      subtitle: const Text("test"),
      secondary: const Icon(Icons.map),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox etc"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            CheckboxListTile(
              onChanged: (bool? value) {
                setState(() {
                  checkBoxState = value!;
                });
              },
              value: checkBoxState,
              activeColor: Colors.blue,
              title: const Text("title of check box"),
              subtitle: const Text("subtitle"),
              secondary: const Icon(Icons.adb),
            ),
            SizedBox(
              height: 8,
              child: Container(
                color: Colors.blue,
              ),
            ),
            buildRadioTile("Adana", context),
            buildRadioTile("Bursa", context),
            buildRadioTile("Ankara", context),
            SizedBox(
              height: 8,
              child: Container(
                color: Colors.blue,
              ),
            ),
            SwitchListTile(
              value: switchState,
              onChanged: (value) {
                setState(() {
                  switchState = value;
                });
              },
              title: const Text("switch title"),
              subtitle: const Text("sub"),
              secondary: const Icon(Icons.repeat),
            ),
            SizedBox(
              height: 8,
              child: Container(
                color: Colors.blue,
              ),
            ),
            const Text("no text for slider"),
            Slider(
              value: sliderValue,
              onChanged: (newSldValue) {
                setState(() {
                  sliderValue = newSldValue;
                });
              },
              min: 10,
              max: 20,
              divisions: 10,
              label: sliderValue.toString(),
              thumbColor: Colors.red,
            ),
            SizedBox(
              height: 8,
              child: Container(
                color: Colors.blue,
              ),
            ),
            DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                  value: "red",
                  child: Row(
                    children: <Widget>[
                      Container(
                          height: 12,
                          width: 12,
                          color: Colors.red,
                          margin: const EdgeInsets.only(right: 10)),
                      const Text(" red"),
                    ],
                  ),
                ),
                DropdownMenuItem<String>(
                  value: "green",
                  child: Row(
                    children: <Widget>[
                      Container(
                          height: 12,
                          width: 12,
                          color: Colors.green,
                          margin: const EdgeInsets.only(right: 10)),
                      const Text(" green"),
                    ],
                  ),
                ),
                DropdownMenuItem<String>(
                  value: "blue",
                  child: Row(
                    children: <Widget>[
                      Container(
                          height: 12,
                          width: 12,
                          color: Colors.blue,
                          margin: const EdgeInsets.only(right: 10)),
                      const Text(" blue"),
                    ],
                  ),
                ),
              ],
              onChanged: (newColor) {
                setState(() {
                  chosenColor = newColor!;
                });
              },
              hint: const Text("gimme a color"),
              value: chosenColor,
            ),
            DropdownButton<String>(
              items: cities.map((currentCity) {
                return DropdownMenuItem<String>(
                  value: currentCity,
                  child: Text(currentCity),
                );
              }).toList(),
              onChanged: (s) {
                setState(() {
                  chosenCity = s!;
                });
              },
              value: chosenCity,
            )
          ],
        ),
      ),
    );
  }
}
