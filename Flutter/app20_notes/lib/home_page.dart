import 'dart:convert';

import 'package:app20_notes/notes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Future<List<Note>> _notes;

  @override
  void initState() {
    super.initState();
    _notes = noteReadJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes"),
      ),
      body: FutureBuilder<List<Note>>(
          future: _notes,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Note> notes = snapshot.data!;
              return ListView.builder(
                itemCount: notes.length,
                itemBuilder: (BuildContext context, int index) {
                  final currentNote = notes[index];
                  return GestureDetector(
                    onTap: () {
                      debugPrint("clicked");
                    },
                    child: Card(
                      color: index % 2 == 0 ? Colors.pink : Colors.blue,
                      child: ListTile(
                        leading: SizedBox(
                          // todo size and center
                          width: 25, height: 25,
                          child: Center(child: Text(currentNote.id.toString())),
                        ),
                        title: Text(currentNote.content),
                        subtitle: Text(
                          currentNote.createdTime.substring(0, 16),
                        ),
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addNoteDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  addNoteDialog(BuildContext context) {
    String content = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add Note'),
          content: TextField(
            autofocus: true,
            onChanged: (value) {
              content = value;
            },
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('ADD'),
              onPressed: () {
                // todo here

                addNote(content);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

// todo here GOD PLS HELWP

  addNote(String content) {
    /*  
    _notes.({
      "id": _notes.length,
      "content": content,
      "createdTime": DateTime.now()
    });
*/
    setState(() {});
  }

  Future<List<Note>> noteReadJson() async {
    String readedString =
        await DefaultAssetBundle.of(context).loadString("assets/notes.json");
    debugPrint(readedString);

    var jsonObject = jsonDecode(readedString);
    debugPrint(jsonObject.toString());

    List<Note> allNotes =
        (jsonObject as List).map((noteMap) => Note.fromJson(noteMap)).toList();
    debugPrint(allNotes.toString());

    return allNotes;
  }
}
