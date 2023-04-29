import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double bill = 0;
    double tip = 0;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 200,
            child: TextFormField(
              textAlign: TextAlign.center,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Bill Amount",
                floatingLabelAlignment: FloatingLabelAlignment.center,
                border: OutlineInputBorder(),
              ),
              onChanged: (newValue) {
                bill = double.parse(newValue);
              },
            ),
          ),
          SizedBox(
            width: 200,
            child: TextFormField(
              textAlign: TextAlign.center,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Tip %",
                floatingLabelAlignment: FloatingLabelAlignment.center,
                border: OutlineInputBorder(),
              ),
              onChanged: (newValue) {
                tip = double.parse(newValue);
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                double sum = (bill * tip / 100) + bill;
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                          "Bill is ${bill.toString()} and tip % is ${tip.toString()}"),
                      content: Text("Sum is : ${sum.toString()}"),
                      actions: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.arrow_back_ios_outlined))
                      ],
                    );
                  },
                );
              },
              child: const Text("Cal")),
        ],
      ),
    );
  }
}
