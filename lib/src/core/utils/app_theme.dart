import 'package:flutter/material.dart';

final ThemeData myTheme = ThemeData(
  primaryColor: Colors.blue,
  colorScheme: ColorScheme.fromSwatch(accentColor: Colors.orange),
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
    bodyText1: TextStyle(fontSize: 14.0, color: Colors.grey),
  ),
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
    textTheme: ButtonTextTheme.primary,
  ),
);
