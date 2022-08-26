

import 'package:flutter/material.dart';

class MyThems {
  static ThemeData lightTheme() => ThemeData(
    primarySwatch: Colors.deepPurple,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
      ),
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );

  static ThemeData darkTheme() => ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.yellow,
  );


}