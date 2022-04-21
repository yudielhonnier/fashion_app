
import 'package:fashion_app/routes.dart';
import 'package:fashion_app/screens/clothe/clothe_screen.dart';
import 'package:fashion_app/screens/home/home_screen.dart';
import 'package:fashion_app/screens/search/search_screen.dart';
import 'package:fashion_app/themes/theme_constants.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var size=MediaQuery.of(context).size;

    return MaterialApp(
      title: 'Material App',
      theme: ligthTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home:  ClotheScreen(),
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}

