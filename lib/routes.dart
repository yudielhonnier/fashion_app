import 'package:crypto_app/screens/home/home_screen.dart';
import 'package:crypto_app/screens/trading/trading_screen.dart';
import 'package:crypto_app/screens/wallet/wallet_screen.dart';
import 'package:flutter/widgets.dart';


final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
        '/chart':(_) => TradingScreen(),
        '/home': (_) => HomeScreen(),
        '/wallet': (_) => WalletScreen(),

      };