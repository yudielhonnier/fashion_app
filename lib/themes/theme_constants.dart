import 'package:flutter/material.dart';


ThemeData ligthTheme=ThemeData(
          colorScheme: ColorScheme(
              primary: Colors.yellow,
              primaryVariant: Colors.yellowAccent,
              secondary: Colors.green,
              secondaryVariant:  Colors.greenAccent,
              surface: Colors.black,
              background: Colors.purple,
              error: Colors.red,
              onPrimary: Colors.black,
              onSecondary: Colors.black,
              onSurface: Colors.black,
              onBackground: Colors.black,
              onError: Colors.black,
              brightness: Brightness.light));


ThemeData darkTheme=ThemeData(
                      

          colorScheme: ColorScheme(
              primary: Color.fromARGB(255,6,13,24),
              // primary: Color.fromARGB(255,16,23,35),
              // primary: Colors.blue,
              primaryVariant: Color.fromARGB(255,17,24,36),
              secondary: Color.fromARGB(255,32,40,53),
              secondaryVariant:   Color.fromARGB(255,17,23,35),
              surface: Color.fromARGB(255,6,13,24),
              background:  Colors.yellow,
              error: Colors.red,
              onPrimary:Color.fromARGB(255,199,201,203),
              onSecondary: Color.fromARGB(255,199,201,203),
              onSurface: Color.fromARGB(255,199,201,203),
              onBackground: Color.fromARGB(255,199,201,203),
              onError: Colors.white,
              brightness: Brightness.dark,));

