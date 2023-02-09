import 'package:app11_first_real/model/burc_item.dart';
import 'package:flutter/material.dart';

import '../data/strings.dart';
import 'burc.dart';

// ignore: must_be_immutable
class BurcListesi extends StatelessWidget {
  late List<Burc> allBurclar;

  BurcListesi({super.key}) {
    allBurclar = createData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Burç listesi"),
      ),
      backgroundColor: Colors.red.shade200,
      body: Center(
        child: ListView.builder(
          itemCount: allBurclar.length,
          itemBuilder: (BuildContext context, int index) {
            return BurcItem(currentBurc: allBurclar[index]);
          },
        ),
      ),
    );
  }

  List<Burc> createData() {
    List<Burc> temp = [];
    for (var i = 0; i < 12; i++) {
      String burcKucukResim =
          "${Strings.burcName[i].toLowerCase()}${i + 1}.png";
      String burcBuyukResim =
          "${Strings.burcName[i].toLowerCase()}_buyuk${i + 1}.png";
      Burc addBurc = Burc(
        Strings.burcName[i],
        Strings.burcTarih[i],
        Strings.burcDetay[i],
        burcKucukResim,
        burcBuyukResim,
      );
      temp.add(addBurc);
    }
    return temp;
  }
}
