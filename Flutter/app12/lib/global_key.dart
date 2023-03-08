import 'package:flutter/material.dart';

class GlobalKeyUse extends StatelessWidget {
  GlobalKeyUse({Key? key}) : super(key: key);
  final countWidgetKey = GlobalKey<_CountWidgetState>();
  @override
  Widget build(BuildContext context) {
    debugPrint("1");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Global Key"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Buton clicked"),
            CountWidget(
              key: countWidgetKey,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countWidgetKey.currentState!.incrs();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CountWidget extends StatefulWidget {
  const CountWidget({super.key});

  @override
  State<CountWidget> createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  int _count = 0;

  void incrs() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("2");

    return Text(_count.toString());
  }
}
