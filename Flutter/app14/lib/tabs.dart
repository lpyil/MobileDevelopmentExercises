import 'package:flutter/material.dart';

class TabExample extends StatefulWidget {
  const TabExample({super.key});

  @override
  State<TabExample> createState() => _TabExampleState();
}

class _TabExampleState extends State<TabExample>
    with SingleTickerProviderStateMixin {
  late TabController myTabController;

  @override
  void initState() {
    super.initState();
    myTabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("tab use "),
        bottom: myTabBar(),
      ),
      body: TabBarView(
        controller: myTabController,
        children: <Widget>[
          Container(
            color: Colors.red,
            child: const Center(child: Text("tab 1 ")),
          ),
          Container(
            color: Colors.yellow,
            child: const Center(child: Text("tab 2 ")),
          ),
          Container(
            color: Colors.blue,
            child: const Center(child: Text("tab 3 ")),
          )
        ],
      ),
    ));
  }

  TabBar myTabBar() {
    return TabBar(controller: myTabController, tabs: const [
      Tab(
        icon: Icon(Icons.bug_report),
        text: "tab 1 ",
      ),
      Tab(
        icon: Icon(Icons.bug_report),
        text: "tab 1 ",
      ),
      Tab(
        icon: Icon(Icons.bug_report),
        text: "tab 1 ",
      ),
    ]);
  }
}
