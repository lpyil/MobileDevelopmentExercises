import 'package:flutter/material.dart';

class ListViewLayoutProblems extends StatelessWidget {
  const ListViewLayoutProblems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("list view layout problems"),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 8, color: Colors.red),
        ),
        child: SizedBox(
          height: 200,
          child: rowMethodWithLayoutFix(), //columnMethodWithLayoutFix()
        ),
      ),
    );
  }

  Row rowMethodWithLayoutFix() {
    return Row(
      children: [
        const Text("Start !"),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            children: [
              Container(
                height: 200,
                width: 300,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.purple.shade200,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column columnMethodWithLayoutFix() {
    return Column(
      children: [
        const Text("start"),
        Expanded(
          child: ListView(
            children: [
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                color: Colors.purple.shade200,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                color: Colors.purple.shade200,
              ),
            ],
          ),
        ),
        const Text("finish"),
      ],
    );
  }
}
