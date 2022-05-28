import 'package:flutter/material.dart';

import '../utils/constants.dart';


class GlobalTheme {

  final globalTheme = ThemeData(
    colorScheme: _customColorScheme,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 12,
        color: black,
      ),

      bodyText2: TextStyle(
        color: black,
        fontSize: 12,
        fontWeight: FontWeight.bold,
        backgroundColor: customBackgroundWhite,
      ),
      caption: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: customMagenta900,
        backgroundColor: customMagenta50,
      ),
      headline1: TextStyle(
        color: blue,
        fontSize: 12,
        fontFamily: 'Allison',
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        color: customMagenta400,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: customMagenta300,
      // This will control the "back" icon
      iconTheme: IconThemeData(color: Colors.white60),
      // This will control action icon buttons that locates on the right
      actionsIconTheme: IconThemeData(color: customSurfaceWhite),
      centerTitle: false,
      elevation: 15,
      titleTextStyle: TextStyle(
        color: customSurfaceWhite,
        fontWeight: FontWeight.bold,
        fontFamily: 'Allison',
        fontSize: 30,
      ),
    ),
  );
}
const ColorScheme _customColorScheme = ColorScheme(
  primary: customMagenta50,
  primaryVariant: customMagenta600,
  secondary: Colors.amber,
  secondaryVariant: customMagenta400,
  surface: Colors.purpleAccent,
  background: customSurfaceWhite,
  error: customMagenta900,
  onPrimary: Colors.red,
  onSecondary: Colors.deepOrange,
  onSurface: customMagenta300,
  onBackground: customMagenta100,
  onError: Colors.redAccent,
  brightness: Brightness.light,
);
