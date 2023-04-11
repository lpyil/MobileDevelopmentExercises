import 'package:app17_pokedex/constants/constants.dart';
import 'package:app17_pokedex/constants/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokeballImageUrl = "assets/pokeball.png";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: UiHelper.getAppTitleWidgetHeight(),
      color: Colors.teal,
      child: Stack(
        children: [
          Padding(
            padding: UiHelper.getDefaultPadding(),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Constants.title,
                  style: Constants.getTitleTextStyle(),
                )),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              pokeballImageUrl,
              width: ScreenUtil().orientation == Orientation.portrait
                  ? 0.15.sh
                  : 0.15.sw,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
