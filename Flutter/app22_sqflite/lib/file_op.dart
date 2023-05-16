import 'package:flutter/material.dart';

import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';

class FileOp extends StatefulWidget {
  const FileOp({super.key});

  @override
  State<FileOp> createState() => _FileOpState();
}

class _FileOpState extends State<FileOp> {
  var textController = TextEditingController();

  Future<String> get getFilePath async {
    var file = await getApplicationDocumentsDirectory();
    debugPrint("File path is :${file.path}");
    return file.path;
  }

  Future<File> get createFile async {
    var pathOfWillCreate = await getFilePath;

    return File("$pathOfWillCreate/myFile.txt");
  }

  Future<String> readFile() async {
    try {
      var myFile = await createFile;
      String fileContent = await myFile.readAsString();
      return fileContent;
    } catch (e) {
      return "error :  $e";
    }
  }

  Future<File> writeToFile(String content) async {
    var myFile = await createFile;
    return myFile.writeAsString(content);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dosya işlemleri"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textController,
                maxLines: 4,
                decoration: const InputDecoration(hintText: "write to file "),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: _readFile,
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                    child: const Text("Read from file")),
                ElevatedButton(
                    onPressed: _writeFile,
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text("Write to file")),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _readFile() async {
    debugPrint(await readFile());
  }

  void _writeFile() {
    writeToFile(textController.text.toString());
  }
}
