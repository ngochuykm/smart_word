import 'package:flutter/material.dart';
// import 'package:mvc_pattern/mvc_pattern.dart';

// import '../controllers/splash_screen_controller.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new ExactAssetImage('assets/img/background2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
          ),
          alignment: Alignment(-0.5, -0.5),
      ),
    ));
  }
}
