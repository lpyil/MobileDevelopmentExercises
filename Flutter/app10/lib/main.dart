import 'package:app10/green_page.dart';
import 'package:app10/red_page.dart';
import 'package:app10/route_generator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',

      //  home: const HomePage(),
      /*  
       routes: {
        "/RedPage": (context) => RedPage(),
        "/": (context) => const HomePage(),
        "/GreenPage": (context) => const GreenPage(),
      },
      // for not found or error
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text(" Error"),
          ),
          body: const Center( 
            child: Text("AAAAA"),
          ),
        ),
      ),
    ), 
    */

      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

// root -> myapp -> home --> red
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('navigator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("panic button"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade300),
              onPressed: () async {
                int? numberFromRed = await Navigator.push<int>(
                  context,
                  CupertinoPageRoute(
                    builder: (redContext) => RedPage(),
                  ),
                );
                debugPrint(" from red : $numberFromRed");
              },
              child: const Text(
                "go to red page IOS",
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade500),
              onPressed: () {
                // Navigator.push(context, route);
                // nearly same
                Navigator.of(context)
                    .push<int>(
                      MaterialPageRoute(
                        builder: (redContext) => RedPage(),
                      ),
                    )
                    .then(
                      (int? value) => debugPrint("From red : $value"),
                    );
              },
              child: const Text(
                "go to red page Android",
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade500),
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: const Text(
                " Maybe Pop ",
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade500),
              onPressed: () {
                if (Navigator.canPop(context)) {
                  debugPrint("yes can ");
                } else {
                  debugPrint("Can't ");
                }
              },
              child: const Text(
                " Can Pop? ",
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade500),
              onPressed: () {
                // change the home like login page
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const GreenPage(),
                  ),
                );
              },
              child: const Text(
                " Push replacement to green  ",
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade500),
              onPressed: () {
                Navigator.pushNamed(context, "/redPage");
              },
              child: const Text("pushNamed use"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange.shade500),
              onPressed: () {
                Navigator.of(context).pushNamed("/studentList", arguments: 60);
              },
              child: const Text("Create list "),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple.shade500),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  "/purplePage",
                );
              },
              child: const Text("Go purple  "),
            ),
          ],
        ),
      ),
    );
  }
}
