// https://app.quicktype.io

import 'dart:convert';

Car carFromJson(String str) => Car.fromJson(json.decode(str));

String carToJson(Car data) => json.encode(data.toJson());

class Car {
  Car({
    required this.carName,
    required this.country,
    required this.model,
  });

  final String carName;
  final String country;
  final List<Model> model;

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        carName: json["car_name"],
        country: json["country"],
        model: List<Model>.from(json["model"].map((x) => Model.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "car_name": carName,
        "country": country,
        "model": List<dynamic>.from(model.map((x) => x.toJson())),
      };
}

class Model {
  Model({
    required this.modelAdi,
    required this.fiyat,
    required this.benzinli,
  });

  final String modelAdi;
  final String fiyat;
  final bool benzinli;

  factory Model.fromJson(Map<String, dynamic> json) => Model(
        modelAdi: json["model_adi"],
        fiyat: json["fiyat"],
        benzinli: json["benzinli"] ?? false,
      );

  Map<String, dynamic> toJson() => {
        "model_adi": modelAdi,
        "fiyat": fiyat,
        "benzinli": benzinli,
      };
}
