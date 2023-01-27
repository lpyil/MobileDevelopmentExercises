import 'package:flutter/material.dart';

class CardandListtile extends StatelessWidget {
  const CardandListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card and List bar"),
      ),
      body: Center(
        // not performance 
        child: ListView(
          reverse: true ,
          children: [
            Column(
              children: [
                onlyListElement(),
                onlyListElement(),
                onlyListElement(),
                onlyListElement(),
                onlyListElement(),
                onlyListElement(),
                onlyListElement(),
                onlyListElement(),
                onlyListElement(),
              ],
            ),
            const Text("lp"),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.add,
              ),
            ),
          ],
        ),
      ),
    );
  }

// inside center
  SingleChildScrollView singleChildUse() {
    return SingleChildScrollView(
      child: Column(
        children: [
          onlyListElement(),
          onlyListElement(),
          onlyListElement(),
          onlyListElement(),
          onlyListElement(),
          onlyListElement(),
          onlyListElement(),
          onlyListElement(),
          onlyListElement(),
        ],
      ),
    );
  }
// inside center

  Column onlyListElement() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade200,
          shadowColor: Colors.red,
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.add),
            ),
            title: Text("title"),
            subtitle: Text("subtitle"),
            trailing: Icon(Icons.face),
          ),
        ),
        const Divider(
          color: Colors.purple,
          thickness: 2,
          height: 10,
          endIndent: 15,
          indent: 15,
        ),
      ],
    );
  }
}
