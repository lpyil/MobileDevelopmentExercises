import 'package:app11_first_real/model/burc.dart';
import 'package:app11_first_real/model/burc_detay.dart';
import 'package:app11_first_real/model/burc_listesi.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => BurcListesi(),
        );
      case "/burcDetay":
        final Burc  chosen = settings.arguments as Burc;
        return MaterialPageRoute(
          builder: (context) => BurcDetay(chosenBurc: chosen),
        );
      default:
        return null;
    }
  }
}
