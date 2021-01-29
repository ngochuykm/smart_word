import 'package:flutter/material.dart';
// import 'src/models/route_argument.dart';
import 'src/pages/SplashScreen.dart';
import 'src/pages/LoginScreen.dart';
import 'src/pages/HomeScreen.dart';
import 'src/pages/print.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case '/Splash':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => MyHomePage());
      case '/print':
        return MaterialPageRoute(builder: (_) => Print());
      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}
