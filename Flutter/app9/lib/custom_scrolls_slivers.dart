import 'package:flutter/material.dart';
import 'dart:math' as math;

class CollapsableToolBar extends StatelessWidget {
  const CollapsableToolBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.green.shade300,
          expandedHeight: 300,
          floating: true,
          snap: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text("sliver app bar"),
            centerTitle: true,
            background: Image.network(
              "https://static.wikia.nocookie.net/darkestdungeon_gamepedia/images/e/e0/Jester.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(5),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              _constantListElements(),
            ),
          ),
        ),

        SliverGrid(
          delegate: SliverChildListDelegate(
            _constantListElements(),
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              _dynamicElementCreateFonc,
              childCount: 6,
            ),
          ),
        ),

        SliverGrid(
          delegate: SliverChildBuilderDelegate(_dynamicElementCreateFonc,
              childCount: 6),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
        ),

        SliverGrid.count(
          crossAxisCount: 4,
          children: _constantListElements(),
        ),
       
       
       
        // better performance above insde padding in sliverchildbuilder
        SliverFixedExtentList(
          delegate: SliverChildListDelegate(
            _constantListElements(),
          ),
          itemExtent: 150, // height
        ),

        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(
            _dynamicElementCreateFonc,
            childCount: 6,
          ),
          itemExtent: 200,
        ),
      ],
    );
  }

  Widget _dynamicElementCreateFonc(BuildContext context, int index) {
    return Container(
      height: 100,
      color: _randomColor(),
      alignment: Alignment.center,
      child: Text("dynamic list : ${index + 1}"),
    );
  }

  Color _randomColor() {
    return Color.fromARGB(
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255));
  }

  List<Widget> _constantListElements() {
    return [
      Container(
        height: 100,
        color: _randomColor(),
        alignment: Alignment.center,
        child: const Text("const list 1"),
      ),
      Container(
        height: 100,
        color: _randomColor(),
        alignment: Alignment.center,
        child: const Text("const list 2"),
      ),
      Container(
        height: 100,
        color: _randomColor(),
        alignment: Alignment.center,
        child: const Text("const list 3"),
      ),
      Container(
        height: 100,
        color: _randomColor(),
        alignment: Alignment.center,
        child: const Text("const list 4"),
      ),
      Container(
        height: 100,
        color: _randomColor(),
        alignment: Alignment.center,
        child: const Text("const list 5"),
      ),
      Container(
        height: 100,
        color: _randomColor(),
        alignment: Alignment.center,
        child: const Text("const list 6"),
      ),
    ];
  }
}
