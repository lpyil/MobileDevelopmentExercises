import 'dart:convert';

import 'package:flutter/material.dart';

import 'model/cars_model.dart';

class LocalJson extends StatefulWidget {
  const LocalJson({super.key});

  @override
  State<LocalJson> createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  String _title = "Local json someting ";

  late final Future<List<Car>> _fillList;

  @override
  void initState() {
    super.initState();

    _fillList = carsJsonRead();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _title = "button clicked";
        });
      }),
      body: FutureBuilder<List<Car>>(
        //  initialData: [Car(carName: "asd", country: "asdavf", model: [Model(modelAdi: "alp", fiyat: "sadfsd", benzinli: false)])],
        future: _fillList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Car> carList = snapshot.data!;

            return ListView.builder(
                itemCount: carList.length,
                itemBuilder: (BuildContext context, int index) {
                  Car currentCar = carList[index];
                  return ListTile(
                    title: Text(currentCar.carName),
                    subtitle: Text(currentCar.country),
                    leading: CircleAvatar(
                      child: Text(currentCar.model[0].fiyat.toString()),
                    ),
                  );
                });
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future<List<Car>> carsJsonRead() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      String readedString = await DefaultAssetBundle.of(context)
          .loadString("assets/data/cars.json");
      var jsonObjekt = jsonDecode(readedString);

      /*List carList = jsonObjekt;
    debugPrint(readedString);

    debugPrint(carList[1]["model"][0]["fiyat"].toString());
  */
      List<Car> allCars =
          (jsonObjekt as List).map((carMap) => Car.fromJson(carMap)).toList();

      return allCars;
    } catch (e) {
      debugPrint(e.toString());
      return Future.error(e);
    }
  }
}
