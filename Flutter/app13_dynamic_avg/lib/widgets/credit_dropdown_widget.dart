import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import '../data/data_helper.dart';

class CreditDropDownWidget extends StatefulWidget {
  final Function onChosenCredit;
  const CreditDropDownWidget({super.key, required this.onChosenCredit});

  @override
  State<CreditDropDownWidget> createState() => _CreditDropDownWidgetState();
}

class _CreditDropDownWidgetState extends State<CreditDropDownWidget> {
  double chosenCredit = 1;

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
        value: chosenCredit,
        onChanged: (value) {
          setState(() {
            chosenCredit = value!;
            widget.onChosenCredit(value);
          });
        },
        items: [
          // what ?
          ...?DataHelper.allCoursesCredits(),
        ],
        underline: Container(),
      ),
    );
  }
}
