import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateAndClock extends StatefulWidget {
  const DateAndClock({super.key});

  @override
  State<DateAndClock> createState() => _DateAndClockState();
}

class _DateAndClockState extends State<DateAndClock> {
  late DateTime currentM;
  late DateTime threeMBefore;
  late DateTime twentyDayAfter;

  TimeOfDay currentHour = TimeOfDay.now();
  @override
  void initState() {
    currentM = DateTime.now();
    threeMBefore = DateTime(2023, currentM.month - 3);
    twentyDayAfter = DateTime(2023, currentM.month, currentM.day + 20);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Date and Clock")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  //f future
                  showDatePicker(
                          context: context,
                          initialDate: currentM,
                          firstDate: threeMBefore,
                          lastDate: twentyDayAfter)
                      .then((chosenDate) {
                    debugPrint(chosenDate!.day.toString());
                    debugPrint(chosenDate.microsecondsSinceEpoch.toString());
                    debugPrint(chosenDate.toUtc().toString());

                    // date format
                    debugPrint(
                        formatDate(chosenDate, [yyyy, "-", mm, "-", dd]));
                  });
                },
                child: const Text("date")),
            ElevatedButton(
                onPressed: () {
                  showTimePicker(context: context, initialTime: currentHour)
                      .then((chosenHour) {
                    debugPrint(chosenHour!.format(context));
                    debugPrint(chosenHour.hour.toString());
                  });
                },
                child: const Text("clock")),
          ],
        ),
      ),
    );
  }
}
