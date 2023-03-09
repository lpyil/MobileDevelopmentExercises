import 'package:flutter/material.dart';

class StepperEx extends StatefulWidget {
  const StepperEx({Key? key}) : super(key: key);

  @override
  State<StepperEx> createState() => _StepperExState();
}

class _StepperExState extends State<StepperEx> {
  int _activeStep = 0;
  late String? name = "";
  late String? mail = "";
  late String? pass = "";

  late List<Step> tumStepler;
  bool error = false;

  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    tumStepler = _allSteps();

    return Scaffold(
      appBar: AppBar(
        title: const Text("stepper"),
      ),
      body: SingleChildScrollView(
        child: Stepper(
          controlsBuilder: (context, details) {
            return Row(
              //TODO write on pressed of continue and back
              children: <Widget>[
                ElevatedButton(onPressed: () {}, child: Icon(Icons.arrow_back)),
                Spacer(),
                ElevatedButton(
                    onPressed: () {}, child: Icon(Icons.arrow_forward)),
              ],
            );
          },
          margin: const EdgeInsets.all(20),
          steps: tumStepler,
          currentStep: _activeStep,
          /*
          onStepTapped: (chosenStep) {
            setState(() {
              _activeStep = chosenStep;
            });
          }, 
          */
          onStepContinue: () {
            setState(() {
              _continueCheck();
            });
          },
          onStepCancel: () {
            setState(() {
              if (_activeStep > 0) {
                _activeStep--;
              } else {
                _activeStep = 0;
              }
            });
          },
        ),
      ),
    );
  }

  List<Step> _allSteps() {
    List<Step> stepler = [
      Step(
          title: const Text("Name"),
          subtitle: const Text("UserName sub title"),
          state: _stepConfig(0),
          isActive: true,
          content: TextFormField(
            key: key0,
            decoration: const InputDecoration(
                labelText: "UserName Label",
                hintText: "UserName hint ",
                border: OutlineInputBorder(borderSide: BorderSide(width: 12))),
            validator: (input) {
              if (input!.length < 3) {
                return "min 3";
              }
              return null;
            },
            onSaved: (input) {
              name = input!;
            },
          )),
      Step(
          title: const Text("Mail"),
          subtitle: const Text("Mail sub title"),
          state: _stepConfig(1),
          isActive: true,
          content: TextFormField(
            key: key1,
            decoration: const InputDecoration(
                labelText: "UserMail Label",
                hintText: "UserMail hint ",
                border: OutlineInputBorder(borderSide: BorderSide(width: 12))),
            validator: (input) {
              if (input!.length < 3 || !input.contains("@")) {
                return "min 3";
              }
              return null;
            },
            onSaved: (input) {
              mail = input!;
            },
          )),
      Step(
          title: const Text("Pass"),
          subtitle: const Text("UserPass sub title"),
          state: _stepConfig(2),
          isActive: true,
          content: TextFormField(
            key: key2,
            decoration: const InputDecoration(
                labelText: "UserPass Label",
                hintText: "UserPass hint ",
                border: OutlineInputBorder(borderSide: BorderSide(width: 12))),
            validator: (input) {
              if (input!.length < 3) {
                return "min 3";
              }
              return null;
            },
            onSaved: (input) {
              pass = input!;
            },
          ))
    ];
    return stepler;
  }

  StepState _stepConfig(int index) {
    if (_activeStep == index) {
      if (error) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _continueCheck() {
    switch (_activeStep) {
      case 0:
        // if it is true go to validator
        if (key0.currentState!.validate()) {
          key0.currentState!.save();
          error = false;
          _activeStep++;
        } else {
          error = true;
        }
        break;
      case 1:
        if (key1.currentState!.validate()) {
          key1.currentState!.save();
          error = false;
          _activeStep++;
        } else {
          error = true;
        }
        break;
      case 2:
        if (key2.currentState!.validate()) {
          key2.currentState!.save();
          error = false;
          _formFinished();
        } else {
          error = true;
        }
        break;
      default:
    }
  }

  void _formFinished() {
    debugPrint("Name : $name, Mail : $mail, Pass : $pass");
  }
}
