import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldUse extends StatefulWidget {
  const TextFormFieldUse({super.key});

  @override
  State<TextFormFieldUse> createState() => _TextFormFieldUseState();
}

class _TextFormFieldUseState extends State<TextFormFieldUse> {
  String _email = "", _password = "", _user = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Form Field"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                TextFormField(
                  initialValue: "lp",
                  decoration: const InputDecoration(
                    errorStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelText: "Username",
                    hintText: "UserName",
                  ),
                  onSaved: (newValue) {
                    _user = newValue!;
                  },
                  validator: (value) {
                    if (value!.length < 4) {
                      return "Username min 4 ";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  //    initialValue: "google@gmail.com",
                  decoration: const InputDecoration(
                    errorStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelText: "mail",
                    hintText: "Mail",
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (EmailValidator.validate(value!)) {
                      return null;
                    } else {
                      return "not valid e mail";
                    }
                  },
                  onSaved: (newValue) {
                    _email = newValue!;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    errorStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelText: "pass",
                    hintText: "Password",
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.length < 6) {
                      return "min 6";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    _password = newValue!;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    // ignore: no_leading_underscores_for_local_identifiers
                    bool _validate = _formKey.currentState!.validate();
                    if (_validate == true) {
                      _formKey.currentState!.save();
                      String result =
                          " username = $_user\n email = $_email\n pass = $_password";
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          result,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ));
                      _formKey.currentState!.reset();
                    }
                  },
                  child: const Text("confirm"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
