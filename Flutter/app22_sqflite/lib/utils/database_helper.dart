import 'dart:async';
import 'dart:io';

import 'package:app22_sqflite/model/student.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  static late DataBaseHelper _dataBaseHelper;
  static late Database _database;

  final String _studentTable = "student";
  final String _columnID = "id";
  final String _columnName = "name";
  final String _columnActive = "active";

  factory DataBaseHelper() {
    return _dataBaseHelper;
  }

  DataBaseHelper._internal();

  Future<Database?> _getDB() async {
    return _database;
  }

  Future<Database> _initalizeDatabase() async {
    Directory files = await getApplicationDocumentsDirectory();
    String dbPath = join(files.path, "student.db");

    var studentDB = await openDatabase(dbPath, version: 1, onCreate: _createDB);
    return studentDB;
  }

  FutureOr<void> _createDB(Database db, int version) async {
    debugPrint("create db method çalıştı tablo oluşturulacak");
    await db.execute(
        "CREATE TABLE $_studentTable ($_columnID INTEGER PRIMARY KEY AUTOINCREMENT, $_columnName TEXT, $_columnActive INTEGER)");
  }

  Future<int?> addStudent(Student student) async {
    var db = await _getDB();
    var sonuc = await db?.insert(_studentTable, student.toMap(), nullColumnHack: _columnID);
    return sonuc;
  }
}
