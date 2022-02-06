import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  primarySwatch: Colors.green,
  brightness: Brightness.light,
  accentColor: Colors.cyan,
  appBarTheme: AppBarTheme(
    color: Colors.green,
  ),
);

final ThemeData appThemeDataDark = ThemeData(
  primarySwatch: primaryBlack,
  brightness: Brightness.dark,
  accentColor: Colors.cyan[600],
  appBarTheme: AppBarTheme(
    color: Colors.black,
  )

);

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;