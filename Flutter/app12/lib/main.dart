import 'package:app12/text_form_field_usage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      //TextFieldExamples()
      home: const TextFormFieldUse(
      ),
    );
  }
}

class TextFieldExamples extends StatefulWidget {
  final String title;

  const TextFieldExamples({Key? key, required this.title}) : super(key: key);

  @override
  State<TextFieldExamples> createState() => _TextFieldExamplesState();
}

class _TextFieldExamplesState extends State<TextFieldExamples> {
  late TextEditingController _emailcheck;
  late FocusNode _focusNode;
  int maxLineCount = 1;

  @override
  void initState() {
    super.initState();
    _emailcheck = TextEditingController(
      text: " default@default.com",
    );
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          maxLineCount = 3;
        } else {
          maxLineCount = 1;
        }
      });
    });
  }

// MANUEL delete
// Controller and listener CANT delete
  @override
  void dispose() {
    _emailcheck.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              focusNode: _focusNode,
              controller: _emailcheck,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              //button
              autofocus: true,
              maxLines: maxLineCount,
              maxLength: 20,
              onChanged: (String value) {
                if (value.length > 3) {
                  setState(
                    () {
                      _emailcheck.value = TextEditingValue(
                        text: value,
                        selection:
                            TextSelection.collapsed(offset: value.length),
                      );
                    },
                  );
                }
                // print every value
              },
              // if check
              onSubmitted: (String value) {
                debugPrint(value);
              },

              cursorColor: Colors.red,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink.shade100,
                labelText: "AAAA",
                hintText: "bbbb",
                // icon: Icon(Icons.add),
                prefix: const Icon(Icons.email),
                suffix: const Icon(Icons.alarm),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Text(_emailcheck.text),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              keyboardType: TextInputType.number,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              _emailcheck.text = "blablablabla@blablabla.com";
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
