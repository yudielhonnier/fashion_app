import 'package:flutter/material.dart';

ThemeData ligthTheme = ThemeData(
    colorScheme: ColorScheme(
        primary: Color.fromARGB(255, 246, 138, 186),
        primaryContainer: Color.fromARGB(255, 220, 75, 140),
        secondary: Color.fromARGB(255, 244, 201, 223),
        secondaryContainer: Colors.greenAccent,
        surface: Colors.white,
        background: Color.fromARGB(255, 246, 138, 186),
        error: Colors.red,
        onPrimary: Colors.black,
        onSecondary: Colors.black,
        onSurface: Colors.black,
        onBackground: Colors.black,
        onError: Colors.black,
        brightness: Brightness.light));

ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme(
  primary: Color.fromARGB(255, 6, 13, 24),
  // primary: Color.fromARGB(255,16,23,35),
  // primary: Colors.blue,
  primaryContainer: Color.fromARGB(255, 17, 24, 36),
  secondary: Color.fromARGB(255, 32, 40, 53),
  secondaryContainer: Color.fromARGB(255, 17, 23, 35),
  surface: Color.fromARGB(255, 6, 13, 24),
  background: Colors.yellow,
  error: Colors.red,
  onPrimary: Color.fromARGB(255, 199, 201, 203),
  onSecondary: Color.fromARGB(255, 199, 201, 203),
  onSurface: Color.fromARGB(255, 199, 201, 203),
  onBackground: Color.fromARGB(255, 199, 201, 203),
  onError: Colors.white,
  brightness: Brightness.dark,
));
