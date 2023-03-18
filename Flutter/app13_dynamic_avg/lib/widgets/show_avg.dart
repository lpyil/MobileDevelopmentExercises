import 'package:app13_dynamic_avg/constants/app_constants.dart';
import 'package:flutter/material.dart';

class ShowAvg extends StatelessWidget {
  final double avg;
  final int courseCount;
  const ShowAvg({super.key, required this.avg, required this.courseCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          courseCount > 0 ? "$courseCount courses" : "choose course",
          style: Constants.showAvgStyleBody,
        ),
        Text(
          avg >= 0 ? avg.toStringAsFixed(2) : "0",
          style: Constants.avgStyle,
        ),
        Text(
          "AVG",
          style: Constants.showAvgStyleBody,
        ),
      ],
    );
  }
}
