import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  // nesne üretilmez çünkü gizli
  Constants._();

  static const String title = "Pokedex";
  static TextStyle getTitleTextStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: _calculateFontSize(48),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: _calculateFontSize(40),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getPokemonTypeChipTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(30),
    );
  }

  static TextStyle getPokemonLabelTextStyle() {
    return TextStyle(
      fontSize: _calculateFontSize(48),
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
  }


  static TextStyle getPokemonInfoTextStyle() {
    return TextStyle(
      fontSize: _calculateFontSize(36),
      color: Colors.black,
    );
  }

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 0.8).sp;
    }
  }
}
