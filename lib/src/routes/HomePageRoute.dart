import 'package:flutter/material.dart';
// import 'src/models/route_argument.dart';
import '../pages/HomePage/WhatToDoScreen.dart';
import '../pages/ScrollScreen.dart';
import '../pages/SplashScreen.dart';
import '../pages/VideoTrimmerScreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case '/scrollView':
        return MaterialPageRoute(builder: (context) => ScrollScreen());
      case '/what-to-do':
        return MaterialPageRoute(builder: (context) => WhatToDoScreen());
      case '/video_trimmer':
        return MaterialPageRoute(builder: (context) => VideoTrimmerScreen());
      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}
