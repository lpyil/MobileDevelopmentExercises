import 'package:flutter/material.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    int countElement = ModalRoute.of(context)!.settings.arguments as int;

    List<Student> allStudents = List.generate(
      countElement,
      (index) => Student(index + 1, "name: ${index + 1}"),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Student list"),
      ),
      body: ListView.builder(
        itemCount: countElement,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              var chosen = allStudents[index];
              Navigator.pushNamed(context, "/studentDetail",arguments: chosen);
            },
            leading: CircleAvatar(
              child: Text(
                allStudents[index].id.toString(),
              ),
            ),
            title: Text(
              allStudents[index].name.toString(),
            ),
          );
        },
      ),
    );
  }
}

class Student {
  final int id;
  final String name;

  Student(this.id, this.name);
}
