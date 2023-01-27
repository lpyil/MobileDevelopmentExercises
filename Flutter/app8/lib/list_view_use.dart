import 'package:flutter/material.dart';

class ListViewEx extends StatelessWidget {
  ListViewEx({super.key});
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
      body: classicListview(), // classicListview()
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
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);
}
