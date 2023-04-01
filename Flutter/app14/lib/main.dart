import 'package:app14/drawer_menu.dart';
import 'package:app14/search_page.dart';
import 'package:app14/tabs.dart';
import 'package:app14/view_page.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int chosenMenu = 0;
  List<Widget> allPages = [];
  late MainPage pageMain;
  late SearchPage pageSearch;
  late ViewPage pageView;

  var keyMainPage = const PageStorageKey("key_main_page");
  var keySearchPage = const PageStorageKey("key_search_page");
  @override
  void initState() {
    super.initState();
    pageMain = MainPage(
      keyMainPage,
      key: null,
    );
    pageSearch = SearchPage(
      keySearchPage,
      key: null,
    );
    pageView = const ViewPage();

    allPages = [pageMain, pageSearch, pageView];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        drawer: const DrawerMenu(),
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: chosenMenu <= allPages.length - 1
            ? allPages[chosenMenu]
            : allPages[0],
        bottomNavigationBar: buttonNavMenu(),
      ),
    );
  }

  Theme buttonNavMenu() {
    return Theme(
      data: ThemeData(
        // for fixed its for everthing on bottom
        // or make shifting to change color for every button
        canvasColor: Colors.purple,
      ),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.abc),
              icon: Icon(Icons.home),
              label: "Main",
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "search",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_forward_ios),
              label: "page_view",
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.bug_report),
              label: "DON'T CLICK",
              backgroundColor: Colors.grey),
        ],
        fixedColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: chosenMenu,
        onTap: (int index) {
          setState(() {
            chosenMenu = index;
            if (index == 3) {
              //FIXME: I WROTE THIS CODE INSIDE OF MATERIALAPP NOT SCAFFOLD THIS
              // IS THE REASON TO BOOM, IN THEORY ITS WORKING :')
              Navigator.of(context)
                  .push(MaterialPageRoute(
                      builder: (context) => const TabExample()))
                  .then((bb) {
                chosenMenu = 0;
              });
            }
          });
        },
      ),
    );
  }
}
