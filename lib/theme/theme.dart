import 'package:clapse/theme/mycolors.dart';

import 'package:clapse/theme/mytexts.dart';

import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      fontFamily: 'Kook',
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      textTheme: lightTextTheme,
      colorScheme: myLightColorScheme);
  static ThemeData darkTheme = ThemeData(
      fontFamily: 'Kook',
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      textTheme: aliTextTheme2,
      colorScheme: myDarkColorScheme);
}
