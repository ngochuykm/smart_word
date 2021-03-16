import 'package:flutter/material.dart';
import '../elements/HomePage/SideDrawer.dart';
import '../elements/HomePage/BodyHomepage.dart';
import '../routes/HomePageRoute.dart';
import '../elements/HomePage/ToolsBarWidget.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myHomeWidget(context),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

Widget myHomeWidget(BuildContext context) {
  return SafeArea(
      child: Scaffold(
    drawer: SideDrawer(),
    appBar: AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Padding(padding: EdgeInsets.only(top: 4)),
          Row(
            children: <Widget>[
              Text(
                'Control panel',
                style: TextStyle(fontSize: 20, color: Colors.black87),
              ),
              Padding(padding: EdgeInsets.only(left: 15)),
              Text(
                '(Admin3i)',
                style: TextStyle(fontSize: 12, color: Colors.blueAccent),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '( In business: 0/59,',
                style: TextStyle(fontSize: 12, color: Colors.black87),
              ),
              Padding(padding: EdgeInsets.only(left: 15)),
              Text(
                'Online: 10/59 )',
                style: TextStyle(fontSize: 12, color: Colors.greenAccent),
              )
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    bottomNavigationBar: ToolsBarWidget(index: 1),
    body: SingleChildScrollView(
      child: BodyHomePage(),
    ),
  ));
}
