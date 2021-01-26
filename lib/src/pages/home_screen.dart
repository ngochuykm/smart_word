import 'package:flutter/material.dart';
// import 'package:mvc_pattern/mvc_pattern.dart';

// import '../controllers/splash_screen_controller.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new ExactAssetImage('assets/img/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: null,
      ),
    ));
  }
}
