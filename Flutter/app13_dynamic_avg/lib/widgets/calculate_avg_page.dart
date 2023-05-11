import 'package:app13_dynamic_avg/constants/app_constants.dart';
import 'package:app13_dynamic_avg/data/data_helper.dart';
import 'package:app13_dynamic_avg/model/course.dart';
import 'package:app13_dynamic_avg/widgets/credit_dropdown_widget.dart';
import 'package:app13_dynamic_avg/widgets/letter_dropdown_widget.dart';
import 'package:app13_dynamic_avg/widgets/show_avg.dart';
import 'package:flutter/material.dart';

import 'course_list.dart';

class CalculateAvgPage extends StatefulWidget {
  const CalculateAvgPage({super.key});

  @override
  State<CalculateAvgPage> createState() => _CalculateAvgPageState();
}

class _CalculateAvgPageState extends State<CalculateAvgPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double chosenLetter = 4;
  double chosenCredit = 1;
  String inputCourseName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          Constants.titleText,
          style: Constants.titleStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: _buildForm(),
              ),

              Expanded(
                flex: 1,
                child: ShowAvg(
                  avg: DataHelper.calAvg(),
                  courseCount: DataHelper.allCourses.length,
                ),
              ),
              // form
            ],
          ),

          Expanded(
            child: CoursesList(
              onDismiss: (index) {
                DataHelper.allCourses.removeAt(index);
                setState(() {});
                debugPrint("removed index : $index");
              },
            ),
          ),
          //list ],
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          _buildTextFormField(),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: LetterDropDownWidget(
                  onChosedLetter: (letter) {
                    chosenLetter = letter;
                  },
                ),
              ),
              Expanded(
                child: CreditDropDownWidget(
                  onChosenCredit: (credit) {
                    chosenCredit = credit;
                  },
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: _addCourseAndCalAvg,
                  icon: const Icon(Icons.arrow_forward_ios),
                  color: Constants.mainColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  _buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Courses",
        border: OutlineInputBorder(
            borderRadius: Constants.borderRadius, borderSide: BorderSide.none),
        filled: true,
        fillColor: Constants.mainColor.shade100.withOpacity(.7),
      ),
      onSaved: (value) {
        setState(() {
          inputCourseName = value!;
        });
      },
      validator: (s) {
        if (s!.isEmpty) {
          return "input course";
        }
        return null;
      },
    );
  }

  void _addCourseAndCalAvg() {
    if (formKey.currentState!.validate()) {
      formKey.currentState?.save();
      var willAdd = Course(
          name: inputCourseName,
          credit: chosenCredit,
          letterValue: chosenLetter);
      debugPrint(willAdd.toString());

      DataHelper.addCourse(willAdd);

      debugPrint(DataHelper.calAvg().toString());

      setState(() {});
    }
  }
}
