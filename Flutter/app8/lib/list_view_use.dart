import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewEx extends StatefulWidget {
  const ListViewEx({super.key});

  @override
  State<ListViewEx> createState() => _ListViewExState();
}

class _ListViewExState extends State<ListViewEx> {
  List<Student> allStudents = List.generate(
      500,
      (index) => Student(
          index + 1, " Student : ${index + 1} ", "Surname is : ${index + 1} "));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("list view"),
      ),
      // classicListview()

      body: buildListViewSeparated(),
    );
  }

// MORE EFFICIENT FROM DOWN FUNC
  ListView buildListViewSeparated() {
    return ListView.separated(
      // builder same but there is no separatorbuilder
      itemBuilder: (BuildContext context, int index) {
        var currentStudent = allStudents[index];

        return Card(
          
          color: index % 2 == 0 ? Colors.red.shade300 : Colors.teal.shade300,
          child: ListTile(
            
            onTap: () {
              if (index % 2 != 0) {
                EasyLoading.instance.backgroundColor = Colors.blue.shade800;
              } else {
                EasyLoading.instance.backgroundColor = Colors.purple;
              }
              EasyLoading.showToast(
                "clicked",
                toastPosition: EasyLoadingToastPosition.bottom,
              );
            },
            onLongPress: () {
              _alertMessages(context, currentStudent);
            },
            title: Text(currentStudent.name),
            subtitle: Text("${currentStudent.id}"),
            leading: const CircleAvatar(
              child: Icon(Icons.child_care),
            ),
          ),
        );
      },
      itemCount: allStudents.length,
      separatorBuilder: (context, index) {
        var newIndex = index + 1;
        if (newIndex % 4 == 0) {
          return const Divider(
            thickness: 2,
            color: Colors.black,
          );
        }
        return const SizedBox();
      },
    );
  }

  // NOT EFFICIENT
  ListView classicListview() {
    return ListView(
      children: allStudents
          .map(
            (Student std) => ListTile(
              title: Text(std.name),
              subtitle: Text("${std.id}"),
              leading: const CircleAvatar(
                child: Icon(Icons.child_care),
              ),
            ),
          )
          .toList(),
    );
  }

  void _alertMessages(BuildContext myContext, Student std) {
    showDialog(
      barrierDismissible: false,
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text(std.toString()),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("HEEWP " * 100),
                Text("data2 " * 100),
                Text("data 1" * 100),
              ],
            ),
          ),
          actions: [
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Close"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Agree"),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);

  @override
  String toString() {
    return "Name: $name, id : $id";
  }
}

