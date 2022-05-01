
import 'package:fashion_app/screens/clothes/clothes_screen.dart';
import 'package:fashion_app/screens/home/home_screen.dart';
import 'package:fashion_app/screens/search/search_screen.dart';
import 'package:flutter/widgets.dart';

import 'screens/profile/profile_screen.dart';


final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    
        '/home': (_) => HomeScreen(),
        '/clothes': (_) => ClothesScreen(),
        '/search': (_) => SearchScreen(),
        '/profile': (_) => ProfileScreen(),
       

      };