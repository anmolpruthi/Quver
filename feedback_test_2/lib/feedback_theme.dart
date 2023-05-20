import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.brown,
      accentColor: Colors.brown,
      scaffoldBackgroundColor: Colors.brown,
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        bodyText1: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );
  }

  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.lightBlueAccent[100],
      accentColor: Colors.lightBlueAccent[100],
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
        bodyText1: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );
  }
}