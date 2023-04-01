import 'package:flutter/material.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  var myController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);

  bool horizontalAxis = true;
  bool pageSnapping = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: PageView(
            scrollDirection:
                horizontalAxis == true ? Axis.horizontal : Axis.vertical,
            reverse: false,
            controller: myController,
            pageSnapping: pageSnapping,
            onPageChanged: (index) {
              debugPrint("page change index : $index");
            },
            children: [
              Container(
                width: double.infinity,
                height: 150,
                color: Colors.blue.shade200,
                child: const Center(
                  child: Text("PAGE 0 ------>"),
                ),
              ),
              Container(
                width: double.infinity,
                height: 150,
                color: Colors.amber.shade200,
                child: const Center(
                  child: Text("PAGE 1  "),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.blueGrey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text("work horizontal"),
                      Checkbox(
                          value: horizontalAxis,
                          onChanged: (value) {
                            setState(() {
                              horizontalAxis = value!;
                            });
                          })
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text("Page snapping"),
                      Checkbox(
                          value: pageSnapping,
                          onChanged: (value) {
                            setState(() {
                              pageSnapping = value!;
                            });
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
 