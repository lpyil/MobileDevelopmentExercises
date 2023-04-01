import 'package:flutter/material.dart';

import 'models/data.dart';

class MainPage extends StatefulWidget {
  const MainPage(Key k, {required key}) : super(key: k);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late List<Data> allDatas;

  @override
  void initState() {
    super.initState();

    allDatas = [
      Data("who", false, "its me mario "),
      Data("who2", false, "its me mario2 "),
      Data("who3", false, "its me mario3 "),
      Data("who4", false, "its me mario4 "),
      Data("who5", false, "its me mario5 "),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allDatas.length,
      itemBuilder: (BuildContext context, int index) {
        return ExpansionTile(
          key: PageStorageKey("$index "),
          initiallyExpanded: allDatas[index].expanded,
          title: Text(allDatas[index].title),
          children: [
            Container(
              color: index % 2 == 0 ? Colors.blue : Colors.red.shade300,
              height: 100,
              width: double.infinity,
              child: Text(allDatas[index].context),
            )
          ],
        );
      },
    );
  }
}
