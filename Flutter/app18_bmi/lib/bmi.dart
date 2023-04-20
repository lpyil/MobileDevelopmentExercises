import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool? gender;
  double _currentSliderValue = 100;
  int _weight = 30;
  int _age = 1;
  double _bmi = 1;

  final List<bool> isSelected = <bool>[true, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("bmi calc"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        gender == true ? Colors.teal : Colors.white,
                  ),
                  onPressed: () {
                    gender = true;

                    setState(() {});
                  },
                  child: const Icon(
                    Icons.male,
                    size: 64,
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        gender == false ? Colors.teal : Colors.white,
                  ),
                  onPressed: () {
                    gender = false;

                    setState(() {});
                  },
                  child: const Icon(
                    Icons.female,
                    size: 64,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Slider(
            min: 100,
            max: 300,
            activeColor: Colors.teal,
            inactiveColor: Colors.white,
            value: _currentSliderValue,
            divisions: 200,
            label: _currentSliderValue.toString(),
            onChanged: (value) {
              setState(() {
                _currentSliderValue = value;

                // todo _currentSlider take height
              });
            },
          ),
          // todo weight age
          Row(
            //todo here
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text("Weight : ${_weight.toString()}"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              _weight++;
                              setState(() {});
                            },
                            icon: const Icon(Icons.add)),
                        IconButton(
                            onPressed: () {
                              _weight--;
                              setState(() {});
                            },
                            icon: const Icon(Icons.minimize))
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text("Age : ${_age.toString()}"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              _age++;
                              setState(() {});
                            },
                            icon: const Icon(Icons.add)),
                        IconButton(
                            onPressed: () {
                              _age--;
                              setState(() {});
                            },
                            icon: const Icon(Icons.minimize))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // WHERE IS THE FCKNG FORMULA FOR WOMAN OR CHILD
                    _bmi = _weight /
                        (_currentSliderValue * _currentSliderValue / 10000);
                    setState(() {});
                  },
                  child: const Text("Hesapla")),
              Text("bmi : $_bmi")
            ],
          )
        ],
      ),
    );
  }
}
