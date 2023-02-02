import 'package:app10/student_list.dart';
import 'package:flutter/material.dart';

class StudentDetail extends StatelessWidget {
  final Student chosenStudent;

  const StudentDetail({required this.chosenStudent, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // we can use also this
    // var chosen = ModalRoute.of(context)!.settings.arguments as Student;
    return Scaffold(
      appBar: AppBar(
        title: const Text("student details "),
      ),
      body: Center(
        child: Column(
          children: [
            Text(chosenStudent.id.toString()),
            Text(chosenStudent.name),
          ],
        ),
      ),
    );
  }
}
