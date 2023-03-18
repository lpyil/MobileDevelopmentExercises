import 'package:app13_dynamic_avg/constants/app_constants.dart';
import 'package:app13_dynamic_avg/data/data_helper.dart';
import 'package:app13_dynamic_avg/model/course.dart';
import 'package:flutter/material.dart';

class CoursesList extends StatelessWidget {
  final Function onDismiss;
  const CoursesList({super.key, required this.onDismiss});

  @override
  Widget build(BuildContext context) {
    List<Course> allCourses = DataHelper.allCourses;

    return allCourses.isNotEmpty
        ? ListView.builder(
            itemCount: allCourses.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                key: UniqueKey(),
                direction: DismissDirection.startToEnd,
                onDismissed: (whatIs) {
                  onDismiss(index);
                },
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        allCourses[index].name,
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Constants.mainColor.shade50,
                        child: Text((allCourses[index].letterValue *
                                allCourses[index].credit)
                            .toStringAsFixed(1)),
                      ),
                      subtitle: Text(
                          "${allCourses[index].credit} credits and : ${allCourses[index].letterValue} value "),
                    ),
                  ),
                ),
              );
            },
          )
        : Center(
            child: Text(
            "ADD COURSE",
            style: Constants.titleStyle,
          ));
  }
}
