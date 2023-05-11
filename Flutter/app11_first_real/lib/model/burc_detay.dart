import 'burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc chosenBurc;
  const BurcDetay({required this.chosenBurc, super.key});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}
class _BurcDetayState extends State<BurcDetay> {
  Color appBarColor = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState(); // faster bc after first state work
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => {
        findAppBarColor(),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            floating: true,
            pinned: true,
            backgroundColor: appBarColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.chosenBurc.burcName + " Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset(
                "images/${widget.chosenBurc.burcBigResim()}",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.chosenBurc.burcDetay,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void findAppBarColor() async {
    _generator = await PaletteGenerator.fromImageProvider(
      AssetImage("images/${widget.chosenBurc.burcBigResim()}"),
    );

    appBarColor = _generator.dominantColor!.color;
    setState(() {});
  }
}
