import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends StatefulWidget {
  const SharedPref({super.key});

  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  String? name;
  late int id;
  bool? gender;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late SharedPreferences mySharedPref;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((sf) => mySharedPref = sf);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shared Preferences")),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onSaved: (newValue) {
                    name = newValue;
                  },
                  decoration: InputDecoration(
                      labelText: "name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onSaved: (newValue) {
                    id = int.parse(newValue!);
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "surname",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),

              // todo this setStates change everythink
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RadioListTile(
                  groupValue: gender,
                  value: true,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                  title: const Text("man"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RadioListTile(
                  groupValue: gender,
                  value: false,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                  title: const Text("woman"),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _add;
                      },
                      child: const Text("Save")),
                  ElevatedButton(
                      onPressed: () {
                        _show;
                      },
                      child: const Text("Show")),
                  ElevatedButton(
                      onPressed: () {
                        _delete;
                      },
                      child: const Text("Delete"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // todo finish here / video -> 2
  void _add() {
    formKey.currentState?.save();
  }

  void _show() {}
  void _delete() {}
}
