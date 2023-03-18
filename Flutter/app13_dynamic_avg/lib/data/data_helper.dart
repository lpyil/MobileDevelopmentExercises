import 'package:app13_dynamic_avg/model/course.dart';
import 'package:flutter/material.dart';

class DataHelper {
  static List<Course> allCourses = [];

  static addCourse(Course course) {
    allCourses.add(course);
  }

  static double calAvg() {
    double sumCourses = 0;
    double sumCredits = 0;

    for (var element in allCourses) {
      sumCourses +=  element.credit * element.letterValue;
      sumCredits += element.credit ;
    }
    return sumCourses / sumCredits;
  }

  static List<String> _allCoursesLetters() {
    return ["AA", "BA", "BB", "CB", "CC", "DC", "DD", "FF"];
  }

  static double _letterToGrade(String letter) {
    switch (letter) {
      case "AA":
        return 4;
      case "BA":
        return 3.5;
      case "BB":
        return 3;
      case "CB":
        return 2.5;
      case "CC":
        return 2;
      case "DC":
        return 1.5;
      case "DD":
        return 1;
      case "FF":
        return 0;

      default:
        return 1;
    }
  }

  static List<DropdownMenuItem<double>> allCoursesGrades() {
    return _allCoursesLetters()
        .map((e) => DropdownMenuItem(
              value: _letterToGrade(e),
              child: Text(e),
            ))
        .toList();
  }

  static List<int> _allCredits() {
    return List.generate(10, (index) => index + 1).toList();
  }

  static List<DropdownMenuItem<double>>? allCoursesCredits() {
    return _allCredits()
        .map(
          (e) => DropdownMenuItem(
            value: e.toDouble(),
            child: Text(
              e.toString(),
            ),
          ),
        )
        .toList();
  }
}
