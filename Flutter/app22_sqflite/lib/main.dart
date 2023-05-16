import 'package:app22_sqflite/utils/database_helper.dart';
import 'package:flutter/material.dart';
import 'model/student.dart';

import 'sqflite.dart';
// import 'file_op.dart';
// import 'shared_pref.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  DataBaseHelper dbh1 = DataBaseHelper();

  @override
  Widget build(BuildContext context) {
    dbh1.addStudent(Student("lp", 0));
    dbh1.addStudent(Student("lp", 1));

    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Material App',
      debugShowCheckedModeBanner: false,

      // SharedPref // FileOp
      home: const SqfliteEx(),
    );
  }
}
