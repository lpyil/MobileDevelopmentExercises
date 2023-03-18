import 'package:flutter/material.dart';
import '../constants/app_constants.dart';
import '../data/data_helper.dart';

class LetterDropDownWidget extends StatefulWidget {
  final Function onChosedLetter;
  const LetterDropDownWidget({super.key, required this.onChosedLetter});

  @override
  State<LetterDropDownWidget> createState() => _LetterDropDownWidgetState();
}

class _LetterDropDownWidgetState extends State<LetterDropDownWidget> {
  double chosenLetter = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Constants.dropDownPadding,
      decoration: BoxDecoration(
          color: Constants.mainColor.shade100.withOpacity(.3),
          borderRadius: Constants.borderRadius),
      child: DropdownButton<double>(
        elevation: 16,
        iconEnabledColor: Constants.mainColor.shade200,
        value: chosenLetter,
        onChanged: (value) {
          setState(() {
            chosenLetter = value!;
            widget.onChosedLetter(value);
          });
        },
        items: [
          // what ?
          ...DataHelper.allCoursesGrades(),
        ],
        underline: Container(),
      ),
    );
  }
}
