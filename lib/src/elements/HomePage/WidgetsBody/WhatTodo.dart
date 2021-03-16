import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:flutter/material.dart';
import './WhatToDoItem.dart';
import '../../../controllers/WhatToDoControler.dart';

class WhatTodoWidget extends StatefulWidget {
  @override
  _WhatTodoWidget createState() => _WhatTodoWidget();
}

class _WhatTodoWidget extends StateMVC<WhatTodoWidget> {
  WhatToDoController _con;

  _WhatTodoWidget() : super(WhatToDoController()) {
    _con = controller;
  }

  @override
  void initState() {
    _con.getAllCard(1, 10);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(children: [
              WhatTodoItem(whatToDo: _con.whatToDo[0]),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              WhatTodoItem(whatToDo: _con.whatToDo[3]),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              WhatTodoItem(whatToDo: _con.whatToDo[4]),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              WhatTodoItem(whatToDo: _con.whatToDo[5]),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              WhatTodoItem(whatToDo: _con.whatToDo[6]),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              WhatTodoItem(whatToDo: _con.whatToDo[7]),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              WhatTodoItem(whatToDo: _con.whatToDo[8]),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              WhatTodoItem(whatToDo: _con.whatToDo[9]),
              // ListView.builder(
              //   itemCount: 3,
              //   itemBuilder: (BuildContext context, int index) {
              //     return WhatTodoItem(whatToDo: _con.whatToDo[index]);
              //   },
              // )
            ])

            // Positioned(
            //   top: 2.0,
            //   left: 10.0,
            //   child: Icon(Icons.ac_unit),
            // ),
          ],
        ),
      ),
    );
  }
}
