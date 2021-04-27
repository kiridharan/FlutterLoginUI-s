import 'package:flutter/material.dart';

const kBlackHalf = const Color(0xFF212121);
const kBlackLight = Colors.white;
const kBlack = const Color(0xFF000000);
const kYellow = const Color(0xFFffd600);
const kYellowLight = const Color(0xFFffff52);
const kYellowDark = const Color(0xFFc7a500);
const kWhite = Colors.white;

ThemeData buildDarkTheme() {
  final ThemeData base = ThemeData();
  return base.copyWith(
    primaryColor: kBlack,
    accentColor: kYellow,
    scaffoldBackgroundColor: kBlackHalf,
    primaryTextTheme: buildTextTheme(base.primaryTextTheme, kBlack),
    primaryIconTheme: base.iconTheme.copyWith(color: kWhite),
    buttonColor: kYellow,
    textTheme: buildTextTheme(base.textTheme, kBlack),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: kWhite),
      ),
      labelStyle: TextStyle(color: kYellow, fontSize: 24.0),
    ),
  );
}

TextTheme buildTextTheme(TextTheme base, Color color) {
  return base.copyWith(
    bodyText2: base.headline5.copyWith(color: color, fontSize: 16.0),
    caption: base.headline5.copyWith(color: color),
    headline4: base.headline5.copyWith(color: color),
    button: base.headline5.copyWith(color: color),
    headline1: base.headline5.copyWith(color: color),
    headline6: base.headline1.copyWith(color: color),
  );
}
