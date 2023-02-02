import 'package:app10/green_page.dart';
import 'package:app10/main.dart';
import 'package:app10/orange_page.dart';
import 'package:app10/purple_page.dart';
import 'package:app10/red_page.dart';
import 'package:app10/student_details.dart';
import 'package:app10/student_list.dart';
import 'package:app10/yellow_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? _routeCreate(
      Widget targetWidget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => targetWidget,
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => targetWidget,
      );
    } else {
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => targetWidget,
      );
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _routeCreate(const HomePage(), settings);

      case "/orangePage":
        return _routeCreate(const OrangePage(), settings);

      case "/greenPage":
        return _routeCreate(const GreenPage(), settings);

      case "/purplePage":
        return _routeCreate(const PurplePage(), settings);

      case "/redPage":
        return _routeCreate(RedPage(), settings);

      case "/yellowPage":
        return _routeCreate(const YellowPage(), settings);

      case "/studentList":
        return _routeCreate(const StudentList(), settings);

      case "/studentDetail":
        var paramStd = settings.arguments as Student;
        return _routeCreate(
            StudentDetail(
              chosenStudent: paramStd,
            ),
            settings);

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text(" Error "),
            ),
            body: const Center(
              child: Text("Not found "),
            ),
          ),
        );
    }
  }
}
