import 'package:flutter/material.dart';
import '../../elements/HomePage/ToolsBarWidget.dart';
import '../../elements/HomePage/WidgetsBody/WhatTodo.dart';

class WhatToDoScreen extends StatefulWidget {
  final String title;
  final int number;
  @override
  _WhatToDoScreen createState() => new _WhatToDoScreen();
  WhatToDoScreen({Key key, this.title = "What to do", this.number = 11})
      : super(key: key);
}

class _WhatToDoScreen extends State<WhatToDoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //Center Row contents horizontally,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.title,
              style: TextStyle(fontSize: 20, color: Colors.black87),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5)),
            Text(
              '( Tổng số việc ' + widget.number.toString() + " )",
              style: TextStyle(fontSize: 12, color: Colors.blueAccent),
            )
          ],
        ),
      ),
      bottomNavigationBar: ToolsBarWidget(
        index: 2,
      ),
      body: WhatTodoWidget(),
    );
  }
}
